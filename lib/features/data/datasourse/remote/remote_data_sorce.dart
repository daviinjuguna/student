import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:student/core/errors/exeptions.dart';
import 'package:student/core/util/handle_call.dart';
import 'package:student/features/data/datasourse/api/student_api.dart';
import 'package:student/features/data/models/assignment_model.dart';
import 'package:student/features/data/models/choice_model.dart';
import 'package:student/features/data/models/course_model.dart';
import 'package:student/features/data/models/pdf_model.dart';
import 'package:student/features/data/models/question_model.dart';
import 'package:student/features/data/models/success_model.dart';
import 'package:student/features/data/models/token_model.dart';
import 'package:student/features/data/models/user_model.dart';

//* calling remote data source interface
abstract class RemoteDataSource {
  Future<TokenModel> login({required String email, required String password});
  Future<TokenModel> register({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  });
  Future<TokenModel> refreshToken({required String refreshToken});
  Future<UserModel> getUser({required String accessToken});
  Future<void> logout({required String accessToken});

  Future<KtList<CourseModel>> getCourses({required String accessToken});

  //*students sources
  Future<SuccessModel> applyCourse({
    required int courseId,
    required String accessToken,
  });

  Future<SuccessModel> unapplyCourse({
    required int courseId,
    required String accessToken,
  });

  Future<KtList<PdfModel>> getPdf({
    required int courseId,
    required String accessToken,
  });
  Future<KtList<AssignmentModel>> getAssignment({
    required int courseId,
    required String accessToken,
  });
  Future<KtList<QuestionModel>> getQuestions({
    required int assignmentId,
    required String accessToken,
  });
  Future<KtList<ChoiceModel>> getChoices({
    required int questionId,
    required String accessToken,
  });

  //attempt assignment
  Future<SuccessModel> attemptAssignment({
    required int assignmentId,
    required String accessToken,
  });

  //attempt question, submit answer
  Future<SuccessModel> attemptQuestion({
    required int questionId,
    required int answerId,
    required String accessToken,
  });

  //submit assignment,grade.ie
  Future<SuccessModel> submitAssignment({
    required int attemptedId,
    required String accessToken,
  });
}

//* injecting the class with its abstract class
@LazySingleton(as: RemoteDataSource)
class RemoteDataSourceImpl implements RemoteDataSource {
  final StudentService _student;
  final HandleNetworkCall _call;

  RemoteDataSourceImpl(this._student, this._call);

  //*using flavors...if the flavor of the app is teacher call teachers api
  //* if the flavor is student call student api
  @override
  Future<TokenModel> login(
      {required String email, required String password}) async {
    try {
      http.Response? response;

      response = await _student.login(email: email, password: password);

      final status = _call.checkStatusCode(response.statusCode);
      if (status) {
        Map<String, dynamic> body = jsonDecode(response.body);
        return TokenModel.fromJson(body['token']);
      } else {
        throw ServerException();
      }
    } catch (e, s) {
      print("$e,$s");
      rethrow;
    }
  }

