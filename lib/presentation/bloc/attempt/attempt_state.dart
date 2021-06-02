part of 'attempt_bloc.dart';

@freezed
class AttemptState with _$AttemptState {
  const factory AttemptState.initial() = _Initial;
  const factory AttemptState.loading() = _Load;
  const factory AttemptState.success() = _Success;
  const factory AttemptState.error({required String message}) = _Error;
}
