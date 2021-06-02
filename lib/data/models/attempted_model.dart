import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:student/domain/entities/attempted.dart';

part 'attempted_model.freezed.dart';
part 'attempted_model.g.dart';

@freezed
class AttemptedModel with _$AttemptedModel {
  factory AttemptedModel({
    @JsonKey(name: "id", required: true) required int id,
    @JsonKey(name: "grade", required: true) required int grade,
    @JsonKey(name: "complete", required: true) required int complete,
  }) = _AttemptedModel;

  factory AttemptedModel.fromJson(Map<String, dynamic> json) =>
      _$AttemptedModelFromJson(json);

  factory AttemptedModel.fromEntity(Attempted attempt) => AttemptedModel(
        id: attempt.id,
        grade: attempt.grade,
        complete: attempt.complete,
      );
}

extension AttemptedModelX on AttemptedModel {
  Attempted toEntity() => Attempted(
        id: id,
        grade: grade,
        complete: complete,
      );
}
