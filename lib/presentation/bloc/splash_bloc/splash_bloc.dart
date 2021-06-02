import 'dart:async';

import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:student/core/usecase/usecase.dart';
import 'package:student/core/util/constant.dart';
import 'package:student/data/datasourse/local/local_data_source.dart';
import 'package:student/di/injection.dart';
import 'package:student/domain/usecase/common/check_auth.dart';
import 'package:student/domain/usecase/common/logout.dart';
import 'package:student/domain/usecase/common/refresh_token.dart';

part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_bloc.freezed.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc(this._checkAuth, this._logout, this._refresh)
      : super(SplashState.initial());
  final CheckAuth _checkAuth;
  final Logout _logout;
  final RefreshToken _refresh;
  @override
  Stream<SplashState> mapEventToState(
    SplashEvent event,
  ) async* {
    yield* event.map(
      checkAuth: (e) async* {
        yield SplashState.loading();
        final _auth = await _checkAuth.call(NoParams());
        yield _auth.fold(
          (l) => SplashState.loggedOut(),
          (success) {
            if (success) {
              return SplashState.success();
            } else {
              return SplashState.loggedOut();
            }
          },
        );
      },
      loggout: (e) async* {
        yield SplashState.loading();
        final _out = await _logout.call(NoParams());
        yield _out.fold((l) {
          if (l == UNAUTHENTICATED_FAILURE_MESSAGE) {
            getIt<LocalDataSource>().clearPrefs();
            return SplashState.loggedOut();
          } else {
            return SplashState.error(message: l);
          }
        }, (r) => SplashState.loggedOut());
      },
      refresh: (e) async* {
        yield SplashState.loading();
        final _ref = await _refresh.call(NoParams());
        yield _ref.fold(
          (l) {
            if (l == UNAUTHENTICATED_FAILURE_MESSAGE) {
              getIt<LocalDataSource>().clearPrefs();
              return SplashState.loggedOut();
            } else {
              return SplashState.error(message: l);
            }
          },
          (r) => SplashState.success(),
        );
      },
    );
  }
}
