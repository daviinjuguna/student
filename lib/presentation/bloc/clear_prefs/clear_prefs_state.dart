part of 'clear_prefs_bloc.dart';

@freezed
class ClearPrefsState with _$ClearPrefsState {
  const factory ClearPrefsState.initial() = _Initial;
  const factory ClearPrefsState.success() = _Success;
  const factory ClearPrefsState.error() = _Error;
}
