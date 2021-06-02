import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:student/domain/entities/course.dart';
import '../../domain/entities/user.dart';

import 'user_model.dart';

part 'course_model.freezed.dart';
part 'course_model.g.dart';

@freezed
class CourseModel with _$CourseModel {
  const CourseModel._();
  factory CourseModel({
    @JsonKey(name: "id", required: true) required int id,
    @JsonKey(name: "title", required: true) required String title,
    @JsonKey(name: "description", required: true) required String desc,
    @JsonKey(name: "photo", required: true) required String photo,
    @JsonKey(name: "application_count", required: false) int? appCount,
    @JsonKey(name: "applied", required: false) bool? applied,
    @JsonKey(name: "by", required: false) UserModel? teachedBy,
  }) = _CourseModel;

  factory CourseModel.fromJson(Map<String, dynamic> json) =>
      _$CourseModelFromJson(json);

  factory CourseModel.fromEntity(Course c) => CourseModel(
        id: c.id,
        title: c.title,
        desc: c.desc,
        photo: c.photo,
        appCount: c.appCount,
        applied: c.applied,
        teachedBy: c.teachedBy?.toModel(),
      );
}

extension CourseModelX on CourseModel {
  Course toEntity() => Course(
        id: id,
        title: title,
        desc: desc,
        photo: photo,
        appCount: appCount,
        applied: applied,
        teachedBy: teachedBy?.toEntity(),
      );
}
