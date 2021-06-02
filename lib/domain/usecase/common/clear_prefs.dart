import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';
import 'package:student/core/usecase/usecase.dart';
import 'package:student/domain/repository/eshule_repository.dart';

@lazySingleton
class ClearPrefs extends UseCase<void, NoParams> {
  ClearPrefs(this._repository);

  @override
  Future<Either<String, void>> call(NoParams params) {
    return _repository.clearPrefs();
  }

  final Repository _repository;
}
