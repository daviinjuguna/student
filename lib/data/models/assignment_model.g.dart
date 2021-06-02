// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assignment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AssignmentModel _$_$_AssignmentModelFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['id', 'title', 'question_count']);
  return _$_AssignmentModel(
    id: json['id'] as int,
    title: json['title'] as String,
    questions: json['question_count'] as int,
    attempted: json['attempted'] == null
        ? null
        : AttemptedModel.fromJson(json['attempted'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_AssignmentModelToJson(_$_AssignmentModel instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'title': instance.title,
    'question_count': instance.questions,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('attempted', instance.attempted);
  return val;
}
