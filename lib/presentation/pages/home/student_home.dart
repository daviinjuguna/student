import 'dart:async';

import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:lottie/lottie.dart';
import 'package:student/core/util/constant.dart';
import 'package:student/di/injection.dart';
import 'package:student/domain/entities/course.dart';
import 'package:student/presentation/bloc/apply_course/application_bloc.dart';
import 'package:student/presentation/bloc/clear_prefs/clear_prefs_bloc.dart';
import 'package:student/presentation/bloc/dashboard/dashboard_bloc.dart';
import 'package:student/presentation/bloc/splash_bloc/splash_bloc.dart';
import 'package:student/core/routes/app_router.gr.dart';

import 'widgets/home_shimmer.dart';

class StudentHomePage extends StatefulWidget {
  @override
  _StudentHomePageState createState() => _StudentHomePageState();
}

class _StudentHomePageState extends State<StudentHomePage> {
  final _dashboardBloc = getIt<DashboardBloc>();
  final _applicationBloc = getIt<ApplicationBloc>();

  KtList<Course> course = new KtList.empty();
  Completer<void> _refreshCompleter = Completer<void>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _applicationBloc.close();
    _dashboardBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => _dashboardBloc..add(DashboardEvent.getCourse()),
        ),
        BlocProvider(create: (create) => _applicationBloc),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<ApplicationBloc, ApplicationState>(
            listener: (context, state) {
              state.maybeMap(
                orElse: () {},
                loading: (state) {
                  // ProgressDialog dialog;
                  ScaffoldMessenger.maybeOf(context)!
                    ..hideCurrentSnackBar()
                    ..showSnackBar(
                      SnackBar(
                        backgroundColor: kBlackColor,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        content: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircularProgressIndicator.adaptive(
                              valueColor: AlwaysStoppedAnimation(kYellowColor),
                            ),
                            Text(
                              "Loading...",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    );
                },
                success: (state) {
                  ScaffoldMessenger.maybeOf(context)!..hideCurrentSnackBar();
                  _dashboardBloc.add(DashboardEvent.update(course: course));
                  _showSnack(context);
                },
                error: (state) {
                  ScaffoldMessenger.maybeOf(context)!..hideCurrentSnackBar();
                  if (state.message == UNAUTHENTICATED_FAILURE_MESSAGE) {
                    //you will be thrown out asf
                    ScaffoldMessenger.maybeOf(context)
                      ?..hideCurrentSnackBar()
                      ..showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.red,
                          behavior: SnackBarBehavior.fixed,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                          )),
                          content: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "ERROR",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              // SizedBox(height: 3),
                              Text(state.message)
                            ],
                          ),
                        ),
                      );
                    Future.delayed(
                      const Duration(seconds: 3),
                      () async {
                        context
                            .read<ClearPrefsBloc>()
                            .add(ClearPrefsEvent.clearPrefs());
                        context.router.replace(LoginRoute());
                      },
                    );
                  }
                  ScaffoldMessenger.maybeOf(context)
                    ?..hideCurrentSnackBar()
                    ..showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.red,
                        behavior: SnackBarBehavior.fixed,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                        )),
                        content: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "ERROR",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            // SizedBox(height: 3),
                            Text(state.message)
                          ],
                        ),
                      ),
                    );
                },
              );
            },
          ),
          BlocListener<SplashBloc, SplashState>(
            listener: (context, state) {
              state.maybeMap(
                  orElse: () {},
                  error: (state) {
                    ScaffoldMessenger.maybeOf(context)!..hideCurrentSnackBar();
                    if (state.message == UNAUTHENTICATED_FAILURE_MESSAGE) {
                      //you will be thrown out asf
                      ScaffoldMessenger.maybeOf(context)
                        ?..hideCurrentSnackBar()
                        ..showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.red,
                            behavior: SnackBarBehavior.fixed,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                            )),
                            content: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "ERROR",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                // SizedBox(height: 3),
                                Text(state.message)
                              ],
                            ),
                          ),
                        );
                      Future.delayed(const Duration(seconds: 3), () async {
                        context
                            .read<ClearPrefsBloc>()
                            .add(ClearPrefsEvent.clearPrefs());
                        context.router.replace(LoginRoute());
                      });
                    }
                  });
            },
          ),
          BlocListener<DashboardBloc, DashboardState>(
            listener: (context, state) {
              state.maybeMap(
                orElse: () {},
                success: (state) {
                  course = state.course;
                  _refreshCompleter.complete();
                  _refreshCompleter = Completer();
                  ScaffoldMessenger.maybeOf(context)!..hideCurrentSnackBar();
                },
                error: (state) {
                  _refreshCompleter.complete();
                  _refreshCompleter = Completer();
                  ScaffoldMessenger.maybeOf(context)!..hideCurrentSnackBar();
                  if (state.message == UNAUTHENTICATED_FAILURE_MESSAGE) {
                    //you will be thrown out asf
                    ScaffoldMessenger.maybeOf(context)
                      ?..hideCurrentSnackBar()
                      ..showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.red,
                          behavior: SnackBarBehavior.fixed,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                          )),
                          content: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "ERROR",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              // SizedBox(height: 3),
                              Text(state.message)
                            ],
                          ),
                        ),
                      );
                    Future.delayed(const Duration(seconds: 3), () async {
                      context
                          .read<ClearPrefsBloc>()
                          .add(ClearPrefsEvent.clearPrefs());
                      context.router.replace(LoginRoute());
                    });
                  }
                },
              );
            },
          ),
        ],
        child: Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            centerTitle: true,
            // elevation: 0, //*elevation worship
            backgroundColor: kBlackColor,
            iconTheme: IconThemeData(color: Colors.white),
            title: Text(
              "STUDENT CENTER",
              style: TextStyle(color: Colors.white),
            ),
          ),
          drawer: Drawer(),
          body: Container(
            child: BlocBuilder<DashboardBloc, DashboardState>(
              builder: (context, state) {
                return state.maybeMap(
                  // orElse: () => Container(),
                  // initial: (_) => Container(),
                  loading: (_) => ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return HomeShimmer();
                    },
                  ),
                  orElse: () {
                    return RefreshIndicator(
                      onRefresh: () {
                        _dashboardBloc
                            .add(DashboardEvent.update(course: course));
                        return _refreshCompleter.future;
                      },
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics(),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        itemCount: course.size,
                        itemBuilder: (context, index) => Card(
                          elevation: 3,
                          child: Column(
                            children: [
                              Container(
                                constraints: BoxConstraints(minHeight: 200),
                                width: double.infinity,
                                child: FadeInImage.assetNetwork(
                                  fit: BoxFit.fill,
                                  placeholder:
                                      "assets/images/rsz_1cap_yellow.png",
                                  image: "$FILE_URL${course[index].photo}",
                                  imageErrorBuilder:
                                      (context, error, stackTrace) =>
                                          Image.asset(
                                    "assets/images/rsz_1cap_yellow.png",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                child: Column(
                                  children: [
                                    Text(
                                      "${course[index].title}",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "${course[index].desc}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      // crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        MaterialButton(
                                          elevation: 0,
                                          color: !course[index].applied!
                                              ? kYellowColor
                                              : Colors.green[300],
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            width: 90,
                                            height: 30,
                                            alignment: Alignment.center,
                                            child: Text(
                                              !course[index].applied!
                                                  ? "APPLY"
                                                  : "APPLIED",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w800,
                                                letterSpacing: 1.4,
                                              ),
                                            ),
                                          ),
                                          onPressed: () => showDialog(
                                            context: context,
                                            builder: (context) => AlertDialog(
                                              content: Text(
                                                "Are you sure you want to ${course[index].applied! ? "unapply" : "apply"}?",
                                                style: TextStyle(
                                                  // fontWeight: FontWeight.w600,
                                                  fontSize: 18,
                                                ),
                                              ),
                                              actionsPadding: EdgeInsets.all(5),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.of(context)
                                                          .pop(true),
                                                  child: Text(
                                                    course[index].applied!
                                                        ? "UNAPPLY"
                                                        : "APPLY",
                                                    style: TextStyle(
                                                      color:
                                                          course[index].applied!
                                                              ? Colors.red
                                                              : Colors.green,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      letterSpacing: 1.4,
                                                    ),
                                                  ),
                                                ),
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.of(context)
                                                          .pop(null),
                                                  child: Text(
                                                    "CANCEL",
                                                    style: TextStyle(
                                                      color: kBlackColor,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      letterSpacing: 1.4,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                              .then((value) => {
                                                    if (value != null && value)
                                                      {
                                                        course[index].applied!
                                                            ? _applicationBloc
                                                                .add(
                                                                ApplicationEvent
                                                                    .unapply(
                                                                  courseId:
                                                                      course[index]
                                                                          .id,
                                                                ),
                                                              )
                                                            : _applicationBloc
                                                                .add(
                                                                ApplicationEvent
                                                                    .apply(
                                                                  courseId:
                                                                      course[index]
                                                                          .id,
                                                                ),
                                                              ),
                                                      }
                                                    else
                                                      {print("")}
                                                  })
                                              .catchError((e, s) {
                                            print("STUDENT APPLY ERROR $e,$s");
                                          }),
                                        ),
                                        MaterialButton(
                                          elevation: 0,
                                          color: !course[index].applied!
                                              ? Colors.grey[300]
                                              : kYellowColor,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            width: 90,
                                            height: 30,
                                            alignment: Alignment.center,
                                            child: Text(
                                              "VIEW",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w800,
                                                letterSpacing: 1.4,
                                              ),
                                            ),
                                          ),
                                          onPressed: () {
                                            if (course[index].applied!) {
                                              context.router.push(
                                                StudentCourseRoute(
                                                    course: course[index]),
                                              );
                                            }
                                          },
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  //*error when data fails to load
                  error: (state) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      child: Card(
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          alignment: Alignment.center,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  // height: 100,
                                  child: Lottie.asset(
                                    "assets/lottie/sad_cloud.json",
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Oh Snap",
                                style: TextStyle(
                                  fontSize: 45,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Something went wrong, Please try agait",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              MaterialButton(
                                onPressed: () => context
                                    .read<DashboardBloc>()
                                    .add(DashboardEvent.getCourse()),
                                color: kYellowColor,
                                textColor: Colors.white,
                                child: Text("RETRY"),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  void _showSnack(BuildContext context) => ScaffoldMessenger.maybeOf(context)!
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        backgroundColor: kBlackColor,
        padding: EdgeInsets.symmetric(horizontal: 20),
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircularProgressIndicator.adaptive(
              valueColor: AlwaysStoppedAnimation(kYellowColor),
            ),
            Text(
              "Updating...",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
}
