// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'token_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TokenModel _$TokenModelFromJson(Map<String, dynamic> json) {
  return _TokenModel.fromJson(json);
}

/// @nodoc
class _$TokenModelTearOff {
  const _$TokenModelTearOff();

  _TokenModel call(
      {@JsonKey(name: "token_type", required: true)
          required String tokenType,
      @JsonKey(name: "expires_in", required: true)
          required int expiresIn,
      @JsonKey(name: "access_token", required: true)
          required String accessToken,
      @JsonKey(name: "refresh_token", required: true)
          required String refreshToken}) {
    return _TokenModel(
      tokenType: tokenType,
      expiresIn: expiresIn,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );
  }

  TokenModel fromJson(Map<String, Object> json) {
    return TokenModel.fromJson(json);
  }
}

/// @nodoc
const $TokenModel = _$TokenModelTearOff();

/// @nodoc
mixin _$TokenModel {
  @JsonKey(name: "token_type", required: true)
  String get tokenType => throw _privateConstructorUsedError;
  @JsonKey(name: "expires_in", required: true)
  int get expiresIn => throw _privateConstructorUsedError;
  @JsonKey(name: "access_token", required: true)
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: "refresh_token", required: true)
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenModelCopyWith<TokenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenModelCopyWith<$Res> {
  factory $TokenModelCopyWith(
          TokenModel value, $Res Function(TokenModel) then) =
      _$TokenModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "token_type", required: true) String tokenType,
      @JsonKey(name: "expires_in", required: true) int expiresIn,
      @JsonKey(name: "access_token", required: true) String accessToken,
      @JsonKey(name: "refresh_token", required: true) String refreshToken});
}

/// @nodoc
class _$TokenModelCopyWithImpl<$Res> implements $TokenModelCopyWith<$Res> {
  _$TokenModelCopyWithImpl(this._value, this._then);

  final TokenModel _value;
  // ignore: unused_field
  final $Res Function(TokenModel) _then;

  @override
  $Res call({
    Object? tokenType = freezed,
    Object? expiresIn = freezed,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_value.copyWith(
      tokenType: tokenType == freezed
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: expiresIn == freezed
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TokenModelCopyWith<$Res> implements $TokenModelCopyWith<$Res> {
  factory _$TokenModelCopyWith(
          _TokenModel value, $Res Function(_TokenModel) then) =
      __$TokenModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "token_type", required: true) String tokenType,
      @JsonKey(name: "expires_in", required: true) int expiresIn,
      @JsonKey(name: "access_token", required: true) String accessToken,
      @JsonKey(name: "refresh_token", required: true) String refreshToken});
}

/// @nodoc
class __$TokenModelCopyWithImpl<$Res> extends _$TokenModelCopyWithImpl<$Res>
    implements _$TokenModelCopyWith<$Res> {
  __$TokenModelCopyWithImpl(
      _TokenModel _value, $Res Function(_TokenModel) _then)
      : super(_value, (v) => _then(v as _TokenModel));

  @override
  _TokenModel get _value => super._value as _TokenModel;

  @override
  $Res call({
    Object? tokenType = freezed,
    Object? expiresIn = freezed,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_TokenModel(
      tokenType: tokenType == freezed
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: expiresIn == freezed
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokenModel extends _TokenModel {
  _$_TokenModel(
      {@JsonKey(name: "token_type", required: true)
          required this.tokenType,
      @JsonKey(name: "expires_in", required: true)
          required this.expiresIn,
      @JsonKey(name: "access_token", required: true)
          required this.accessToken,
      @JsonKey(name: "refresh_token", required: true)
          required this.refreshToken})
      : super._();

  factory _$_TokenModel.fromJson(Map<String, dynamic> json) =>
      _$_$_TokenModelFromJson(json);

  @override
  @JsonKey(name: "token_type", required: true)
  final String tokenType;
  @override
  @JsonKey(name: "expires_in", required: true)
  final int expiresIn;
  @override
  @JsonKey(name: "access_token", required: true)
  final String accessToken;
  @override
  @JsonKey(name: "refresh_token", required: true)
  final String refreshToken;

  @override
  String toString() {
    return 'TokenModel(tokenType: $tokenType, expiresIn: $expiresIn, accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TokenModel &&
            (identical(other.tokenType, tokenType) ||
                const DeepCollectionEquality()
                    .equals(other.tokenType, tokenType)) &&
            (identical(other.expiresIn, expiresIn) ||
                const DeepCollectionEquality()
                    .equals(other.expiresIn, expiresIn)) &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tokenType) ^
      const DeepCollectionEquality().hash(expiresIn) ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(refreshToken);

  @JsonKey(ignore: true)
  @override
  _$TokenModelCopyWith<_TokenModel> get copyWith =>
      __$TokenModelCopyWithImpl<_TokenModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TokenModelToJson(this);
  }
}

abstract class _TokenModel extends TokenModel {
  factory _TokenModel(
      {@JsonKey(name: "token_type", required: true)
          required String tokenType,
      @JsonKey(name: "expires_in", required: true)
          required int expiresIn,
      @JsonKey(name: "access_token", required: true)
          required String accessToken,
      @JsonKey(name: "refresh_token", required: true)
          required String refreshToken}) = _$_TokenModel;
  _TokenModel._() : super._();

  factory _TokenModel.fromJson(Map<String, dynamic> json) =
      _$_TokenModel.fromJson;

  @override
  @JsonKey(name: "token_type", required: true)
  String get tokenType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "expires_in", required: true)
  int get expiresIn => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "access_token", required: true)
  String get accessToken => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "refresh_token", required: true)
  String get refreshToken => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TokenModelCopyWith<_TokenModel> get copyWith =>
      throw _privateConstructorUsedError;
}
