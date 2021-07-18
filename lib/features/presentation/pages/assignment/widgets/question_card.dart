import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:student/core/util/constant.dart';
import 'package:student/di/injection.dart';
import 'package:student/features/domain/entities/choice.dart';
import 'package:student/features/domain/entities/question.dart';
import 'package:student/features/presentation/bloc/attempt/attempt_bloc.dart';
import 'package:student/features/presentation/bloc/get_choice/get_choice_bloc.dart';
import 'package:student/features/presentation/bloc/get_question/get_question_bloc.dart';
import 'package:student/features/presentation/pages/assignment/widgets/choice.dart';

class QuestionCard extends StatefulWidget {
  final Question _question;
  final int assignmentId;
  const QuestionCard(
      {Key? key, required Question question, required this.assignmentId})
      : _question = question,
        super(key: key);

  @override
  _QuestionCardState createState() => _QuestionCardState();
}

class _QuestionCardState extends State<QuestionCard> {
  late final _attemptBloc = getIt<AttemptBloc>();
  late final _getChoiceBloc = getIt<GetChoiceBloc>();
  KtList<Choice> _choice = emptyList();

  int? _currentSelected;
  @override
  void initState() {
    super.initState();
    // _getChoiceBloc.add(GetChoiceEvent.started(id: widget._question.id));
    _choice = widget._question.choices;
  }

  @override
  void dispose() {
    super.dispose();
    _attemptBloc.close();
    _getChoiceBloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (create) => _attemptBloc),
        BlocProvider(create: (create) => _getChoiceBloc),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AttemptBloc, AttemptState>(
            listener: (c, state) {
              state.maybeMap(
                orElse: () {},
                success: (s) {
                  context
                      .read<GetQuestionBloc>()
                      .add(GetQuestionEvent.update(id: widget.assignmentId));
                },
              );
            },
          ),
          BlocListener<GetChoiceBloc, GetChoiceState>(
            listener: (c, state) {
              state.maybeMap(
                orElse: () {},
                success: (state) {
                  _choice = state.course;
                },
              );
            },
          )
        ],
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          // padding:
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding:
                    EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 5),
                child: Text(
                  "${widget._question.question}",
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                      color: kBlackColor, fontWeight: FontWeight.w600),
                ),
              ),
              Expanded(
                child: BlocBuilder<GetChoiceBloc, GetChoiceState>(
                  builder: (context, state) {
                    return ListView.builder(
                      padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                      physics: AlwaysScrollableScrollPhysics(),
                      itemCount: widget._question.choices.size,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => ChoiceCard(
                        press: () {
                          if (widget._question.selectedAnswerId != null) {
                            print("HELLOW RUDDY");
                            return;
                          }
                          setState(() {
                            _currentSelected =
                                widget._question.choices[index].id;
                          });
                        },
                        name: widget._question.choices[index].title,
                        correct: widget._question.selectedAnswerId != null &&
                            widget._question.answerId ==
                                widget._question.choices[index].id,
                        selected: widget._question.selectedAnswerId != null &&
                            widget._question.selectedAnswerId ==
                                widget._question.choices[index].id,
                        currentSelected: _currentSelected ==
                            widget._question.choices[index].id,
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: MaterialButton(
                    onPressed: _currentSelected == null
                        ? null
                        : () {
                            _attemptBloc.add(AttemptEvent.answerQuestion(
                                questionId: widget._question.id,
                                answerId: _currentSelected!));
                          },
                    color: kYellowColor,
                    child: BlocBuilder<AttemptBloc, AttemptState>(
                      builder: (context, state) {
                        return state.maybeMap(
                          orElse: () {
                            return Text(
                              "SUBMIT",
                              style: TextStyle(color: Colors.white),
                            );
                          },
                          loading: (s) {
                            return Text(
                              "LOADING",
                              style: TextStyle(color: Colors.white),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
