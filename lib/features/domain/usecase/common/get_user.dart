import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';
import 'package:student/core/usecase/usecase.dart';
import 'package:student/features/domain/entities/user.dart';
import 'package:student/features/domain/repository/eshule_repository.dart';

@lazySingleton
class GetUser extends UseCase<User, NoParams> {
  GetUser(this._repository);

  @override
  Future<Either<String, User>> call(NoParams params) {
    return _repository.getUser();
  }

  final Repository _repository;
}
