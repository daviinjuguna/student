part of 'get_choice_bloc.dart';

@freezed
class GetChoiceState with _$GetChoiceState {
  const factory GetChoiceState.initial() = _Initial;
  const factory GetChoiceState.loading() = _Load;
  const factory GetChoiceState.success({required KtList<Choice> course}) =
      _Success;
  const factory GetChoiceState.error({required String message}) = _Error;
}