  @override
  Future<TokenModel> register({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    http.Response? response;
    try {
      response = await _student.register(
        name: name,
        email: email,
        password: password,
        confirmPassword: confirmPassword,
      );

      final status = _call.checkStatusCode(response.statusCode);
      if (status) {
        Map<String, dynamic> body = jsonDecode(response.body);
        return TokenModel.fromJson(body);
      } else {
        throw ServerException();
      }
    } catch (e, s) {
      print("$e,$s");
      rethrow;
    }
  }

  @override
  Future<TokenModel> refreshToken({required String refreshToken}) async {
    http.Response? response;
    try {
      response = await _student.refreshToken(refreshToken: refreshToken);

      final status = _call.checkStatusCode(response.statusCode);
      if (status) {
        Map<String, dynamic> body = jsonDecode(response.body);
        return TokenModel.fromJson(body);
      } else {
        throw ServerException();
      }
    } catch (e, s) {
      print("$e,$s");
      rethrow;
    }
  }

  @override
  Future<UserModel> getUser({required String accessToken}) async {
    http.Response? response;
    try {
      response = await _student.getUser(accessToken: 'Bearer $accessToken');

      final status = _call.checkStatusCode(response.statusCode);
      if (status) {
        Map<String, dynamic> body = jsonDecode(response.body);
        return UserModel.fromJson(body['user']);
      } else {
        throw ServerException();
      }
    } catch (e, s) {
      print("$e,$s");
      rethrow;
    }
  }

  @override
  Future<void> logout({required String accessToken}) async {
    http.Response? response;
    try {
      response = await _student.logout(accessToken: 'Bearer $accessToken');

      final status = _call.checkStatusCode(response.statusCode);
      if (status) {
        return;
      } else {
        throw ServerException();
      }
    } catch (e, s) {
      print("$e,$s");
      rethrow;
    }
  }

  //*studentis also teacher
  @override
  Future<KtList<CourseModel>> getCourses({required String accessToken}) async {
    http.Response? response;
    try {
      response = await _student.getCourses(accessToken: 'Bearer $accessToken');

      final status = _call.checkStatusCode(response.statusCode);
      if (status) {
        List<CourseModel> courses = [];
        Map<String, dynamic> body = jsonDecode(response.body);
        try {
          courses = (body['course']['data'] as List)
              .map((body) => CourseModel.fromJson(body))
              .toList();
        } catch (e) {
          print(e.toString());
          // break;
        }
        return courses.toImmutableList();
      } else {
        throw ServerException();
      }
    } catch (e, s) {
      print("$e,$s");
      rethrow;
    }
  }

  //student apply course
  @override
  Future<SuccessModel> applyCourse(
      {required int courseId, required String accessToken}) async {
    try {
      final response = await _student.applyCourse(
        courseId: courseId,
        accessToken: 'Bearer $accessToken',
      );
      final status = _call.checkStatusCode(response.statusCode);
      if (status) {
        return new SuccessModel(success: true, message: "applied");
      } else {
        throw ServerException();
      }
    } catch (e, s) {
      print("$e,$s");
      rethrow;
    }
  }

  //student unapply for course
  @override
  Future<SuccessModel> unapplyCourse(
      {required int courseId, required String accessToken}) async {
    try {
      final response = await _student.unApplyCourse(
        courseId: courseId,
        accessToken: 'Bearer $accessToken',
      );
      final status = _call.checkStatusCode(response.statusCode);
      if (status) {
        return new SuccessModel(success: true, message: "unapplied");
      } else {
        throw ServerException();
      }
    } catch (e, s) {
      print("$e,$s");
      rethrow;
    }
  }

  @override
  Future<KtList<PdfModel>> getPdf({
    required int courseId,
    required String accessToken,
  }) async {
    http.Response? response;
    try {
      response = await _student.getPdf(
        accessToken: 'Bearer $accessToken',
        courseId: courseId,
      );

      final status = _call.checkStatusCode(response.statusCode);
      if (status) {
        List<PdfModel> pdf = [];
        Map<String, dynamic> body = jsonDecode(response.body);
        try {
          pdf = (body['pdf'] as List)
              .map((body) => PdfModel.fromJson(body))
              .toList();
        } catch (e) {
          print(e.toString());
          // break;
        }
        return pdf.toImmutableList();
      } else {
        throw ServerException();
      }
    } catch (e, s) {
      print("$e,$s");
      rethrow;
    }
  }

  @override
  Future<KtList<AssignmentModel>> getAssignment(
      {required int courseId, required String accessToken}) async {
    http.Response? response;
    try {
      response = await _student.getAssignment(
        accessToken: 'Bearer $accessToken',
        courseId: courseId,
      );

      final status = _call.checkStatusCode(response.statusCode);
      if (status) {
        List<AssignmentModel> ass = [];
        Map<String, dynamic> body = jsonDecode(response.body);
        try {
          ass = (body['assignment'] as List)
              .map((body) => AssignmentModel.fromJson(body))
              .toList();
        } catch (e) {
          print(e.toString());
          // break;
        }
        return ass.toImmutableList();
      } else {
        throw ServerException();
      }
    } catch (e, s) {
      print("$e,$s");
      rethrow;
    }
  }

  @override
  Future<KtList<QuestionModel>> getQuestions(
      {required int assignmentId, required String accessToken}) async {
    http.Response? response;
    try {
      response = await _student.getQuestions(
        accessToken: 'Bearer $accessToken',
        assignmentId: assignmentId,
      );

      final status = _call.checkStatusCode(response.statusCode);
      if (status) {
        List<QuestionModel> quest = [];
        Map<String, dynamic> body = jsonDecode(response.body);
        try {
          quest = (body['question'] as List)
              .map((body) => QuestionModel.fromJson(body))
              .toList();
        } catch (e) {
          print(e.toString());
          // break;
        }
        return quest.toImmutableList();
      } else {
        throw ServerException();
      }
    } catch (e, s) {
      print("$e,$s");
      rethrow;
    }
  }

  @override
  Future<KtList<ChoiceModel>> getChoices(
      {required int questionId, required String accessToken}) async {
    http.Response? response;
    try {
      response = await _student.getChoices(
        accessToken: 'Bearer $accessToken',
        questionId: questionId,
      );

      final status = _call.checkStatusCode(response.statusCode);
      if (status) {
        List<ChoiceModel> choice = [];
        Map<String, dynamic> body = jsonDecode(response.body);
        try {
          choice = (body['choice'] as List)
              .map((body) => ChoiceModel.fromJson(body))
              .toList();
        } catch (e) {
          print(e.toString());
          // break;
        }
        return choice.toImmutableList();
      } else {
        throw ServerException();
      }
    } catch (e, s) {
      print("$e,$s");
      rethrow;
    }
  }

  @override
  Future<SuccessModel> attemptAssignment(
      {required int assignmentId, required String accessToken}) async {
    try {
      final response = await _student.attemptAssignment(
        assignmentId: assignmentId,
        accessToken: 'Bearer $accessToken',
      );
      final status = _call.checkStatusCode(response.statusCode);
      if (status) {
        return SuccessModel(success: true, message: "success");
      } else {
        throw ServerException();
      }
    } catch (e, s) {
      print("$e,$s");
      rethrow;
    }
  }

  @override
  Future<SuccessModel> attemptQuestion(
      {required int questionId,
      required int answerId,
      required String accessToken}) async {
    try {
      final response = await _student.attemptQuestion(
        questionId: questionId,
        answerId: answerId,
        accessToken: 'Bearer $accessToken',
      );
      final status = _call.checkStatusCode(response.statusCode);
      if (status) {
        return SuccessModel(success: true, message: "success");
      } else {
        throw ServerException();
      }
    } catch (e, s) {
      print("$e,$s");
      rethrow;
    }
  }

  @override
  Future<SuccessModel> submitAssignment(
      {required int attemptedId, required String accessToken}) async {
    try {
      final response = await _student.submitAssignment(
        attemptedId: attemptedId,
        accessToken: 'Bearer $accessToken',
      );
      final status = _call.checkStatusCode(response.statusCode);
      if (status) {
        return SuccessModel(success: true, message: "success");
      } else {
        throw ServerException();
      }
    } catch (e, s) {
      print("$e,$s");
      rethrow;
    }
  }
}
