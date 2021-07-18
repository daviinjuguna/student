// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionModel _$QuestionModelFromJson(Map<String, dynamic> json) {
  return _QuestionModel.fromJson(json);
}

/// @nodoc
class _$QuestionModelTearOff {
  const _$QuestionModelTearOff();

  _QuestionModel call(
      {@JsonKey(name: "id", required: true)
          required int id,
      @JsonKey(name: "question", required: true)
          required String question,
      @JsonKey(name: 'choices', required: true)
          required List<ChoiceModel> choices,
      @JsonKey(name: "selected", includeIfNull: false)
          SelectedModel? selectedAnswer,
      @JsonKey(name: "answer_id")
          required int answerId}) {
    return _QuestionModel(
      id: id,
      question: question,
      choices: choices,
      selectedAnswer: selectedAnswer,
      answerId: answerId,
    );
  }

  QuestionModel fromJson(Map<String, Object> json) {
    return QuestionModel.fromJson(json);
  }
}

/// @nodoc
const $QuestionModel = _$QuestionModelTearOff();

/// @nodoc
mixin _$QuestionModel {
  @JsonKey(name: "id", required: true)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "question", required: true)
  String get question => throw _privateConstructorUsedError;
  @JsonKey(name: 'choices', required: true)
  List<ChoiceModel> get choices => throw _privateConstructorUsedError;
  @JsonKey(name: "selected", includeIfNull: false)
  SelectedModel? get selectedAnswer => throw _privateConstructorUsedError;
  @JsonKey(name: "answer_id")
  int get answerId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionModelCopyWith<QuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionModelCopyWith<$Res> {
  factory $QuestionModelCopyWith(
          QuestionModel value, $Res Function(QuestionModel) then) =
      _$QuestionModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id", required: true)
          int id,
      @JsonKey(name: "question", required: true)
          String question,
      @JsonKey(name: 'choices', required: true)
          List<ChoiceModel> choices,
      @JsonKey(name: "selected", includeIfNull: false)
          SelectedModel? selectedAnswer,
      @JsonKey(name: "answer_id")
          int answerId});

  $SelectedModelCopyWith<$Res>? get selectedAnswer;
}

/// @nodoc
class _$QuestionModelCopyWithImpl<$Res>
    implements $QuestionModelCopyWith<$Res> {
  _$QuestionModelCopyWithImpl(this._value, this._then);

  final QuestionModel _value;
  // ignore: unused_field
  final $Res Function(QuestionModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? question = freezed,
    Object? choices = freezed,
    Object? selectedAnswer = freezed,
    Object? answerId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      choices: choices == freezed
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<ChoiceModel>,
      selectedAnswer: selectedAnswer == freezed
          ? _value.selectedAnswer
          : selectedAnswer // ignore: cast_nullable_to_non_nullable
              as SelectedModel?,
      answerId: answerId == freezed
          ? _value.answerId
          : answerId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $SelectedModelCopyWith<$Res>? get selectedAnswer {
    if (_value.selectedAnswer == null) {
      return null;
    }

    return $SelectedModelCopyWith<$Res>(_value.selectedAnswer!, (value) {
      return _then(_value.copyWith(selectedAnswer: value));
    });
  }
}

/// @nodoc
abstract class _$QuestionModelCopyWith<$Res>
    implements $QuestionModelCopyWith<$Res> {
  factory _$QuestionModelCopyWith(
          _QuestionModel value, $Res Function(_QuestionModel) then) =
      __$QuestionModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id", required: true)
          int id,
      @JsonKey(name: "question", required: true)
          String question,
      @JsonKey(name: 'choices', required: true)
          List<ChoiceModel> choices,
      @JsonKey(name: "selected", includeIfNull: false)
          SelectedModel? selectedAnswer,
      @JsonKey(name: "answer_id")
          int answerId});

  @override
  $SelectedModelCopyWith<$Res>? get selectedAnswer;
}

