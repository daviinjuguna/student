import 'dart:convert';

import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';
import 'package:student/core/usecase/usecase.dart';
import 'package:student/features/domain/entities/success.dart';
import 'package:student/features/domain/repository/eshule_repository.dart';

@lazySingleton
class AnswerQuestion extends UseCase<Success, AnswerQuestionParams> {
  AnswerQuestion(this._repository);

  @override
  Future<Either<String, Success>> call(AnswerQuestionParams p) {
    return _repository.attemptQuestion(
      questionId: p.questionId,
      answerId: p.answerId,
    );
  }

  final Repository _repository;
}

class AnswerQuestionParams {
  final int questionId;
  final int answerId;
  AnswerQuestionParams({
    required this.questionId,
    required this.answerId,
  });

  AnswerQuestionParams copyWith({
    int? questionId,
    int? answerId,
  }) {
    return AnswerQuestionParams(
      questionId: questionId ?? this.questionId,
      answerId: answerId ?? this.answerId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'questionId': questionId,
      'answerId': answerId,
    };
  }

  factory AnswerQuestionParams.fromMap(Map<String, dynamic> map) {
    return AnswerQuestionParams(
      questionId: map['questionId'],
      answerId: map['answerId'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AnswerQuestionParams.fromJson(String source) =>
      AnswerQuestionParams.fromMap(json.decode(source));

  @override
  String toString() =>
      'AnswerQuestionParams(questionId: $questionId, answerId: $answerId)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AnswerQuestionParams &&
        other.questionId == questionId &&
        other.answerId == answerId;
  }

  @override
  int get hashCode => questionId.hashCode ^ answerId.hashCode;
}
