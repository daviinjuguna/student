import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';
import 'package:student/core/usecase/usecase.dart';
import 'package:student/domain/entities/token.dart';
import 'package:student/domain/repository/eshule_repository.dart';

@lazySingleton
class Login extends UseCase<Token, LoginParams> {
  Login(this._repository);

  @override
  Future<Either<String, Token>> call(LoginParams p) {
    return _repository.login(email: p._email, password: p._password);
  }

  final Repository _repository;
}

class LoginParams {
  final String _password;
  final String _email;

  LoginParams({
    required String password,
    required String email,
  })  : _email = email,
        _password = password;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LoginParams &&
        other._password == _password &&
        other._email == _email;
  }

  @override
  int get hashCode => _password.hashCode ^ _email.hashCode;

  @override
  String toString() => 'LoginParams(pass: $_password, email: $_email)';
}
