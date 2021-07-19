import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';
import 'package:student/core/util/constant.dart';
import 'package:student/di/injection.dart';
import 'package:student/features/domain/entities/assignment.dart';
import 'package:student/features/domain/entities/question.dart';
import 'package:student/features/presentation/bloc/attempt/attempt_bloc.dart';
import 'package:student/features/presentation/bloc/clear_prefs/clear_prefs_bloc.dart';
import 'package:student/features/presentation/bloc/get_question/get_question_bloc.dart';
import 'package:student/features/presentation/components/error_card.dart';
import 'package:student/core/routes/app_router.gr.dart';

import 'widgets/question_card.dart';

class StudentAssignmentPage extends StatefulWidget {
  final Assignment _assignment;

  const StudentAssignmentPage({Key? key, required Assignment assignment})
      : _assignment = assignment,
        super(key: key);

  @override
  _StudentAssignmentPageState createState() => _StudentAssignmentPageState();
}

class _StudentAssignmentPageState extends State<StudentAssignmentPage> {
  final _getQuestionBloc = getIt<GetQuestionBloc>();
  late final _attemptBloc = getIt<AttemptBloc>();

  int _initialPage = 0;
  KtList<Question> _question = emptyList();

  @override
  void initState() {
    super.initState();
    _getQuestionBloc.add(GetQuestionEvent.started(id: widget._assignment.id));
  }

  @override
  void dispose() {
    super.dispose();
    _getQuestionBloc.close();
    _attemptBloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => _getQuestionBloc),
        BlocProvider(create: (create) => _attemptBloc)
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AttemptBloc, AttemptState>(
            listener: (c, state) {
              state.maybeMap(
                orElse: () {},
                loading: (state) {
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
                              "Submitting assignment...",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    );
                },
                error: (state) {
                  print("Error");
                },
                success: (s) {
                  ScaffoldMessenger.maybeOf(context)
                    ?..hideCurrentSnackBar()
                    ..showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.green,
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
                              "SUCEES",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            // SizedBox(height: 3),
                            Text("Submitted Successfully")
                          ],
                        ),
                      ),
                    );
                  _getQuestionBloc
                      .add(GetQuestionEvent.update(id: widget._assignment.id));
                },
              );
            },
          ),
          BlocListener<GetQuestionBloc, GetQuestionState>(
            listener: (context, state) {
              state.maybeMap(
                orElse: () {},
                success: (state) {
                  _question = state.question;
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
                },
              );
            },
          ),
        ],
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: kBlackColor,
            automaticallyImplyLeading: true,
            iconTheme: IconThemeData(color: Colors.white),
            title: Text(
              "${widget._assignment.title.trim().toUpperCase()}",
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: SafeArea(
            child: BlocBuilder<GetQuestionBloc, GetQuestionState>(
              builder: (context, state) {
                return state.maybeMap(
                  // initial: (_) => Container(),
                  loading: (_) => Center(
                    child: CupertinoActivityIndicator(),
                  ),
                  orElse: () {
                    // _question =
                    return Container(
                      height: MediaQuery.of(context).size.height,
                      child: Column(
                        children: [
                          SizedBox(height: 30),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text.rich(
                              TextSpan(
                                text: "Question ${_initialPage + 1}",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4!
                                    .copyWith(color: kBlackColor),
                                children: [
                                  TextSpan(
                                    text: "/${_question.size}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5!
                                        .copyWith(color: kBlackColor),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Flexible(
                            flex: 4,
                            child: PageView.builder(
                              onPageChanged: (int index) {
                                setState(() {
                                  _initialPage = index;
                                });
                              },
                              itemCount: _question.size,
                              itemBuilder: (context, index) => QuestionCard(
                                assignmentId: widget._assignment.id,
                                question: _question[index],
                              ),
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {
                              _attemptBloc.add(AttemptEvent.startAssignment(
                                  assignmentId: widget._assignment.id));
                            },
                            color: kBlackColor,
                            child: Text(
                              "FINISH",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  error: (_) => ErrorCard(
                    retry: () => _getQuestionBloc.add(
                      GetQuestionEvent.started(id: widget._assignment.id),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
