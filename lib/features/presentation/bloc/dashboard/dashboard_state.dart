part of 'dashboard_bloc.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.initial() = _Initial;
  const factory DashboardState.loading() = _Load;

  const factory DashboardState.success({required KtList<Course> course}) =
      _Success;
  const factory DashboardState.updating({required KtList<Course> course}) =
      _Updating;
  const factory DashboardState.error({required String message}) = _Error;
}
