import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';
import 'package:student/core/usecase/usecase.dart';
import 'package:student/domain/repository/eshule_repository.dart';

@lazySingleton
class Logout extends UseCase<void, NoParams> {
  Logout(this._repository);

  @override
  Future<Either<String, void>> call(NoParams params) {
    return _repository.logout();
  }

  final Repository _repository;
}
