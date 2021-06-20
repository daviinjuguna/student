import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';
import 'package:student/core/usecase/usecase.dart';
import 'package:student/features/domain/entities/success.dart';
import 'package:student/features/domain/repository/eshule_repository.dart';

@lazySingleton
class UnapplyCourse extends UseCase<Success, ParamsId> {
  UnapplyCourse(this._repository);

  @override
  Future<Either<String, Success>> call(ParamsId params) {
    return _repository.unapplyCourse(courseId: params.id);
  }

  final Repository _repository;
}
