import 'package:freezed_annotation/freezed_annotation.dart';

part 'pdf.freezed.dart';

@freezed
class Pdf with _$Pdf {
  const Pdf._();
  factory Pdf({
    required int id,
    required String name,
    required String pdfDoc,
  }) = _Pdf;
}
