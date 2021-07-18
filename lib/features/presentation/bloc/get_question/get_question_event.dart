part of 'get_question_bloc.dart';

@freezed
class GetQuestionEvent with _$GetQuestionEvent {
  const factory GetQuestionEvent.started({required int id}) = _Started;
  const factory GetQuestionEvent.update({required int id}) = _Update;
}
