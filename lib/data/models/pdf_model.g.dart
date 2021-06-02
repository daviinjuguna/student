// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pdf_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PdfModel _$_$_PdfModelFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['id', 'name', 'link']);
  return _$_PdfModel(
    id: json['id'] as int,
    name: json['name'] as String,
    pdfDoc: json['link'] as String,
  );
}

Map<String, dynamic> _$_$_PdfModelToJson(_$_PdfModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'link': instance.pdfDoc,
    };
