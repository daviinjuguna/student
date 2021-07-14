import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:http_interceptor/http_interceptor.dart';
import 'package:student/core/util/constant.dart';
import 'package:student/core/util/headers_interceptors.dart';
import 'package:student/core/util/logging_interceptor.dart';

abstract class StudentService {
  Future<http.Response> login({
    required String email,
    required String password,
  });

  Future<http.Response> register({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  });

  Future<http.Response> refreshToken({required String refreshToken});

  Future<http.Response> getUser({required String accessToken});

  Future<http.Response> logout({required String accessToken});

  //*get courses  //
  Future<http.Response> getCourses({required String accessToken});

  //*apply course
  Future<http.Response> applyCourse({
    required int courseId,
    required String accessToken,
  });

  //*unapply course
  Future<http.Response> unApplyCourse({
    required int courseId,
    required String accessToken,
  });

  //pdf
  Future<http.Response> getPdf({
    required int courseId,
    required String accessToken,
  });

  //assignment
  Future<http.Response> getAssignment({
    required int courseId,
    required String accessToken,
  });

  //question
  Future<http.Response> getQuestions({
    required int assignmentId,
    required String accessToken,
  });

  //choices
  Future<http.Response> getChoices({
    required int questionId,
    required String accessToken,
  });

  //attempt assignment
  Future<http.Response> attemptAssignment({
    required int assignmentId,
    required String accessToken,
  });

  //attempt question, submit answer
  Future<http.Response> attemptQuestion({
    required int questionId,
    required int answerId,
    required String accessToken,
  });

  //submit assignment,grade.ie
  Future<http.Response> submitAssignment({
    required int attemptedId,
    required String accessToken,
  });
}

@LazySingleton(as: StudentService)
class StudentServiceImpl implements StudentService {
  http.Client client = InterceptedClient.build(
    interceptors: [
      LoggingInterceptor(),
      HeadersInterceptors(),
    ],
    requestTimeout: Duration(seconds: 60),
  );
  @override
  Future<http.Response> login({
    required String email,
    required String password,
  }) {
    final String url = "/api/login";
    return client.post(
      Uri.https(BASE_URL, url),
      body: jsonEncode({
        "email": email,
        "password": password,
      }),
    );
  }

  @override
  Future<http.Response> register({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  }) {
    final String url = "/api/register";
    return client.post(
      Uri.https(BASE_URL, url),
      body: jsonEncode({
        "name": name,
        "email": email,
        "password": password,
        "password_confirmation": confirmPassword
      }),
    );
  }

  @override
  Future<http.Response> getUser({required String accessToken}) {
    final String url = "/api/user";
    return client.get(
      Uri.https(BASE_URL, url),
      headers: {'Authorization': accessToken},
    );
  }

  @override
  Future<http.Response> logout({required String accessToken}) {
    final String url = "/api/logout";
    return client.post(
      Uri.https(BASE_URL, url),
      headers: {'Authorization': accessToken},
    );
  }

  @override
  Future<http.Response> refreshToken({required String refreshToken}) {
    final String url = "/api/refresh";
    return client.post(
      Uri.https(BASE_URL, url),
      headers: {"Accept": "application/json"},
      body: jsonEncode({"refresh_token": refreshToken}),
    );
  }

  @override
  Future<http.Response> getCourses({required String accessToken}) {
    final String url = "/api/get_course";
    return client.get(
      Uri.https(BASE_URL, url),
      headers: {'Authorization': accessToken},
    );
  }

  @override
  Future<http.Response> applyCourse(
      {required int courseId, required String accessToken}) {
    final String url = "/api/apply";
    return client.post(
      Uri.https(BASE_URL, url),
      headers: {'Authorization': accessToken},
      body: jsonEncode({'course_id': "$courseId"}),
    );
  }

  @override
  Future<http.Response> unApplyCourse({
    required int courseId,
    required String accessToken,
  }) {
    final String url = "/api/unapply";
    return client.post(
      Uri.https(BASE_URL, url),
      headers: {'Authorization': accessToken},
      body: jsonEncode({'course_id': "$courseId"}),
    );
  }

  //getPdf
  @override
  Future<http.Response> getPdf({
    required int courseId,
    required String accessToken,
  }) {
    final String url = "api/get_pdf/$courseId";
    return client.get(
      Uri.https(BASE_URL, url),
      headers: {'Authorization': accessToken},
    );
  }

  @override
  Future<http.Response> getAssignment(
      {required int courseId, required String accessToken}) {
    final String url = "api/get_assignment/$courseId";
    return client.get(
      Uri.https(BASE_URL, url),
      headers: {'Authorization': accessToken},
    );
  }

  @override
  Future<http.Response> getQuestions(
      {required int assignmentId, required String accessToken}) {
    final String url = "api/get_question/$assignmentId";
    return client.get(
      Uri.https(BASE_URL, url),
      headers: {'Authorization': accessToken},
    );
  }

  @override
  Future<http.Response> getChoices(
      {required int questionId, required String accessToken}) {
    final String url = "api/get_choice/$questionId";
    return client.get(
      Uri.https(BASE_URL, url),
      headers: {'Authorization': accessToken},
    );
  }

  @override
  Future<http.Response> attemptAssignment({
    required int assignmentId,
    required String accessToken,
  }) {
    final String url = "api/attempt_assignment";
    return client.post(
      Uri.https(BASE_URL, url),
      headers: {'Authorization': accessToken},
      body: jsonEncode({"assignment_id": "$assignmentId"}),
    );
  }

  @override
  Future<http.Response> attemptQuestion({
    required int questionId,
    required int answerId,
    required String accessToken,
  }) {
    final String url = "api/attempt_question";
    return client.post(
      Uri.https(BASE_URL, url),
      headers: {'Authorization': accessToken},
      body: jsonEncode({
        "question_id": "$questionId",
        "answer_id": "$answerId",
      }),
    );
  }

  @override
  Future<http.Response> submitAssignment(
      {required int attemptedId, required String accessToken}) {
    final String url = "api/grade";
    return client.post(
      Uri.https(BASE_URL, url),
      headers: {'Authorization': accessToken},
      body: jsonEncode({"attempted_assignments_id": "$attemptedId"}),
    );
  }
}
