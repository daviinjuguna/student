import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:student/features/presentation/components/pdf_view.dart';
import 'package:student/features/presentation/pages/assignment/assignmate_page.dart';
import 'package:student/features/presentation/pages/assignment/question_page.dart';
import 'package:student/features/presentation/pages/auth/login_page.dart';
import 'package:student/features/presentation/pages/auth/register_page.dart';
import 'package:student/features/presentation/pages/core/splash.dart';
import 'package:student/features/presentation/pages/course/student_course.dart';
import 'package:student/features/presentation/pages/home/student_home.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    //*initials marks the first page
    AdaptiveRoute(page: SplashPage, initial: true),
    AdaptiveRoute(page: LoginPage, cupertinoPageTitle: "Login"),
    AdaptiveRoute(page: RegisterPage, cupertinoPageTitle: "Register"),
    AdaptiveRoute(page: StudentHomePage, cupertinoPageTitle: "Home"),
    AdaptiveRoute(page: StudentCoursePage, cupertinoPageTitle: "Courses"),
    AdaptiveRoute(
        page: StudentAssignmentPage, cupertinoPageTitle: "Assignments"),
    AdaptiveRoute(page: StudentQuestionPage, cupertinoPageTitle: "Questions"),
    AdaptiveRoute(page: PdfViewPage, cupertinoPageTitle: "PDF View"),
  ],
)
class $AppRouter {}
