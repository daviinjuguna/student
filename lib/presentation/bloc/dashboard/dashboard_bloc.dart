import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:student/core/usecase/usecase.dart';
import 'package:student/domain/entities/course.dart';
import 'package:student/domain/usecase/common/get_course.dart';

part 'dashboard_bloc.freezed.dart';
part 'dashboard_event.dart';
part 'dashboard_state.dart';

@injectable
class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc(this._course) : super(DashboardState.initial());
  final GetCourse _course;

  @override
  Stream<DashboardState> mapEventToState(
    DashboardEvent event,
  ) async* {
    yield* event.map(
      getCourse: (e) async* {
        yield DashboardState.loading();
        final _result = await _course.call(NoParams());
        yield _result.fold(
          (l) => DashboardState.error(message: l),
          (course) => DashboardState.success(course: course),
        );
      },
      update: (e) async* {
        yield DashboardState.updating(course: e.course);
        final _result = await _course.call(NoParams());
        yield _result.fold(
          (error) => DashboardState.success(course: e.course),
          (course) => DashboardState.success(course: course),
        );
      },
    );
  }
}
