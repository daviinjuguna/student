part of 'splash_bloc.dart';

@freezed
class SplashEvent with _$SplashEvent {
  const factory SplashEvent.checkAuth() = _Auth;
  const factory SplashEvent.loggout() = _LoggOut;
  const factory SplashEvent.refresh() = _Refresh;
}
