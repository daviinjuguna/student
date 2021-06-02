part of 'application_bloc.dart';

@freezed
class ApplicationState with _$ApplicationState {
  const factory ApplicationState.initial() = _Initial;
  const factory ApplicationState.loading() = _Load;
  const factory ApplicationState.success() = _Success;
  const factory ApplicationState.error({required String message}) = _Error;
}
