import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';
import 'package:student/core/usecase/usecase.dart';
import 'package:student/features/domain/entities/token.dart';
import 'package:student/features/domain/repository/eshule_repository.dart';

@lazySingleton
class RefreshToken extends UseCase<Token, NoParams> {
  RefreshToken(this._repository);

  @override
  Future<Either<String, Token>> call(NoParams p) {
    return _repository.refreshToken();
  }

  final Repository _repository;
}
