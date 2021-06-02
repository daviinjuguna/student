import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:student/domain/entities/user.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const UserModel._();
  factory UserModel({
    @JsonKey(name: "name", required: true) required String name,
    @JsonKey(name: "email", required: true) required String email,
    @JsonKey(name: "status", required: true) required String status,
    @JsonKey(name: "created_at", required: true) required String createdAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  factory UserModel.fromEntity(User user) => UserModel(
        name: user.name,
        email: user.email,
        status: user.status,
        createdAt: user.createdAt,
      );
}

extension UserModelX on UserModel {
  User toEntity() => User(
        name: name,
        email: email,
        status: status,
        createdAt: createdAt,
      );
}
