part of 'battery_bloc.dart';

@freezed
class BatteryEvent with _$BatteryEvent {
  const factory BatteryEvent.started() = _Started;
  const factory BatteryEvent.received({
    required Either<String, String> bats,
  }) = _Received;
}
