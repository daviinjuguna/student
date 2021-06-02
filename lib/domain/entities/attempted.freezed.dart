// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'attempted.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AttemptedTearOff {
  const _$AttemptedTearOff();

  _Attempted call(
      {required int id, required int grade, required int complete}) {
    return _Attempted(
      id: id,
      grade: grade,
      complete: complete,
    );
  }
}

/// @nodoc
const $Attempted = _$AttemptedTearOff();

/// @nodoc
mixin _$Attempted {
  int get id => throw _privateConstructorUsedError;
  int get grade => throw _privateConstructorUsedError;
  int get complete => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AttemptedCopyWith<Attempted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttemptedCopyWith<$Res> {
  factory $AttemptedCopyWith(Attempted value, $Res Function(Attempted) then) =
      _$AttemptedCopyWithImpl<$Res>;
  $Res call({int id, int grade, int complete});
}

/// @nodoc
class _$AttemptedCopyWithImpl<$Res> implements $AttemptedCopyWith<$Res> {
  _$AttemptedCopyWithImpl(this._value, this._then);

  final Attempted _value;
  // ignore: unused_field
  final $Res Function(Attempted) _then;

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
abstract class _$AttemptedCopyWith<$Res> implements $AttemptedCopyWith<$Res> {
  factory _$AttemptedCopyWith(
          _Attempted value, $Res Function(_Attempted) then) =
      __$AttemptedCopyWithImpl<$Res>;
  @override
  $Res call({int id, int grade, int complete});
}

/// @nodoc
class __$AttemptedCopyWithImpl<$Res> extends _$AttemptedCopyWithImpl<$Res>
    implements _$AttemptedCopyWith<$Res> {
  __$AttemptedCopyWithImpl(_Attempted _value, $Res Function(_Attempted) _then)
      : super(_value, (v) => _then(v as _Attempted));

  @override
  _Attempted get _value => super._value as _Attempted;

  @override
  $Res call({
    Object? id = freezed,
    Object? grade = freezed,
    Object? complete = freezed,
  }) {
    return _then(_Attempted(
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

class _$_Attempted implements _Attempted {
  _$_Attempted({required this.id, required this.grade, required this.complete});

  @override
  final int id;
  @override
  final int grade;
  @override
  final int complete;

  @override
  String toString() {
    return 'Attempted(id: $id, grade: $grade, complete: $complete)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Attempted &&
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
  _$AttemptedCopyWith<_Attempted> get copyWith =>
      __$AttemptedCopyWithImpl<_Attempted>(this, _$identity);
}

abstract class _Attempted implements Attempted {
  factory _Attempted(
      {required int id,
      required int grade,
      required int complete}) = _$_Attempted;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  int get grade => throw _privateConstructorUsedError;
  @override
  int get complete => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AttemptedCopyWith<_Attempted> get copyWith =>
      throw _privateConstructorUsedError;
}
