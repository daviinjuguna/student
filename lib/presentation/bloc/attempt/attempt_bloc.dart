import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:student/core/usecase/usecase.dart';

import 'package:student/domain/usecase/student/answer_question.dart';
import 'package:student/domain/usecase/student/start_assignment.dart';
import 'package:student/domain/usecase/student/submit_assignment.dart';

part 'attempt_bloc.freezed.dart';
part 'attempt_event.dart';
part 'attempt_state.dart';

@injectable
class AttemptBloc extends Bloc<AttemptEvent, AttemptState> {
  AttemptBloc(
    this._answer,
    this._startAssignment,
    this._submitAssignment,
  ) : super(AttemptState.initial());

  final AnswerQuestion _answer;
  final StartAssignment _startAssignment;
  final SubmitAssignment _submitAssignment;

  @override
  Stream<AttemptState> mapEventToState(
    AttemptEvent event,
  ) async* {
    yield* event.map(
      startAssignment: (e) async* {
        yield AttemptState.loading();
        final _done = await _startAssignment.call(ParamsId(id: e.assignmentId));
        yield _done.fold(
          (l) => AttemptState.error(message: l),
          (r) => AttemptState.success(),
        );
      },
      answerQuestion: (e) async* {
        yield AttemptState.loading();
        final _done = await _answer.call(AnswerQuestionParams(
            questionId: e.questionId, answerId: e.answerId));
        yield _done.fold(
          (l) => AttemptState.error(message: l),
          (r) => AttemptState.success(),
        );
      },
      submitAssignment: (e) async* {
        yield AttemptState.loading();
        final _done = await _submitAssignment.call(ParamsId(id: e.attemptedId));
        yield _done.fold(
          (l) => AttemptState.error(message: l),
          (r) => AttemptState.success(),
        );
      },
    );
  }
}
