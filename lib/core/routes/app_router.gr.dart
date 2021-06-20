// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/cupertino.dart' as _i11;
import 'package:flutter/material.dart' as _i2;
import 'package:student/features/domain/entities/assignment.dart' as _i13;
import 'package:student/features/domain/entities/course.dart' as _i12;
import 'package:student/features/domain/entities/pdf.dart' as _i15;
import 'package:student/features/domain/entities/question.dart' as _i14;
import 'package:student/features/presentation/components/pdf_view.dart' as _i10;
import 'package:student/features/presentation/pages/assignment/assignmate_page.dart'
    as _i8;
import 'package:student/features/presentation/pages/assignment/question_page.dart'
    as _i9;
import 'package:student/features/presentation/pages/auth/login_page.dart'
    as _i4;
import 'package:student/features/presentation/pages/auth/register_page.dart'
    as _i5;
import 'package:student/features/presentation/pages/core/splash.dart' as _i3;
import 'package:student/features/presentation/pages/course/student_course.dart'
    as _i7;
import 'package:student/features/presentation/pages/home/student_home.dart'
    as _i6;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.SplashPage();
        }),
    LoginRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.LoginPage();
        },
        title: 'Login'),
    RegisterRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.RegisterPage();
        },
        title: 'Register'),
    StudentHomeRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.StudentHomePage();
        },
        title: 'Home'),
    StudentCourseRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<StudentCourseRouteArgs>();
          return _i7.StudentCoursePage(key: args.key, course: args.course);
        },
        title: 'Courses'),
    StudentAssignmentRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<StudentAssignmentRouteArgs>();
          return _i8.StudentAssignmentPage(
              key: args.key, assignment: args.assignment);
        },
        title: 'Assignments'),
    StudentQuestionRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<StudentQuestionRouteArgs>();
          return _i9.StudentQuestionPage(
              key: args.key, question: args.question);
        },
        title: 'Questions'),
    PdfViewRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<PdfViewRouteArgs>();
          return _i10.PdfViewPage(key: args.key, pdf: args.pdf);
        },
        title: 'PDF View')
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashRoute.name, path: '/'),
        _i1.RouteConfig(LoginRoute.name, path: '/login-page'),
        _i1.RouteConfig(RegisterRoute.name, path: '/register-page'),
        _i1.RouteConfig(StudentHomeRoute.name, path: '/student-home-page'),
        _i1.RouteConfig(StudentCourseRoute.name, path: '/student-course-page'),
        _i1.RouteConfig(StudentAssignmentRoute.name,
            path: '/student-assignment-page'),
        _i1.RouteConfig(StudentQuestionRoute.name,
            path: '/student-question-page'),
        _i1.RouteConfig(PdfViewRoute.name, path: '/pdf-view-page')
      ];
}

class SplashRoute extends _i1.PageRouteInfo {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

class LoginRoute extends _i1.PageRouteInfo {
  const LoginRoute() : super(name, path: '/login-page');

  static const String name = 'LoginRoute';
}

class RegisterRoute extends _i1.PageRouteInfo {
  const RegisterRoute() : super(name, path: '/register-page');

  static const String name = 'RegisterRoute';
}

class StudentHomeRoute extends _i1.PageRouteInfo {
  const StudentHomeRoute() : super(name, path: '/student-home-page');

  static const String name = 'StudentHomeRoute';
}

class StudentCourseRoute extends _i1.PageRouteInfo<StudentCourseRouteArgs> {
  StudentCourseRoute({_i11.Key? key, required _i12.Course course})
      : super(name,
            path: '/student-course-page',
            args: StudentCourseRouteArgs(key: key, course: course));

  static const String name = 'StudentCourseRoute';
}

class StudentCourseRouteArgs {
  const StudentCourseRouteArgs({this.key, required this.course});

  final _i11.Key? key;

  final _i12.Course course;
}

class StudentAssignmentRoute
    extends _i1.PageRouteInfo<StudentAssignmentRouteArgs> {
  StudentAssignmentRoute({_i11.Key? key, required _i13.Assignment assignment})
      : super(name,
            path: '/student-assignment-page',
            args: StudentAssignmentRouteArgs(key: key, assignment: assignment));

  static const String name = 'StudentAssignmentRoute';
}

class StudentAssignmentRouteArgs {
  const StudentAssignmentRouteArgs({this.key, required this.assignment});

  final _i11.Key? key;

  final _i13.Assignment assignment;
}

class StudentQuestionRoute extends _i1.PageRouteInfo<StudentQuestionRouteArgs> {
  StudentQuestionRoute({_i11.Key? key, required _i14.Question question})
      : super(name,
            path: '/student-question-page',
            args: StudentQuestionRouteArgs(key: key, question: question));

  static const String name = 'StudentQuestionRoute';
}

class StudentQuestionRouteArgs {
  const StudentQuestionRouteArgs({this.key, required this.question});

  final _i11.Key? key;

  final _i14.Question question;
}

class PdfViewRoute extends _i1.PageRouteInfo<PdfViewRouteArgs> {
  PdfViewRoute({_i11.Key? key, required _i15.Pdf pdf})
      : super(name,
            path: '/pdf-view-page', args: PdfViewRouteArgs(key: key, pdf: pdf));

  static const String name = 'PdfViewRoute';
}

class PdfViewRouteArgs {
  const PdfViewRouteArgs({this.key, required this.pdf});

  final _i11.Key? key;

  final _i15.Pdf pdf;
}
