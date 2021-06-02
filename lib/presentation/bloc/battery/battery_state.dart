part of 'battery_bloc.dart';

@freezed
class BatteryState with _$BatteryState {
  const factory BatteryState.initial() = _Initial;
  const factory BatteryState.loadInProgress() = _LoadInProgress;
  const factory BatteryState.loadSuccess({required String batteryStatus}) =
      _LoadSuccess;
  const factory BatteryState.loadFailure({required String message}) =
      _LoadFailure;
}
