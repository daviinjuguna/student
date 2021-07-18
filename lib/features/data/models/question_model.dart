import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:student/features/data/models/selected_model.dart';
import 'package:student/features/domain/entities/question.dart';
import '../../domain/entities/choice.dart';

import 'choice_model.dart';

part 'question_model.freezed.dart';
part 'question_model.g.dart';

@freezed
class QuestionModel with _$QuestionModel {
  const QuestionModel._();
  factory QuestionModel({
    @JsonKey(name: "id", required: true) required int id,
    @JsonKey(name: "question", required: true) required String question,
    @JsonKey(name: 'choices', required: true)
        required List<ChoiceModel> choices,
    @JsonKey(name: "selected", includeIfNull: false)
        SelectedModel? selectedAnswer,
    @JsonKey(name: "answer_id") required int answerId,
  }) = _QuestionModel;

  factory QuestionModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionModelFromJson(json);

  factory QuestionModel.fromEntity(Question question) => QuestionModel(
        id: question.id,
        question: question.question,
        choices: question.choices.map((e) => e.toModel()).asList(),
        answerId: question.answerId,
      );
}

extension QuestionModelX on QuestionModel {
  Question toEntity() => Question(
        id: id,
        question: question,
        choices: choices.map((e) => e.toEntity()).toImmutableList(),
        selectedAnswerId: selectedAnswer?.answerId,
        answerId: answerId,
      );
}
