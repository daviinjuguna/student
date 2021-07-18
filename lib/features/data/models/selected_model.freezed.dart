// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'selected_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SelectedModel _$SelectedModelFromJson(Map<String, dynamic> json) {
  return _SelectedModel.fromJson(json);
}

/// @nodoc
class _$SelectedModelTearOff {
  const _$SelectedModelTearOff();

  _SelectedModel call({@JsonKey(name: "answer_id") required int answerId}) {
    return _SelectedModel(
      answerId: answerId,
    );
  }

  SelectedModel fromJson(Map<String, Object> json) {
    return SelectedModel.fromJson(json);
  }
}

/// @nodoc
const $SelectedModel = _$SelectedModelTearOff();

/// @nodoc
mixin _$SelectedModel {
  @JsonKey(name: "answer_id")
  int get answerId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectedModelCopyWith<SelectedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedModelCopyWith<$Res> {
  factory $SelectedModelCopyWith(
          SelectedModel value, $Res Function(SelectedModel) then) =
      _$SelectedModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "answer_id") int answerId});
}

/// @nodoc
class _$SelectedModelCopyWithImpl<$Res>
    implements $SelectedModelCopyWith<$Res> {
  _$SelectedModelCopyWithImpl(this._value, this._then);

  final SelectedModel _value;
  // ignore: unused_field
  final $Res Function(SelectedModel) _then;

  @override
  $Res call({
    Object? answerId = freezed,
  }) {
    return _then(_value.copyWith(
      answerId: answerId == freezed
          ? _value.answerId
          : answerId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$SelectedModelCopyWith<$Res>
    implements $SelectedModelCopyWith<$Res> {
  factory _$SelectedModelCopyWith(
          _SelectedModel value, $Res Function(_SelectedModel) then) =
      __$SelectedModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "answer_id") int answerId});
}

/// @nodoc
class __$SelectedModelCopyWithImpl<$Res>
    extends _$SelectedModelCopyWithImpl<$Res>
    implements _$SelectedModelCopyWith<$Res> {
  __$SelectedModelCopyWithImpl(
      _SelectedModel _value, $Res Function(_SelectedModel) _then)
      : super(_value, (v) => _then(v as _SelectedModel));

  @override
  _SelectedModel get _value => super._value as _SelectedModel;

  @override
  $Res call({
    Object? answerId = freezed,
  }) {
    return _then(_SelectedModel(
      answerId: answerId == freezed
          ? _value.answerId
          : answerId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SelectedModel implements _SelectedModel {
  _$_SelectedModel({@JsonKey(name: "answer_id") required this.answerId});

  factory _$_SelectedModel.fromJson(Map<String, dynamic> json) =>
      _$_$_SelectedModelFromJson(json);

  @override
  @JsonKey(name: "answer_id")
  final int answerId;

  @override
  String toString() {
    return 'SelectedModel(answerId: $answerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectedModel &&
            (identical(other.answerId, answerId) ||
                const DeepCollectionEquality()
                    .equals(other.answerId, answerId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(answerId);

  @JsonKey(ignore: true)
  @override
  _$SelectedModelCopyWith<_SelectedModel> get copyWith =>
      __$SelectedModelCopyWithImpl<_SelectedModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SelectedModelToJson(this);
  }
}

abstract class _SelectedModel implements SelectedModel {
  factory _SelectedModel({@JsonKey(name: "answer_id") required int answerId}) =
      _$_SelectedModel;

  factory _SelectedModel.fromJson(Map<String, dynamic> json) =
      _$_SelectedModel.fromJson;

  @override
  @JsonKey(name: "answer_id")
  int get answerId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SelectedModelCopyWith<_SelectedModel> get copyWith =>
      throw _privateConstructorUsedError;
}
