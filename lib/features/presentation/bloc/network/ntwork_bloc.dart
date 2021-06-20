import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:student/core/usecase/usecase.dart';
import 'package:student/features/domain/usecase/common/check_connection.dart';

part 'ntwork_bloc.freezed.dart';
part 'ntwork_event.dart';
part 'ntwork_state.dart';

@injectable
class NtworkBloc extends Bloc<NtworkEvent, NtworkState> {
  NtworkBloc(
    this._checkConnection,
  ) : super(NtworkState.initial());

  final CheckConnection _checkConnection;

  @override
  Future<void> close() async {
    await _netSubscription?.cancel();
    return super.close();
  }

  StreamSubscription<Either<String, bool>>? _netSubscription;

  @override
  Stream<NtworkState> mapEventToState(NtworkEvent gEvent) async* {
    yield* gEvent.map(
      startet: (e) async* {
        await _netSubscription?.cancel();
        _netSubscription = _checkConnection
            .call(NoParams())
            .listen((nets) => add(NtworkEvent.received(nets)));
      },
      received: (e) async* {
        yield NtworkState.loadInProgress();
        yield e.nets.fold(
          (f) => NtworkState.loadFailure(f),
          (s) => NtworkState.loadSuccess(s),
        );
      },
    );
  }
}
