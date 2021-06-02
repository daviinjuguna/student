// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'assignment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AssignmentTearOff {
  const _$AssignmentTearOff();

  _Assignment call(
      {required int id,
      required String title,
      required int questions,
      Attempted? attempted}) {
    return _Assignment(
      id: id,
      title: title,
      questions: questions,
      attempted: attempted,
    );
  }
}

/// @nodoc
const $Assignment = _$AssignmentTearOff();

/// @nodoc
mixin _$Assignment {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get questions => throw _privateConstructorUsedError; // int attempts,
  Attempted? get attempted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AssignmentCopyWith<Assignment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignmentCopyWith<$Res> {
  factory $AssignmentCopyWith(
          Assignment value, $Res Function(Assignment) then) =
      _$AssignmentCopyWithImpl<$Res>;
  $Res call({int id, String title, int questions, Attempted? attempted});

  $AttemptedCopyWith<$Res>? get attempted;
}

/// @nodoc
class _$AssignmentCopyWithImpl<$Res> implements $AssignmentCopyWith<$Res> {
  _$AssignmentCopyWithImpl(this._value, this._then);

  final Assignment _value;
  // ignore: unused_field
  final $Res Function(Assignment) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? questions = freezed,
    Object? attempted = freezed,
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
      questions: questions == freezed
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as int,
      attempted: attempted == freezed
          ? _value.attempted
          : attempted // ignore: cast_nullable_to_non_nullable
              as Attempted?,
    ));
  }

  @override
  $AttemptedCopyWith<$Res>? get attempted {
    if (_value.attempted == null) {
      return null;
    }

    return $AttemptedCopyWith<$Res>(_value.attempted!, (value) {
      return _then(_value.copyWith(attempted: value));
    });
  }
}

/// @nodoc
abstract class _$AssignmentCopyWith<$Res> implements $AssignmentCopyWith<$Res> {
  factory _$AssignmentCopyWith(
          _Assignment value, $Res Function(_Assignment) then) =
      __$AssignmentCopyWithImpl<$Res>;
  @override
  $Res call({int id, String title, int questions, Attempted? attempted});

  @override
  $AttemptedCopyWith<$Res>? get attempted;
}

/// @nodoc
class __$AssignmentCopyWithImpl<$Res> extends _$AssignmentCopyWithImpl<$Res>
    implements _$AssignmentCopyWith<$Res> {
  __$AssignmentCopyWithImpl(
      _Assignment _value, $Res Function(_Assignment) _then)
      : super(_value, (v) => _then(v as _Assignment));

  @override
  _Assignment get _value => super._value as _Assignment;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? questions = freezed,
    Object? attempted = freezed,
  }) {
    return _then(_Assignment(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      questions: questions == freezed
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as int,
      attempted: attempted == freezed
          ? _value.attempted
          : attempted // ignore: cast_nullable_to_non_nullable
              as Attempted?,
    ));
  }
}

/// @nodoc

class _$_Assignment extends _Assignment {
  _$_Assignment(
      {required this.id,
      required this.title,
      required this.questions,
      this.attempted})
      : super._();

  @override
  final int id;
  @override
  final String title;
  @override
  final int questions;
  @override // int attempts,
  final Attempted? attempted;

  @override
  String toString() {
    return 'Assignment(id: $id, title: $title, questions: $questions, attempted: $attempted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Assignment &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.questions, questions) ||
                const DeepCollectionEquality()
                    .equals(other.questions, questions)) &&
            (identical(other.attempted, attempted) ||
                const DeepCollectionEquality()
                    .equals(other.attempted, attempted)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(questions) ^
      const DeepCollectionEquality().hash(attempted);

  @JsonKey(ignore: true)
  @override
  _$AssignmentCopyWith<_Assignment> get copyWith =>
      __$AssignmentCopyWithImpl<_Assignment>(this, _$identity);
}

abstract class _Assignment extends Assignment {
  factory _Assignment(
      {required int id,
      required String title,
      required int questions,
      Attempted? attempted}) = _$_Assignment;
  _Assignment._() : super._();

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  int get questions => throw _privateConstructorUsedError;
  @override // int attempts,
  Attempted? get attempted => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AssignmentCopyWith<_Assignment> get copyWith =>
      throw _privateConstructorUsedError;
}
