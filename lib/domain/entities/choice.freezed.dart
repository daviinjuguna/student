// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'choice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChoiceTearOff {
  const _$ChoiceTearOff();

  _Choice call({required int id, required String title}) {
    return _Choice(
      id: id,
      title: title,
    );
  }
}

/// @nodoc
const $Choice = _$ChoiceTearOff();

/// @nodoc
mixin _$Choice {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChoiceCopyWith<Choice> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoiceCopyWith<$Res> {
  factory $ChoiceCopyWith(Choice value, $Res Function(Choice) then) =
      _$ChoiceCopyWithImpl<$Res>;
  $Res call({int id, String title});
}

/// @nodoc
class _$ChoiceCopyWithImpl<$Res> implements $ChoiceCopyWith<$Res> {
  _$ChoiceCopyWithImpl(this._value, this._then);

  final Choice _value;
  // ignore: unused_field
  final $Res Function(Choice) _then;

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
abstract class _$ChoiceCopyWith<$Res> implements $ChoiceCopyWith<$Res> {
  factory _$ChoiceCopyWith(_Choice value, $Res Function(_Choice) then) =
      __$ChoiceCopyWithImpl<$Res>;
  @override
  $Res call({int id, String title});
}

/// @nodoc
class __$ChoiceCopyWithImpl<$Res> extends _$ChoiceCopyWithImpl<$Res>
    implements _$ChoiceCopyWith<$Res> {
  __$ChoiceCopyWithImpl(_Choice _value, $Res Function(_Choice) _then)
      : super(_value, (v) => _then(v as _Choice));

  @override
  _Choice get _value => super._value as _Choice;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_Choice(
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

class _$_Choice extends _Choice {
  _$_Choice({required this.id, required this.title}) : super._();

  @override
  final int id;
  @override
  final String title;

  @override
  String toString() {
    return 'Choice(id: $id, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Choice &&
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
  _$ChoiceCopyWith<_Choice> get copyWith =>
      __$ChoiceCopyWithImpl<_Choice>(this, _$identity);
}

abstract class _Choice extends Choice {
  factory _Choice({required int id, required String title}) = _$_Choice;
  _Choice._() : super._();

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChoiceCopyWith<_Choice> get copyWith => throw _privateConstructorUsedError;
}
