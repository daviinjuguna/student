import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:student/core/usecase/usecase.dart';
import 'package:student/domain/entities/assignment.dart';
import 'package:student/domain/repository/eshule_repository.dart';

@lazySingleton
class GetAssignment extends UseCase<KtList<Assignment>, ParamsId> {
  GetAssignment(this._repository);

  @override
  Future<Either<String, KtList<Assignment>>> call(ParamsId params) {
    return _repository.getAssignment(courseId: params.id);
  }

  final Repository _repository;
}
