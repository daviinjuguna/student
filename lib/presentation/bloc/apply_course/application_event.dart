part of 'application_bloc.dart';

@freezed
class ApplicationEvent with _$ApplicationEvent {
  const factory ApplicationEvent.apply({required int courseId}) = _Apply;
  const factory ApplicationEvent.unapply({required int courseId}) = _Unapply;
}
