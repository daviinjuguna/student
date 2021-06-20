part of 'attempt_bloc.dart';

@freezed
class AttemptEvent with _$AttemptEvent {
  const factory AttemptEvent.startAssignment({
    required int assignmentId,
  }) = _Started;

  const factory AttemptEvent.answerQuestion({
    required int questionId,
    required int answerId,
  }) = _Answer;

  const factory AttemptEvent.submitAssignment({
    required int attemptedId,
  }) = _Submit;
}
