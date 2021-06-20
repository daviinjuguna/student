import 'dart:io';

import 'package:battery/battery.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';
import 'package:student/core/errors/exeptions.dart';
import 'package:student/core/util/constant.dart';
import 'package:student/features/data/datasourse/local/local_data_source.dart';
import 'package:student/features/data/datasourse/remote/remote_data_sorce.dart';
import 'package:student/features/data/models/assignment_model.dart';
import 'package:student/features/data/models/choice_model.dart';
import 'package:student/features/data/models/course_model.dart';
import 'package:student/features/data/models/pdf_model.dart';
import 'package:student/features/data/models/question_model.dart';
import 'package:student/features/data/models/success_model.dart';
import 'package:student/features/data/models/token_model.dart';
import 'package:student/features/data/models/user_model.dart';
import 'package:student/di/injection.dart';
import 'package:student/features/domain/entities/assignment.dart';
import 'package:student/features/domain/entities/choice.dart';
import 'package:student/features/domain/entities/course.dart';
import 'package:student/features/domain/entities/pdf.dart';
import 'package:student/features/domain/entities/question.dart';
import 'package:student/features/domain/entities/success.dart';
import 'package:student/features/domain/entities/token.dart';
import 'package:student/features/domain/entities/user.dart';
import 'package:student/features/domain/repository/eshule_repository.dart';

@LazySingleton(as: Repository)
class RepositoryImpl implements Repository {
  final LocalDataSource _local;
  final RemoteDataSource _remote;
  final Connectivity _connectivity;

  final Battery _battery;

  RepositoryImpl(
    this._local,
    this._remote,
    this._connectivity,
    this._battery,
  );

  //!Connection CHecker
  @override
  Stream<Either<String, bool>> checkConnection() async* {
    yield* _connectivity.onConnectivityChanged.map((e) {
      if (e == ConnectivityResult.none) {
        return right<String, bool>(false);
      }
      return right<String, bool>(true);
    }).onErrorReturnWith((e, s) {
      print('$e, $s');
      final failure = returnFailure(e);
      return left(failure);
    });
  }

  //!battery checker
  @override
  Stream<Either<String, String>> checkBattery() async* {
    yield* _battery.onBatteryStateChanged.map((e) {
      if (e == BatteryState.full) {
        return right<String, String>(CHARGED);
      } else if (e == BatteryState.charging) {
        return right<String, String>(CHARGING);
      } else {
        return right<String, String>(DISCHARGING);
      }
    }).onErrorReturnWith((e, s) {
      print('$e, $s');
      final failure = returnFailure(e);
      return left(failure);
    });
  }

  //!checkAuth
  @override
  Future<Either<String, bool>> checkAuth() async {
    try {
      return right(await _local.checkAuthenticatedUser());
    } catch (e) {
      print(e.toString());
      final failure = returnFailure(e);
      return left(failure);
    }
  }

  //!clear auth
  @override
  Future<Either<String, void>> clearPrefs() async {
    try {
      return right(await _local.clearPrefs());
    } catch (e) {
      print(e.toString());
      final failure = returnFailure(e);
      return left(failure);
    }
  }

  //!login
  @override
  Future<Either<String, Token>> login(
      {required String email, required String password}) async {
    try {
      // TokenEntity interface;
      final token = await _remote.login(email: email, password: password);
      await _local.cacheToken(model: token);
      return right(token.toEntity());
    } catch (e) {
      print(e.toString());
      final failure = returnFailure(e);
      return left(failure);
    }
  }

