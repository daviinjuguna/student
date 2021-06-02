part of 'ntwork_bloc.dart';

@freezed
class NtworkState with _$NtworkState {
  const factory NtworkState.initial() = _Initial;
  const factory NtworkState.loadInProgress() = _LoadInProgress;
  const factory NtworkState.loadSuccess(bool connection) = _LoadSuccess;
  const factory NtworkState.loadFailure(final String? message) = _LoadFailure;
}
