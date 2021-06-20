import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:student/core/usecase/usecase.dart';
import 'package:student/features/domain/usecase/common/check_battery.dart';

part 'battery_event.dart';
part 'battery_state.dart';
part 'battery_bloc.freezed.dart';

@injectable
class BatteryBloc extends Bloc<BatteryEvent, BatteryState> {
  BatteryBloc(this._checkBattery) : super(BatteryState.initial());

  final CheckBattery _checkBattery;

  @override
  Future<void> close() async {
    await _batterySubscription?.cancel();
    return super.close();
  }

  StreamSubscription<Either<String, String>>? _batterySubscription;

  @override
  Stream<BatteryState> mapEventToState(
    BatteryEvent event,
  ) async* {
    yield* event.map(started: (e) async* {
      await _batterySubscription?.cancel();
      _batterySubscription = _checkBattery
          .call(NoParams())
          .listen((bats) => add(BatteryEvent.received(bats: bats)));
    }, received: (e) async* {
      yield BatteryState.loadInProgress();
      yield e.bats.fold(
        (fail) => BatteryState.loadFailure(message: fail),
        (status) => BatteryState.loadSuccess(batteryStatus: status),
      );
    });
  }
}
