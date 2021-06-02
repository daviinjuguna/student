import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:student/domain/usecase/common/login.dart';
import 'package:student/domain/usecase/common/register.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._login, this._register) : super(AuthState.initial());
  final Login _login;
  final Register _register;

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      login: (e) async* {
        yield AuthState.loading();

        final _logged = await _login.call(LoginParams(
          password: e.password,
          email: e.email,
        ));

        yield _logged.fold(
          (error) => AuthState.error(message: error),
          (r) => AuthState.success(),
        );
      },
      register: (e) async* {
        yield AuthState.loading();

        final _registered = await _register.call(RegisterParams(
          name: e.name,
          email: e.email,
          password: e.password,
          confirmPassword: e.confirmPassword,
        ));

        yield _registered.fold(
          (error) => AuthState.error(message: error),
          (r) => AuthState.success(),
        );
      },
    );
  }
}
