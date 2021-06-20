import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:student/core/usecase/usecase.dart';
import 'package:student/features/domain/entities/question.dart';
import 'package:student/features/domain/repository/eshule_repository.dart';

@lazySingleton
class GetQuestion extends UseCase<KtList<Question>, ParamsId> {
  final Repository _repository;

  GetQuestion(this._repository);

  @override
  Future<Either<String, KtList<Question>>> call(ParamsId params) {
    return _repository.getQuestion(assignmentId: params.id);
  }
}
