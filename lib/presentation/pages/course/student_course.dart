import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student/core/util/constant.dart';
import 'package:student/di/injection.dart';
import 'package:student/domain/entities/course.dart';
import 'package:student/presentation/bloc/clear_prefs/clear_prefs_bloc.dart';
import 'package:student/presentation/bloc/get_assignment/get_assignment_bloc.dart';
import 'package:student/presentation/bloc/get_pdf/get_pdf_bloc.dart';
import 'package:student/presentation/components/error_card.dart';
import 'package:student/core/routes/app_router.gr.dart';

class StudentCoursePage extends StatefulWidget {
  final Course _course;

  const StudentCoursePage({Key? key, required Course course})
      : _course = course,
        super(key: key);

  @override
  _StudentCoursePageState createState() => _StudentCoursePageState();
}

class _StudentCoursePageState extends State<StudentCoursePage> {
  final _pdfBloc = getIt<GetPdfBloc>();
  final _assignmentBloc = getIt<GetAssignmentBloc>();

  @override
  void initState() {
    super.initState();
    _pdfBloc.add(GetPdfEvent.started(id: widget._course.id));
    _assignmentBloc.add(GetAssignmentEvent.started(id: widget._course.id));
  }

  @override
  void dispose() {
    super.dispose();
    _pdfBloc.close();
    _assignmentBloc.close();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    print("Height of screen: $height");
    print("Width of screen: $width");
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => _pdfBloc),
        BlocProvider(create: (context) => _assignmentBloc),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<GetPdfBloc, GetPdfState>(
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

                    Future.delayed(
                      const Duration(seconds: 3),
                      () {
                        context
                            .read<ClearPrefsBloc>()
                            .add(ClearPrefsEvent.clearPrefs());
                        context.router.replace(LoginRoute());
                      },
                    );
                  }
                },
              );
            },
          ),
          BlocListener<GetAssignmentBloc, GetAssignmentState>(
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
                },
              );
            },
          ),
        ],
        child: Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            automaticallyImplyLeading: true,
            centerTitle: true,
            iconTheme: IconThemeData(color: Colors.white),
            // elevation: 0, //*elevation worship
            backgroundColor: kBlackColor,
            title: Text(
              "${widget._course.title.trim().toUpperCase()}",
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: SingleChildScrollView(
            // physics: NeverScrollableScrollPhysics(),
            child: Container(
              height: (height < 780) ? 780 : height, //being leposiv
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Card(
                        child: Column(
                          children: [
                            Text(
                              "LEARNING MATERIALS",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                            Expanded(
                              child: BlocBuilder<GetPdfBloc, GetPdfState>(
                                builder: (context, state) {
                                  return state.map(
                                    initial: (_) => Container(),
                                    loading: (_) => Center(
                                      child: CupertinoActivityIndicator(),
                                    ),
                                    success: (state) {
                                      final pdf = state.pdf;
                                      return ListView.separated(
                                        //TODO fix scrolls
                                        // shrinkWrap: true,
                                        // physics: NeverScrollableScrollPhysics(),
                                        itemBuilder: (context, index) =>
                                            Container(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 15,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("${pdf[index].name}"),
                                              IconButton(
                                                padding: EdgeInsets.zero,
                                                color: kYellowColor,
                                                icon:
                                                    Icon(Icons.picture_as_pdf),
                                                onPressed: () =>
                                                    context.router.push(
                                                  PdfViewRoute(pdf: pdf[index]),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        separatorBuilder: (context, index) =>
                                            Divider(),
                                        itemCount: pdf.size,
                                      );
                                    },
                                    error: (state) => Container(
                                      height: double.infinity,
                                      width: double.infinity,
                                      alignment: Alignment.center,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Oh Snap",
                                            style: TextStyle(
                                              fontSize: 30,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Something went wrong, Please try agait",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          MaterialButton(
                                            onPressed: () => _pdfBloc.add(
                                                GetPdfEvent.started(
                                                    id: widget._course.id)),
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
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      width: double.infinity,
                      // padding: EdgeInsets.only(left: 8, right: 8, bottom: 8),
                      // height: 300,
                      alignment: Alignment.center,
                      child: Card(
                        child: Column(
                          children: [
                            Text(
                              "ASSIGNMENTS",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                            Expanded(
                              child: BlocBuilder<GetAssignmentBloc,
                                  GetAssignmentState>(
                                builder: (context, state) {
                                  return state.map(
                                    initial: (_) => Container(),
                                    loading: (_) => Center(
                                      child: CupertinoActivityIndicator(),
                                    ),
                                    success: (state) {
                                      final ass = state.assignment;
                                      return ListView.separated(
                                        //TODO fix scrolls
                                        // shrinkWrap: true,
                                        // physics: NeverScrollableScrollPhysics(),
                                        itemBuilder: (context, index) =>
                                            Container(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 15,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("${ass[index].title}"),
                                              MaterialButton(
                                                elevation: 0,
                                                color: kYellowColor,
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    "VIEW",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      letterSpacing: 1.4,
                                                    ),
                                                  ),
                                                ),
                                                onPressed: () => context.router
                                                    .push(
                                                        StudentAssignmentRoute(
                                                            assignment:
                                                                ass[index])),
                                              ),
                                            ],
                                          ),
                                        ),
                                        separatorBuilder: (context, index) =>
                                            Divider(),
                                        itemCount: ass.size,
                                      );
                                    },
                                    error: (state) => ErrorCard(
                                      retry: () => _assignmentBloc.add(
                                          GetAssignmentEvent.started(
                                              id: widget._course.id)),
                                    ),
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      width: double.infinity,
                      child: Card(
                        child: Column(
                          children: [
                            Text(
                              "SCORE",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
