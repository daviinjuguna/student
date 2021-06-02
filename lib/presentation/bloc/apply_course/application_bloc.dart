import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:student/core/usecase/usecase.dart';
import 'package:student/domain/usecase/student/apply_course.dart';
import 'package:student/domain/usecase/student/unnaply_course.dart';

part 'application_bloc.freezed.dart';
part 'application_event.dart';
part 'application_state.dart';

@injectable
class ApplicationBloc extends Bloc<ApplicationEvent, ApplicationState> {
  ApplicationBloc(this._apply, this._unaaply)
      : super(ApplicationState.initial());

  final ApplyCourse _apply;
  final UnapplyCourse _unaaply;

  @override
  Stream<ApplicationState> mapEventToState(
    ApplicationEvent event,
  ) async* {
    yield* event.map(
      apply: (e) async* {
        yield ApplicationState.loading();
        final _applied = await _apply.call(ParamsId(id: e.courseId));
        yield _applied.fold(
          (l) => ApplicationState.error(message: l),
          (r) => ApplicationState.success(),
        );
      },
      unapply: (e) async* {
        yield ApplicationState.loading();
        final _unapplied = await _unaaply.call(ParamsId(id: e.courseId));
        yield _unapplied.fold(
          (l) => ApplicationState.error(message: l),
          (r) => ApplicationState.success(),
        );
      },
    );
  }
}
