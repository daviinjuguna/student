import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';
import 'package:student/core/usecase/usecase.dart';
import 'package:student/features/domain/entities/token.dart';
import 'package:student/features/domain/repository/eshule_repository.dart';

@lazySingleton
class Register extends UseCase<Token, RegisterParams> {
  Register(this._repository);

  @override
  Future<Either<String, Token>> call(RegisterParams p) {
    return _repository.register(
      name: p._name,
      email: p._email,
      password: p._password,
      confirmPassword: p._confirmPassword,
    );
  }

  final Repository _repository;
}

class RegisterParams {
  final String _name;
  final String _email;
  final String _password;
  final String _confirmPassword;
  RegisterParams({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  })  : _name = name,
        _email = email,
        _password = password,
        _confirmPassword = confirmPassword;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is RegisterParams &&
        other._name == _name &&
        other._email == _email &&
        other._password == _password &&
        other._confirmPassword == _confirmPassword;
  }

  @override
  int get hashCode {
    return _name.hashCode ^
        _email.hashCode ^
        _password.hashCode ^
        _confirmPassword.hashCode;
  }

  RegisterParams copyWith({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  }) {
    return RegisterParams(
      name: _name,
      email: _email,
      password: _password,
      confirmPassword: _confirmPassword,
    );
  }

  @override
  String toString() {
    return 'RegisterParams(name: $_name, email: $_email, password: $_password, confirmPassword: $_confirmPassword)';
  }
}
