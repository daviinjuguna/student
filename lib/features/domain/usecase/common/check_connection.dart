import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';
import 'package:student/core/usecase/usecase.dart';
import 'package:student/features/domain/repository/eshule_repository.dart';

@lazySingleton
class CheckConnection extends StreamUseCase<bool, NoParams> {
  CheckConnection(this._repository);

  @override
  Stream<Either<String, bool>> call(NoParams params) {
    return _repository.checkConnection();
  }

  final Repository _repository;
}