/// @nodoc
class __$QuestionModelCopyWithImpl<$Res>
    extends _$QuestionModelCopyWithImpl<$Res>
    implements _$QuestionModelCopyWith<$Res> {
  __$QuestionModelCopyWithImpl(
      _QuestionModel _value, $Res Function(_QuestionModel) _then)
      : super(_value, (v) => _then(v as _QuestionModel));

  @override
  _QuestionModel get _value => super._value as _QuestionModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? question = freezed,
    Object? choices = freezed,
    Object? selectedAnswer = freezed,
    Object? answerId = freezed,
  }) {
    return _then(_QuestionModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      choices: choices == freezed
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<ChoiceModel>,
      selectedAnswer: selectedAnswer == freezed
          ? _value.selectedAnswer
          : selectedAnswer // ignore: cast_nullable_to_non_nullable
              as SelectedModel?,
      answerId: answerId == freezed
          ? _value.answerId
          : answerId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionModel extends _QuestionModel {
  _$_QuestionModel(
      {@JsonKey(name: "id", required: true) required this.id,
      @JsonKey(name: "question", required: true) required this.question,
      @JsonKey(name: 'choices', required: true) required this.choices,
      @JsonKey(name: "selected", includeIfNull: false) this.selectedAnswer,
      @JsonKey(name: "answer_id") required this.answerId})
      : super._();

  factory _$_QuestionModel.fromJson(Map<String, dynamic> json) =>
      _$_$_QuestionModelFromJson(json);

  @override
  @JsonKey(name: "id", required: true)
  final int id;
  @override
  @JsonKey(name: "question", required: true)
  final String question;
  @override
  @JsonKey(name: 'choices', required: true)
  final List<ChoiceModel> choices;
  @override
  @JsonKey(name: "selected", includeIfNull: false)
  final SelectedModel? selectedAnswer;
  @override
  @JsonKey(name: "answer_id")
  final int answerId;

  @override
  String toString() {
    return 'QuestionModel(id: $id, question: $question, choices: $choices, selectedAnswer: $selectedAnswer, answerId: $answerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QuestionModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.question, question) ||
                const DeepCollectionEquality()
                    .equals(other.question, question)) &&
            (identical(other.choices, choices) ||
                const DeepCollectionEquality()
                    .equals(other.choices, choices)) &&
            (identical(other.selectedAnswer, selectedAnswer) ||
                const DeepCollectionEquality()
                    .equals(other.selectedAnswer, selectedAnswer)) &&
            (identical(other.answerId, answerId) ||
                const DeepCollectionEquality()
                    .equals(other.answerId, answerId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(question) ^
      const DeepCollectionEquality().hash(choices) ^
      const DeepCollectionEquality().hash(selectedAnswer) ^
      const DeepCollectionEquality().hash(answerId);

  @JsonKey(ignore: true)
  @override
  _$QuestionModelCopyWith<_QuestionModel> get copyWith =>
      __$QuestionModelCopyWithImpl<_QuestionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_QuestionModelToJson(this);
  }
}

abstract class _QuestionModel extends QuestionModel {
  factory _QuestionModel(
      {@JsonKey(name: "id", required: true)
          required int id,
      @JsonKey(name: "question", required: true)
          required String question,
      @JsonKey(name: 'choices', required: true)
          required List<ChoiceModel> choices,
      @JsonKey(name: "selected", includeIfNull: false)
          SelectedModel? selectedAnswer,
      @JsonKey(name: "answer_id")
          required int answerId}) = _$_QuestionModel;
  _QuestionModel._() : super._();

  factory _QuestionModel.fromJson(Map<String, dynamic> json) =
      _$_QuestionModel.fromJson;

  @override
  @JsonKey(name: "id", required: true)
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "question", required: true)
  String get question => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'choices', required: true)
  List<ChoiceModel> get choices => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "selected", includeIfNull: false)
  SelectedModel? get selectedAnswer => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "answer_id")
  int get answerId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QuestionModelCopyWith<_QuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
