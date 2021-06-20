// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TokenModel _$_$_TokenModelFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const [
    'token_type',
    'expires_in',
    'access_token',
    'refresh_token'
  ]);
  return _$_TokenModel(
    tokenType: json['token_type'] as String,
    expiresIn: json['expires_in'] as int,
    accessToken: json['access_token'] as String,
    refreshToken: json['refresh_token'] as String,
  );
}

Map<String, dynamic> _$_$_TokenModelToJson(_$_TokenModel instance) =>
    <String, dynamic>{
      'token_type': instance.tokenType,
      'expires_in': instance.expiresIn,
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };
