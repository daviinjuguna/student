// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'success_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SuccessModel _$SuccessModelFromJson(Map<String, dynamic> json) {
  return _SuccessModel.fromJson(json);
}

/// @nodoc
class _$SuccessModelTearOff {
  const _$SuccessModelTearOff();

  _SuccessModel call({required bool success, required String message}) {
    return _SuccessModel(
      success: success,
      message: message,
    );
  }

  SuccessModel fromJson(Map<String, Object> json) {
    return SuccessModel.fromJson(json);
  }
}

/// @nodoc
const $SuccessModel = _$SuccessModelTearOff();

/// @nodoc
mixin _$SuccessModel {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuccessModelCopyWith<SuccessModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessModelCopyWith<$Res> {
  factory $SuccessModelCopyWith(
          SuccessModel value, $Res Function(SuccessModel) then) =
      _$SuccessModelCopyWithImpl<$Res>;
  $Res call({bool success, String message});
}

/// @nodoc
class _$SuccessModelCopyWithImpl<$Res> implements $SuccessModelCopyWith<$Res> {
  _$SuccessModelCopyWithImpl(this._value, this._then);

  final SuccessModel _value;
  // ignore: unused_field
  final $Res Function(SuccessModel) _then;

  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SuccessModelCopyWith<$Res>
    implements $SuccessModelCopyWith<$Res> {
  factory _$SuccessModelCopyWith(
          _SuccessModel value, $Res Function(_SuccessModel) then) =
      __$SuccessModelCopyWithImpl<$Res>;
  @override
  $Res call({bool success, String message});
}

/// @nodoc
class __$SuccessModelCopyWithImpl<$Res> extends _$SuccessModelCopyWithImpl<$Res>
    implements _$SuccessModelCopyWith<$Res> {
  __$SuccessModelCopyWithImpl(
      _SuccessModel _value, $Res Function(_SuccessModel) _then)
      : super(_value, (v) => _then(v as _SuccessModel));

  @override
  _SuccessModel get _value => super._value as _SuccessModel;

  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
  }) {
    return _then(_SuccessModel(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SuccessModel extends _SuccessModel {
  _$_SuccessModel({required this.success, required this.message}) : super._();

  factory _$_SuccessModel.fromJson(Map<String, dynamic> json) =>
      _$_$_SuccessModelFromJson(json);

  @override
  final bool success;
  @override
  final String message;

  @override
  String toString() {
    return 'SuccessModel(success: $success, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SuccessModel &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$SuccessModelCopyWith<_SuccessModel> get copyWith =>
      __$SuccessModelCopyWithImpl<_SuccessModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SuccessModelToJson(this);
  }
}

abstract class _SuccessModel extends SuccessModel {
  factory _SuccessModel({required bool success, required String message}) =
      _$_SuccessModel;
  _SuccessModel._() : super._();

  factory _SuccessModel.fromJson(Map<String, dynamic> json) =
      _$_SuccessModel.fromJson;

  @override
  bool get success => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SuccessModelCopyWith<_SuccessModel> get copyWith =>
      throw _privateConstructorUsedError;
}
