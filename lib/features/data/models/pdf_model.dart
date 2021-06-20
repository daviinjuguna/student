import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:student/features/domain/entities/pdf.dart';

part 'pdf_model.freezed.dart';
part 'pdf_model.g.dart';

@freezed
class PdfModel with _$PdfModel {
  const PdfModel._();
  factory PdfModel({
    @JsonKey(name: "id", required: true) required int id,
    @JsonKey(name: "name", required: true) required String name,
    @JsonKey(name: "link", required: true) required String pdfDoc,
  }) = _PdfModel;

  factory PdfModel.fromJson(Map<String, dynamic> json) =>
      _$PdfModelFromJson(json);

  factory PdfModel.fromEntinty(Pdf pdf) => PdfModel(
        id: pdf.id,
        name: pdf.name,
        pdfDoc: pdf.pdfDoc,
      );
}

extension PdfModelX on PdfModel {
  Pdf toEntity() => Pdf(
        id: id,
        name: name,
        pdfDoc: pdfDoc,
      );
}
