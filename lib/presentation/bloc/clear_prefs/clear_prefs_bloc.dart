import 'dart:async';

import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:student/core/usecase/usecase.dart';
import 'package:student/domain/usecase/common/clear_prefs.dart';

part 'clear_prefs_event.dart';
part 'clear_prefs_state.dart';
part 'clear_prefs_bloc.freezed.dart';

@injectable
class ClearPrefsBloc extends Bloc<ClearPrefsEvent, ClearPrefsState> {
  ClearPrefsBloc(this._prefs) : super(ClearPrefsState.initial());

  final ClearPrefs _prefs;

  @override
  Stream<ClearPrefsState> mapEventToState(
    ClearPrefsEvent event,
  ) async* {
    yield* event.map(
      clearPrefs: (e) async* {
        final cleared = await _prefs.call(NoParams());
        yield cleared.fold(
          (l) => ClearPrefsState.error(),
          (r) => ClearPrefsState.success(),
        );
      },
    );
  }
}
