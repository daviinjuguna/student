// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TokenTearOff {
  const _$TokenTearOff();

  _Token call(
      {required String tokenType,
      required int expiresIn,
      required String accessToken,
      required String refreshToken}) {
    return _Token(
      tokenType: tokenType,
      expiresIn: expiresIn,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );
  }
}

/// @nodoc
const $Token = _$TokenTearOff();

/// @nodoc
mixin _$Token {
  String get tokenType => throw _privateConstructorUsedError;
  int get expiresIn => throw _privateConstructorUsedError;
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TokenCopyWith<Token> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenCopyWith<$Res> {
  factory $TokenCopyWith(Token value, $Res Function(Token) then) =
      _$TokenCopyWithImpl<$Res>;
  $Res call(
      {String tokenType,
      int expiresIn,
      String accessToken,
      String refreshToken});
}

/// @nodoc
class _$TokenCopyWithImpl<$Res> implements $TokenCopyWith<$Res> {
  _$TokenCopyWithImpl(this._value, this._then);

  final Token _value;
  // ignore: unused_field
  final $Res Function(Token) _then;

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
abstract class _$TokenCopyWith<$Res> implements $TokenCopyWith<$Res> {
  factory _$TokenCopyWith(_Token value, $Res Function(_Token) then) =
      __$TokenCopyWithImpl<$Res>;
  @override
  $Res call(
      {String tokenType,
      int expiresIn,
      String accessToken,
      String refreshToken});
}

/// @nodoc
class __$TokenCopyWithImpl<$Res> extends _$TokenCopyWithImpl<$Res>
    implements _$TokenCopyWith<$Res> {
  __$TokenCopyWithImpl(_Token _value, $Res Function(_Token) _then)
      : super(_value, (v) => _then(v as _Token));

  @override
  _Token get _value => super._value as _Token;

  @override
  $Res call({
    Object? tokenType = freezed,
    Object? expiresIn = freezed,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_Token(
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

class _$_Token extends _Token {
  _$_Token(
      {required this.tokenType,
      required this.expiresIn,
      required this.accessToken,
      required this.refreshToken})
      : super._();

  @override
  final String tokenType;
  @override
  final int expiresIn;
  @override
  final String accessToken;
  @override
  final String refreshToken;

  @override
  String toString() {
    return 'Token(tokenType: $tokenType, expiresIn: $expiresIn, accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Token &&
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
  _$TokenCopyWith<_Token> get copyWith =>
      __$TokenCopyWithImpl<_Token>(this, _$identity);
}

abstract class _Token extends Token {
  factory _Token(
      {required String tokenType,
      required int expiresIn,
      required String accessToken,
      required String refreshToken}) = _$_Token;
  _Token._() : super._();

  @override
  String get tokenType => throw _privateConstructorUsedError;
  @override
  int get expiresIn => throw _privateConstructorUsedError;
  @override
  String get accessToken => throw _privateConstructorUsedError;
  @override
  String get refreshToken => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TokenCopyWith<_Token> get copyWith => throw _privateConstructorUsedError;
}
