import 'dart:async';

import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:student/core/usecase/usecase.dart';
import 'package:student/domain/entities/choice.dart';
import 'package:student/domain/usecase/common/get_choice.dart';

part 'get_choice_event.dart';
part 'get_choice_state.dart';
part 'get_choice_bloc.freezed.dart';

@injectable
class GetChoiceBloc extends Bloc<GetChoiceEvent, GetChoiceState> {
  GetChoiceBloc(
    this._choice,
  ) : super(GetChoiceState.initial());
  final GetChoice _choice;

  @override
  Stream<GetChoiceState> mapEventToState(
    GetChoiceEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        yield GetChoiceState.loading();
        final _choices = await _choice.call(ParamsId(id: e.id));
        yield _choices.fold(
          (l) => GetChoiceState.error(message: l),
          (r) => GetChoiceState.success(course: r),
        );
      },
    );
  }
}
