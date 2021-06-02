import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:student/domain/entities/assignment.dart';
import '../../domain/entities/attempted.dart';

import 'attempted_model.dart';

part 'assignment_model.freezed.dart';
part 'assignment_model.g.dart';

@freezed
class AssignmentModel with _$AssignmentModel {
  const AssignmentModel._();
  factory AssignmentModel({
    @JsonKey(name: "id", required: true) required int id,
    @JsonKey(name: "title", required: true) required String title,
    @JsonKey(name: "question_count", required: true) required int questions,
    // @JsonKey(name: "total_attempts", ignore: true, includeIfNull: false)
    //     int attempts,
    @JsonKey(name: "attempted", includeIfNull: false) AttemptedModel? attempted,
    //TODO add graged
  }) = _AssignmentModel;

  factory AssignmentModel.fromJson(Map<String, dynamic> json) =>
      _$AssignmentModelFromJson(json);

  factory AssignmentModel.fromEntity(Assignment a) => AssignmentModel(
        id: a.id,
        title: a.title,
        questions: a.questions,
        // attempts: a.attempts,
        attempted: a.attempted != null ? a.attempted!.toModel() : null,
      );
}

extension AssignmentModelX on AssignmentModel {
  Assignment toEntity() => Assignment(
        id: id,
        title: title,
        questions: questions,
        // attempts: attempts,
        attempted: attempted != null ? attempted!.toEntity() : null,
      );
}
