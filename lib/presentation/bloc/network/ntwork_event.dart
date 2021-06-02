part of 'ntwork_bloc.dart';

@freezed
class NtworkEvent with _$NtworkEvent {
  const factory NtworkEvent.startet() = _Started;
  const factory NtworkEvent.received(Either<String, bool> nets) = _Received;
}
