import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:student/features/data/models/user_model.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const User._();
  factory User({
    required String name,
    required String email,
    required String status,
    required String createdAt,
  }) = _User;

  factory User.fromModel(UserModel user) => User(
        name: user.name,
        email: user.email,
        status: user.status,
        createdAt: user.createdAt,
      );
}

extension UserX on User {
  UserModel toModel() => UserModel(
        name: name,
        email: email,
        status: status,
        createdAt: createdAt,
      );
}