  //!Register
  @override
  Future<Either<String, Token>> register({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    try {
      final token = await _remote.register(
          name: name,
          email: email,
          password: password,
          confirmPassword: confirmPassword);
      await _local.cacheToken(model: token);
      return right(token.toEntity());
    } catch (e) {
      print(e.toString());
      final failure = returnFailure(e);
      return left(failure);
    }
  }

  //*refreshToken
  @override
  Future<Either<String, Token>> refreshToken() async {
    try {
      final tokenModel = await _local.getToken();
      if (tokenModel != null) {
        final _response =
            await _remote.refreshToken(refreshToken: tokenModel.refreshToken);
        await _local.cacheToken(model: _response);
        return right(_response.toEntity());
      } else {
        await getIt<LocalDataSource>().clearPrefs();
        throw UnAuthenticatedException();
      }
    } catch (e) {
      print(e.toString());
      final failure = returnFailure(e);
      return left(failure);
    }
  }

  //!get user
  @override
  Future<Either<String, User>> getUser() async {
    try {
      final tokenModel = await _local.getToken();
      if (tokenModel != null) {
        final user = await _remote.getUser(accessToken: tokenModel.accessToken);
        return right(user.toEntity());
      } else {
        await getIt<LocalDataSource>().clearPrefs();
        throw UnAuthenticatedException();
      }
    } catch (e) {
      print(e.toString());
      final failure = returnFailure(e);
      return left(failure);
    }
  }

  //!logout..basic auth
  @override
  Future<Either<String, void>> logout() async {
    try {
      final tokenModel = await _local.getToken();
      if (tokenModel != null) {
        await _remote.logout(accessToken: tokenModel.accessToken);
        return right(await _local.clearPrefs());
      } else {
        await getIt<LocalDataSource>().clearPrefs();
        throw UnAuthenticatedException();
      }
    } catch (e) {
      print(e.toString());
      final failure = returnFailure(e);
      return left(failure);
    }
  }

  //fetch courses
  @override
  Future<Either<String, KtList<Course>>> getCourses() async {
    try {
      final tokenModel = await _local.getToken();
      if (tokenModel != null) {
        final model =
            await _remote.getCourses(accessToken: tokenModel.accessToken);
        final entities =
            model.map((e) => e.toEntity()).asList().toImmutableList();
        return right(entities);
      } else {
        await getIt<LocalDataSource>().clearPrefs();
        throw UnAuthenticatedException();
      }
    } catch (e) {
      print(e.toString());
      final failure = returnFailure(e);
      return left(failure);
    }
  }

  //!STUDENT ONLY
  //*apply course
  @override
  Future<Either<String, Success>> applyCourse({required int courseId}) async {
    try {
      final tokenModel = await _local.getToken();
      if (tokenModel != null) {
        final success = await _remote.applyCourse(
          courseId: courseId,
          accessToken: tokenModel.accessToken,
        );
        return right(success.toEntity());
      } else {
        throw UnAuthenticatedException();
      }
    } catch (e) {
      print(e.toString());
      final failure = returnFailure(e);
      return left(failure);
    }
  }

  //*unapply course
  @override
  Future<Either<String, Success>> unapplyCourse({required int courseId}) async {
    try {
      final tokenModel = await _local.getToken();
      if (tokenModel != null) {
        final success = await _remote.unapplyCourse(
          courseId: courseId,
          accessToken: tokenModel.accessToken,
        );
        return right(success.toEntity());
      } else {
        throw UnAuthenticatedException();
      }
    } catch (e) {
      print(e.toString());
      final failure = returnFailure(e);
      return left(failure);
    }
  }

  @override
  Future<Either<String, KtList<Assignment>>> getAssignment(
      {required int courseId}) async {
    try {
      final tokenModel = await _local.getToken();
      if (tokenModel != null) {
        final model = await _remote.getAssignment(
          courseId: courseId,
          accessToken: tokenModel.accessToken,
        );
        final entities =
            model.map((e) => e.toEntity()).asList().toImmutableList();
        return right(entities);
      } else {
        throw UnAuthenticatedException();
      }
    } catch (e) {
      print(e.toString());
      final failure = returnFailure(e);
      return left(failure);
    }
  }

  @override
  Future<Either<String, KtList<Pdf>>> getPdf({required int courseId}) async {
    try {
      final tokenModel = await _local.getToken();
      if (tokenModel != null) {
        final model = await _remote.getPdf(
          courseId: courseId,
          accessToken: tokenModel.accessToken,
        );
        final entities =
            model.map((e) => e.toEntity()).asList().toImmutableList();
        return right(entities);
      } else {
        throw UnAuthenticatedException();
      }
    } catch (e) {
      print(e.toString());
      final failure = returnFailure(e);
      return left(failure);
    }
  }

  @override
  Future<Either<String, KtList<Question>>> getQuestion(
      {required int assignmentId}) async {
    try {
      final tokenModel = await _local.getToken();
      if (tokenModel != null) {
        final model = await _remote.getQuestions(
          assignmentId: assignmentId,
          accessToken: tokenModel.accessToken,
        );
        final entities =
            model.map((e) => e.toEntity()).asList().toImmutableList();
        return right(entities);
      } else {
        throw UnAuthenticatedException();
      }
    } catch (e) {
      print(e.toString());
      final failure = returnFailure(e);
      return left(failure);
    }
  }

  @override
  Future<Either<String, KtList<Choice>>> getChoice(
      {required int questionId}) async {
    try {
      final tokenModel = await _local.getToken();
      if (tokenModel != null) {
        final model = await _remote.getChoices(
          questionId: questionId,
          accessToken: tokenModel.accessToken,
        );
        final entities =
            model.map((e) => e.toEntity()).asList().toImmutableList();
        return right(entities);
      } else {
        throw UnAuthenticatedException();
      }
    } catch (e) {
      print(e.toString());
      final failure = returnFailure(e);
      return left(failure);
    }
  }

  @override
  Future<Either<String, Success>> attemptAssignment(
      {required int assignmentId}) async {
    try {
      final tokenModel = await _local.getToken();
      if (tokenModel != null) {
        final model = await _remote.attemptAssignment(
          assignmentId: assignmentId,
          accessToken: tokenModel.accessToken,
        );
        final entities = model.toEntity();
        return right(entities);
      } else {
        throw UnAuthenticatedException();
      }
    } catch (e) {
      print(e.toString());
      final failure = returnFailure(e);
      return left(failure);
    }
  }

  @override
  Future<Either<String, Success>> attemptQuestion(
      {required int questionId, required int answerId}) async {
    try {
      final tokenModel = await _local.getToken();
      if (tokenModel != null) {
        final model = await _remote.attemptQuestion(
          questionId: questionId,
          accessToken: tokenModel.accessToken,
          answerId: answerId,
        );
        final entities = model.toEntity();
        return right(entities);
      } else {
        throw UnAuthenticatedException();
      }
    } catch (e) {
      print(e.toString());
      final failure = returnFailure(e);
      return left(failure);
    }
  }

  @override
  Future<Either<String, Success>> submitAssignment(
      {required int attemptedId}) async {
    try {
      final tokenModel = await _local.getToken();
      if (tokenModel != null) {
        final model = await _remote.submitAssignment(
          accessToken: tokenModel.accessToken,
          attemptedId: attemptedId,
        );
        final entities = model.toEntity();
        return right(entities);
      } else {
        throw UnAuthenticatedException();
      }
    } catch (e) {
      print(e.toString());
      final failure = returnFailure(e);
      return left(failure);
    }
  }
}
