part of 'clear_prefs_bloc.dart';

@freezed
class ClearPrefsEvent with _$ClearPrefsEvent {
  const factory ClearPrefsEvent.clearPrefs() = _Started;
}
