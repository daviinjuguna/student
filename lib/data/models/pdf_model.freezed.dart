// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pdf_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PdfModel _$PdfModelFromJson(Map<String, dynamic> json) {
  return _PdfModel.fromJson(json);
}

/// @nodoc
class _$PdfModelTearOff {
  const _$PdfModelTearOff();

  _PdfModel call(
      {@JsonKey(name: "id", required: true) required int id,
      @JsonKey(name: "name", required: true) required String name,
      @JsonKey(name: "link", required: true) required String pdfDoc}) {
    return _PdfModel(
      id: id,
      name: name,
      pdfDoc: pdfDoc,
    );
  }

  PdfModel fromJson(Map<String, Object> json) {
    return PdfModel.fromJson(json);
  }
}

/// @nodoc
const $PdfModel = _$PdfModelTearOff();

/// @nodoc
mixin _$PdfModel {
  @JsonKey(name: "id", required: true)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name", required: true)
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "link", required: true)
  String get pdfDoc => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PdfModelCopyWith<PdfModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PdfModelCopyWith<$Res> {
  factory $PdfModelCopyWith(PdfModel value, $Res Function(PdfModel) then) =
      _$PdfModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id", required: true) int id,
      @JsonKey(name: "name", required: true) String name,
      @JsonKey(name: "link", required: true) String pdfDoc});
}

/// @nodoc
class _$PdfModelCopyWithImpl<$Res> implements $PdfModelCopyWith<$Res> {
  _$PdfModelCopyWithImpl(this._value, this._then);

  final PdfModel _value;
  // ignore: unused_field
  final $Res Function(PdfModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? pdfDoc = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pdfDoc: pdfDoc == freezed
          ? _value.pdfDoc
          : pdfDoc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PdfModelCopyWith<$Res> implements $PdfModelCopyWith<$Res> {
  factory _$PdfModelCopyWith(_PdfModel value, $Res Function(_PdfModel) then) =
      __$PdfModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id", required: true) int id,
      @JsonKey(name: "name", required: true) String name,
      @JsonKey(name: "link", required: true) String pdfDoc});
}

/// @nodoc
class __$PdfModelCopyWithImpl<$Res> extends _$PdfModelCopyWithImpl<$Res>
    implements _$PdfModelCopyWith<$Res> {
  __$PdfModelCopyWithImpl(_PdfModel _value, $Res Function(_PdfModel) _then)
      : super(_value, (v) => _then(v as _PdfModel));

  @override
  _PdfModel get _value => super._value as _PdfModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? pdfDoc = freezed,
  }) {
    return _then(_PdfModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pdfDoc: pdfDoc == freezed
          ? _value.pdfDoc
          : pdfDoc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PdfModel extends _PdfModel {
  _$_PdfModel(
      {@JsonKey(name: "id", required: true) required this.id,
      @JsonKey(name: "name", required: true) required this.name,
      @JsonKey(name: "link", required: true) required this.pdfDoc})
      : super._();

  factory _$_PdfModel.fromJson(Map<String, dynamic> json) =>
      _$_$_PdfModelFromJson(json);

  @override
  @JsonKey(name: "id", required: true)
  final int id;
  @override
  @JsonKey(name: "name", required: true)
  final String name;
  @override
  @JsonKey(name: "link", required: true)
  final String pdfDoc;

  @override
  String toString() {
    return 'PdfModel(id: $id, name: $name, pdfDoc: $pdfDoc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PdfModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.pdfDoc, pdfDoc) ||
                const DeepCollectionEquality().equals(other.pdfDoc, pdfDoc)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(pdfDoc);

  @JsonKey(ignore: true)
  @override
  _$PdfModelCopyWith<_PdfModel> get copyWith =>
      __$PdfModelCopyWithImpl<_PdfModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PdfModelToJson(this);
  }
}

abstract class _PdfModel extends PdfModel {
  factory _PdfModel(
          {@JsonKey(name: "id", required: true) required int id,
          @JsonKey(name: "name", required: true) required String name,
          @JsonKey(name: "link", required: true) required String pdfDoc}) =
      _$_PdfModel;
  _PdfModel._() : super._();

  factory _PdfModel.fromJson(Map<String, dynamic> json) = _$_PdfModel.fromJson;

  @override
  @JsonKey(name: "id", required: true)
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "name", required: true)
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "link", required: true)
  String get pdfDoc => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PdfModelCopyWith<_PdfModel> get copyWith =>
      throw _privateConstructorUsedError;
}
