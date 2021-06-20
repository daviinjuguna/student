part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.initial() = _Initial;
  const factory SplashState.loading() = _Load;
  const factory SplashState.success() = _Success;
  const factory SplashState.loggedOut() = _LoggedOut;
  const factory SplashState.error({required String message}) = _Error;
}
