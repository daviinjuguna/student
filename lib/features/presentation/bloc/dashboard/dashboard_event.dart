part of 'dashboard_bloc.dart';

@freezed
class DashboardEvent with _$DashboardEvent {
  const factory DashboardEvent.getCourse() = _Started;
  const factory DashboardEvent.update({required KtList<Course> course}) =
      _Update;
}
