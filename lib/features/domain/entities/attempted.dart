import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:student/features/data/models/attempted_model.dart';

part 'attempted.freezed.dart';

@freezed
class Attempted with _$Attempted {
  factory Attempted({
    required int id,
    required int grade,
    required int complete,
  }) = _Attempted;

  factory Attempted.fromModel(AttemptedModel attempt) => Attempted(
        id: attempt.id,
        grade: attempt.grade,
        complete: attempt.complete,
      );
}

extension AttemptedX on Attempted {
  AttemptedModel toModel() => AttemptedModel(
        id: id,
        grade: grade,
        complete: complete,
      );
}
