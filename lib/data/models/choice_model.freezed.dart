// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'choice_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChoiceModel _$ChoiceModelFromJson(Map<String, dynamic> json) {
  return _ChoiceModel.fromJson(json);
}

/// @nodoc
class _$ChoiceModelTearOff {
  const _$ChoiceModelTearOff();

  _ChoiceModel call(
      {@JsonKey(name: "id", required: true) required int id,
      @JsonKey(name: "title", required: true) required String title}) {
    return _ChoiceModel(
      id: id,
      title: title,
    );
  }

  ChoiceModel fromJson(Map<String, Object> json) {
    return ChoiceModel.fromJson(json);
  }
}

/// @nodoc
const $ChoiceModel = _$ChoiceModelTearOff();

/// @nodoc
mixin _$ChoiceModel {
  @JsonKey(name: "id", required: true)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "title", required: true)
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChoiceModelCopyWith<ChoiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoiceModelCopyWith<$Res> {
  factory $ChoiceModelCopyWith(
          ChoiceModel value, $Res Function(ChoiceModel) then) =
      _$ChoiceModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id", required: true) int id,
      @JsonKey(name: "title", required: true) String title});
}

/// @nodoc
class _$ChoiceModelCopyWithImpl<$Res> implements $ChoiceModelCopyWith<$Res> {
  _$ChoiceModelCopyWithImpl(this._value, this._then);

  final ChoiceModel _value;
  // ignore: unused_field
  final $Res Function(ChoiceModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ChoiceModelCopyWith<$Res>
    implements $ChoiceModelCopyWith<$Res> {
  factory _$ChoiceModelCopyWith(
          _ChoiceModel value, $Res Function(_ChoiceModel) then) =
      __$ChoiceModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id", required: true) int id,
      @JsonKey(name: "title", required: true) String title});
}

/// @nodoc
class __$ChoiceModelCopyWithImpl<$Res> extends _$ChoiceModelCopyWithImpl<$Res>
    implements _$ChoiceModelCopyWith<$Res> {
  __$ChoiceModelCopyWithImpl(
      _ChoiceModel _value, $Res Function(_ChoiceModel) _then)
      : super(_value, (v) => _then(v as _ChoiceModel));

  @override
  _ChoiceModel get _value => super._value as _ChoiceModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_ChoiceModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChoiceModel extends _ChoiceModel {
  _$_ChoiceModel(
      {@JsonKey(name: "id", required: true) required this.id,
      @JsonKey(name: "title", required: true) required this.title})
      : super._();

  factory _$_ChoiceModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ChoiceModelFromJson(json);

  @override
  @JsonKey(name: "id", required: true)
  final int id;
  @override
  @JsonKey(name: "title", required: true)
  final String title;

  @override
  String toString() {
    return 'ChoiceModel(id: $id, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChoiceModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title);

  @JsonKey(ignore: true)
  @override
  _$ChoiceModelCopyWith<_ChoiceModel> get copyWith =>
      __$ChoiceModelCopyWithImpl<_ChoiceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ChoiceModelToJson(this);
  }
}

abstract class _ChoiceModel extends ChoiceModel {
  factory _ChoiceModel(
          {@JsonKey(name: "id", required: true) required int id,
          @JsonKey(name: "title", required: true) required String title}) =
      _$_ChoiceModel;
  _ChoiceModel._() : super._();

  factory _ChoiceModel.fromJson(Map<String, dynamic> json) =
      _$_ChoiceModel.fromJson;

  @override
  @JsonKey(name: "id", required: true)
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "title", required: true)
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChoiceModelCopyWith<_ChoiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
