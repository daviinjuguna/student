import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';

import 'package:kt_dart/kt.dart';
import 'package:student/domain/entities/assignment.dart';
import 'package:student/domain/entities/choice.dart';
import 'package:student/domain/entities/course.dart';
import 'package:student/domain/entities/pdf.dart';
import 'package:student/domain/entities/question.dart';
import 'package:student/domain/entities/success.dart';
import 'package:student/domain/entities/token.dart';
import 'package:student/domain/entities/user.dart';

abstract class Repository {
  Future<Either<String, Token>> login({
    required String email,
    required String password,
  });
  Future<Either<String, Token>> register({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  });
  Future<Either<String, Token>> refreshToken();
  Future<Either<String, User>> getUser();
  Future<Either<String, void>> logout();
  Future<Either<String, void>> clearPrefs();

  //connection Checker
  Stream<Either<String, bool>> checkConnection();

  //authChecker
  Future<Either<String, bool>> checkAuth();

  //battery checker
  Stream<Either<String, String>> checkBattery();

  //Fetch Course
  Future<Either<String, KtList<Course>>> getCourses();

  Future<Either<String, KtList<Pdf>>> getPdf({required int courseId});
  Future<Either<String, KtList<Assignment>>> getAssignment({
    required int courseId,
  });
  Future<Either<String, KtList<Question>>> getQuestion({
    required int assignmentId,
  });
  Future<Either<String, KtList<Choice>>> getChoice({required int questionId});

  //!student
  //student apply course
  Future<Either<String, Success>> applyCourse({required int courseId});
  //student unapply course
  Future<Either<String, Success>> unapplyCourse({required int courseId});
  Future<Either<String, Success>> attemptAssignment({
    required int assignmentId,
  });
  Future<Either<String, Success>> attemptQuestion({
    required int questionId,
    required int answerId,
  });
  Future<Either<String, Success>> submitAssignment({
    required int attemptedId,
  });
}
