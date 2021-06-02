// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pdf.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PdfTearOff {
  const _$PdfTearOff();

  _Pdf call({required int id, required String name, required String pdfDoc}) {
    return _Pdf(
      id: id,
      name: name,
      pdfDoc: pdfDoc,
    );
  }
}

/// @nodoc
const $Pdf = _$PdfTearOff();

/// @nodoc
mixin _$Pdf {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get pdfDoc => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PdfCopyWith<Pdf> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PdfCopyWith<$Res> {
  factory $PdfCopyWith(Pdf value, $Res Function(Pdf) then) =
      _$PdfCopyWithImpl<$Res>;
  $Res call({int id, String name, String pdfDoc});
}

/// @nodoc
class _$PdfCopyWithImpl<$Res> implements $PdfCopyWith<$Res> {
  _$PdfCopyWithImpl(this._value, this._then);

  final Pdf _value;
  // ignore: unused_field
  final $Res Function(Pdf) _then;

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
abstract class _$PdfCopyWith<$Res> implements $PdfCopyWith<$Res> {
  factory _$PdfCopyWith(_Pdf value, $Res Function(_Pdf) then) =
      __$PdfCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, String pdfDoc});
}

/// @nodoc
class __$PdfCopyWithImpl<$Res> extends _$PdfCopyWithImpl<$Res>
    implements _$PdfCopyWith<$Res> {
  __$PdfCopyWithImpl(_Pdf _value, $Res Function(_Pdf) _then)
      : super(_value, (v) => _then(v as _Pdf));

  @override
  _Pdf get _value => super._value as _Pdf;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? pdfDoc = freezed,
  }) {
    return _then(_Pdf(
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

class _$_Pdf extends _Pdf {
  _$_Pdf({required this.id, required this.name, required this.pdfDoc})
      : super._();

  @override
  final int id;
  @override
  final String name;
  @override
  final String pdfDoc;

  @override
  String toString() {
    return 'Pdf(id: $id, name: $name, pdfDoc: $pdfDoc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Pdf &&
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
  _$PdfCopyWith<_Pdf> get copyWith =>
      __$PdfCopyWithImpl<_Pdf>(this, _$identity);
}

abstract class _Pdf extends Pdf {
  factory _Pdf(
      {required int id, required String name, required String pdfDoc}) = _$_Pdf;
  _Pdf._() : super._();

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get pdfDoc => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PdfCopyWith<_Pdf> get copyWith => throw _privateConstructorUsedError;
}
