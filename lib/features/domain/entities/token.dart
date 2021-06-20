import 'package:freezed_annotation/freezed_annotation.dart';

part 'token.freezed.dart';

@freezed
class Token with _$Token {
  const Token._();
  factory Token({
    required String tokenType,
    required int expiresIn,
    required String accessToken,
    required String refreshToken,
  }) = _Token;
}
