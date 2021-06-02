import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';
import 'package:student/core/usecase/usecase.dart';
import 'package:student/domain/entities/success.dart';
import 'package:student/domain/repository/eshule_repository.dart';

@lazySingleton
class StartAssignment extends UseCase<Success, ParamsId> {
  StartAssignment(this._repository);

  @override
  Future<Either<String, Success>> call(ParamsId params) {
    return _repository.attemptAssignment(assignmentId: params.id);
  }

  final Repository _repository;
}
