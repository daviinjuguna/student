import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:student/features/domain/entities/user.dart';

part 'course.freezed.dart';

@freezed
class Course with _$Course {
  const Course._();
  factory Course({
    required int id,
    required String title,
    required String desc,
    required String photo,
    int? appCount,
    bool? applied,
    User? teachedBy,
  }) = _Course;
}
