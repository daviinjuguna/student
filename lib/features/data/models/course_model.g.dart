// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CourseModel _$_$_CourseModelFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['id', 'title', 'description', 'photo']);
  return _$_CourseModel(
    id: json['id'] as int,
    title: json['title'] as String,
    desc: json['description'] as String,
    photo: json['photo'] as String,
    appCount: json['application_count'] as int?,
    applied: json['applied'] as bool?,
    teachedBy: json['by'] == null
        ? null
        : UserModel.fromJson(json['by'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_CourseModelToJson(_$_CourseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.desc,
      'photo': instance.photo,
      'application_count': instance.appCount,
      'applied': instance.applied,
      'by': instance.teachedBy,
    };
