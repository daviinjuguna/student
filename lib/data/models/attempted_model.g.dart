// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attempted_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AttemptedModel _$_$_AttemptedModelFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['id', 'grade', 'complete']);
  return _$_AttemptedModel(
    id: json['id'] as int,
    grade: json['grade'] as int,
    complete: json['complete'] as int,
  );
}

Map<String, dynamic> _$_$_AttemptedModelToJson(_$_AttemptedModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'grade': instance.grade,
      'complete': instance.complete,
    };
