// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choice_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChoiceModel _$_$_ChoiceModelFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['id', 'title']);
  return _$_ChoiceModel(
    id: json['id'] as int,
    title: json['title'] as String,
  );
}

Map<String, dynamic> _$_$_ChoiceModelToJson(_$_ChoiceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
    };
