// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'attempted_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AttemptedModel _$AttemptedModelFromJson(Map<String, dynamic> json) {
  return _AttemptedModel.fromJson(json);
}

/// @nodoc
class _$AttemptedModelTearOff {
  const _$AttemptedModelTearOff();

  _AttemptedModel call(
      {@JsonKey(name: "id", required: true) required int id,
      @JsonKey(name: "grade", required: true) required int grade,
      @JsonKey(name: "complete", required: true) required int complete}) {
    return _AttemptedModel(
      id: id,
      grade: grade,
      complete: complete,
    );
  }

  AttemptedModel fromJson(Map<String, Object> json) {
    return AttemptedModel.fromJson(json);
  }
}

/// @nodoc
const $AttemptedModel = _$AttemptedModelTearOff();

/// @nodoc
mixin _$AttemptedModel {
  @JsonKey(name: "id", required: true)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "grade", required: true)
  int get grade => throw _privateConstructorUsedError;
  @JsonKey(name: "complete", required: true)
  int get complete => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttemptedModelCopyWith<AttemptedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttemptedModelCopyWith<$Res> {
  factory $AttemptedModelCopyWith(
          AttemptedModel value, $Res Function(AttemptedModel) then) =
      _$AttemptedModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id", required: true) int id,
      @JsonKey(name: "grade", required: true) int grade,
      @JsonKey(name: "complete", required: true) int complete});
}

/// @nodoc
class _$AttemptedModelCopyWithImpl<$Res>
    implements $AttemptedModelCopyWith<$Res> {
  _$AttemptedModelCopyWithImpl(this._value, this._then);

  final AttemptedModel _value;
  // ignore: unused_field
  final $Res Function(AttemptedModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? grade = freezed,
    Object? complete = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      grade: grade == freezed
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as int,
      complete: complete == freezed
          ? _value.complete
          : complete // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$AttemptedModelCopyWith<$Res>
    implements $AttemptedModelCopyWith<$Res> {
  factory _$AttemptedModelCopyWith(
          _AttemptedModel value, $Res Function(_AttemptedModel) then) =
      __$AttemptedModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id", required: true) int id,
      @JsonKey(name: "grade", required: true) int grade,
      @JsonKey(name: "complete", required: true) int complete});
}

/// @nodoc
class __$AttemptedModelCopyWithImpl<$Res>
    extends _$AttemptedModelCopyWithImpl<$Res>
    implements _$AttemptedModelCopyWith<$Res> {
  __$AttemptedModelCopyWithImpl(
      _AttemptedModel _value, $Res Function(_AttemptedModel) _then)
      : super(_value, (v) => _then(v as _AttemptedModel));

  @override
  _AttemptedModel get _value => super._value as _AttemptedModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? grade = freezed,
    Object? complete = freezed,
  }) {
    return _then(_AttemptedModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      grade: grade == freezed
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as int,
      complete: complete == freezed
          ? _value.complete
          : complete // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AttemptedModel implements _AttemptedModel {
  _$_AttemptedModel(
      {@JsonKey(name: "id", required: true) required this.id,
      @JsonKey(name: "grade", required: true) required this.grade,
      @JsonKey(name: "complete", required: true) required this.complete});

  factory _$_AttemptedModel.fromJson(Map<String, dynamic> json) =>
      _$_$_AttemptedModelFromJson(json);

  @override
  @JsonKey(name: "id", required: true)
  final int id;
  @override
  @JsonKey(name: "grade", required: true)
  final int grade;
  @override
  @JsonKey(name: "complete", required: true)
  final int complete;

  @override
  String toString() {
    return 'AttemptedModel(id: $id, grade: $grade, complete: $complete)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AttemptedModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.grade, grade) ||
                const DeepCollectionEquality().equals(other.grade, grade)) &&
            (identical(other.complete, complete) ||
                const DeepCollectionEquality()
                    .equals(other.complete, complete)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(grade) ^
      const DeepCollectionEquality().hash(complete);

  @JsonKey(ignore: true)
  @override
  _$AttemptedModelCopyWith<_AttemptedModel> get copyWith =>
      __$AttemptedModelCopyWithImpl<_AttemptedModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AttemptedModelToJson(this);
  }
}

abstract class _AttemptedModel implements AttemptedModel {
  factory _AttemptedModel(
          {@JsonKey(name: "id", required: true) required int id,
          @JsonKey(name: "grade", required: true) required int grade,
          @JsonKey(name: "complete", required: true) required int complete}) =
      _$_AttemptedModel;

  factory _AttemptedModel.fromJson(Map<String, dynamic> json) =
      _$_AttemptedModel.fromJson;

  @override
  @JsonKey(name: "id", required: true)
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "grade", required: true)
  int get grade => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "complete", required: true)
  int get complete => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AttemptedModelCopyWith<_AttemptedModel> get copyWith =>
      throw _privateConstructorUsedError;
}
