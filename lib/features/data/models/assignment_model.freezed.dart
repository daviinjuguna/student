// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'assignment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AssignmentModel _$AssignmentModelFromJson(Map<String, dynamic> json) {
  return _AssignmentModel.fromJson(json);
}

/// @nodoc
class _$AssignmentModelTearOff {
  const _$AssignmentModelTearOff();

  _AssignmentModel call(
      {@JsonKey(name: "id", required: true)
          required int id,
      @JsonKey(name: "title", required: true)
          required String title,
      @JsonKey(name: "question_count", required: true)
          required int questions,
      @JsonKey(name: "attempted", includeIfNull: false)
          AttemptedModel? attempted}) {
    return _AssignmentModel(
      id: id,
      title: title,
      questions: questions,
      attempted: attempted,
    );
  }

  AssignmentModel fromJson(Map<String, Object> json) {
    return AssignmentModel.fromJson(json);
  }
}

/// @nodoc
const $AssignmentModel = _$AssignmentModelTearOff();

/// @nodoc
mixin _$AssignmentModel {
  @JsonKey(name: "id", required: true)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "title", required: true)
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "question_count", required: true)
  int get questions =>
      throw _privateConstructorUsedError; // @JsonKey(name: "total_attempts", ignore: true, includeIfNull: false)
//     int attempts,
  @JsonKey(name: "attempted", includeIfNull: false)
  AttemptedModel? get attempted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssignmentModelCopyWith<AssignmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignmentModelCopyWith<$Res> {
  factory $AssignmentModelCopyWith(
          AssignmentModel value, $Res Function(AssignmentModel) then) =
      _$AssignmentModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id", required: true)
          int id,
      @JsonKey(name: "title", required: true)
          String title,
      @JsonKey(name: "question_count", required: true)
          int questions,
      @JsonKey(name: "attempted", includeIfNull: false)
          AttemptedModel? attempted});

  $AttemptedModelCopyWith<$Res>? get attempted;
}

/// @nodoc
class _$AssignmentModelCopyWithImpl<$Res>
    implements $AssignmentModelCopyWith<$Res> {
  _$AssignmentModelCopyWithImpl(this._value, this._then);

  final AssignmentModel _value;
  // ignore: unused_field
  final $Res Function(AssignmentModel) _then;

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
              as AttemptedModel?,
    ));
  }

  @override
  $AttemptedModelCopyWith<$Res>? get attempted {
    if (_value.attempted == null) {
      return null;
    }

    return $AttemptedModelCopyWith<$Res>(_value.attempted!, (value) {
      return _then(_value.copyWith(attempted: value));
    });
  }
}

/// @nodoc
abstract class _$AssignmentModelCopyWith<$Res>
    implements $AssignmentModelCopyWith<$Res> {
  factory _$AssignmentModelCopyWith(
          _AssignmentModel value, $Res Function(_AssignmentModel) then) =
      __$AssignmentModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id", required: true)
          int id,
      @JsonKey(name: "title", required: true)
          String title,
      @JsonKey(name: "question_count", required: true)
          int questions,
      @JsonKey(name: "attempted", includeIfNull: false)
          AttemptedModel? attempted});

  @override
  $AttemptedModelCopyWith<$Res>? get attempted;
}

/// @nodoc
class __$AssignmentModelCopyWithImpl<$Res>
    extends _$AssignmentModelCopyWithImpl<$Res>
    implements _$AssignmentModelCopyWith<$Res> {
  __$AssignmentModelCopyWithImpl(
      _AssignmentModel _value, $Res Function(_AssignmentModel) _then)
      : super(_value, (v) => _then(v as _AssignmentModel));

  @override
  _AssignmentModel get _value => super._value as _AssignmentModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? questions = freezed,
    Object? attempted = freezed,
  }) {
    return _then(_AssignmentModel(
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
              as AttemptedModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AssignmentModel extends _AssignmentModel {
  _$_AssignmentModel(
      {@JsonKey(name: "id", required: true) required this.id,
      @JsonKey(name: "title", required: true) required this.title,
      @JsonKey(name: "question_count", required: true) required this.questions,
      @JsonKey(name: "attempted", includeIfNull: false) this.attempted})
      : super._();

  factory _$_AssignmentModel.fromJson(Map<String, dynamic> json) =>
      _$_$_AssignmentModelFromJson(json);

  @override
  @JsonKey(name: "id", required: true)
  final int id;
  @override
  @JsonKey(name: "title", required: true)
  final String title;
  @override
  @JsonKey(name: "question_count", required: true)
  final int questions;
  @override // @JsonKey(name: "total_attempts", ignore: true, includeIfNull: false)
//     int attempts,
  @JsonKey(name: "attempted", includeIfNull: false)
  final AttemptedModel? attempted;

  @override
  String toString() {
    return 'AssignmentModel(id: $id, title: $title, questions: $questions, attempted: $attempted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AssignmentModel &&
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
  _$AssignmentModelCopyWith<_AssignmentModel> get copyWith =>
      __$AssignmentModelCopyWithImpl<_AssignmentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AssignmentModelToJson(this);
  }
}

abstract class _AssignmentModel extends AssignmentModel {
  factory _AssignmentModel(
      {@JsonKey(name: "id", required: true)
          required int id,
      @JsonKey(name: "title", required: true)
          required String title,
      @JsonKey(name: "question_count", required: true)
          required int questions,
      @JsonKey(name: "attempted", includeIfNull: false)
          AttemptedModel? attempted}) = _$_AssignmentModel;
  _AssignmentModel._() : super._();

  factory _AssignmentModel.fromJson(Map<String, dynamic> json) =
      _$_AssignmentModel.fromJson;

  @override
  @JsonKey(name: "id", required: true)
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "title", required: true)
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "question_count", required: true)
  int get questions => throw _privateConstructorUsedError;
  @override // @JsonKey(name: "total_attempts", ignore: true, includeIfNull: false)
//     int attempts,
  @JsonKey(name: "attempted", includeIfNull: false)
  AttemptedModel? get attempted => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AssignmentModelCopyWith<_AssignmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
