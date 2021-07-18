// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuestionModel _$_$_QuestionModelFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['id', 'question', 'choices']);
  return _$_QuestionModel(
    id: json['id'] as int,
    question: json['question'] as String,
    choices: (json['choices'] as List<dynamic>)
        .map((e) => ChoiceModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    selectedAnswer: json['selected'] == null
        ? null
        : SelectedModel.fromJson(json['selected'] as Map<String, dynamic>),
    answerId: json['answer_id'] as int,
  );
}

Map<String, dynamic> _$_$_QuestionModelToJson(_$_QuestionModel instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'question': instance.question,
    'choices': instance.choices,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('selected', instance.selectedAnswer);
  val['answer_id'] = instance.answerId;
  return val;
}
