import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import 'choice.dart';

part 'question.freezed.dart';

@freezed
class Question with _$Question {
  const Question._();
  factory Question({
    required int id,
    required String question,
    required KtList<Choice> choices,
  }) = _Question;
}
