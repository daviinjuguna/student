import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:student/domain/entities/token.dart';

part 'token_model.freezed.dart';
part 'token_model.g.dart';

@freezed
class TokenModel with _$TokenModel {
  const TokenModel._();
  factory TokenModel({
    @JsonKey(name: "token_type", required: true) required String tokenType,
    @JsonKey(name: "expires_in", required: true) required int expiresIn,
    @JsonKey(name: "access_token", required: true) required String accessToken,
    @JsonKey(name: "refresh_token", required: true)
        required String refreshToken,
  }) = _TokenModel;

  factory TokenModel.fromJson(Map<String, dynamic> json) =>
      _$TokenModelFromJson(json);

  factory TokenModel.fromEntity(Token token) => TokenModel(
        tokenType: token.tokenType,
        expiresIn: token.expiresIn,
        accessToken: token.accessToken,
        refreshToken: token.refreshToken,
      );
}

extension TokenModelX on TokenModel {
  Token toEntity() => Token(
        tokenType: tokenType,
        expiresIn: expiresIn,
        accessToken: accessToken,
        refreshToken: refreshToken,
      );
}
