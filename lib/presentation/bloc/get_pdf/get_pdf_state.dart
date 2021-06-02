part of 'get_pdf_bloc.dart';

@freezed
class GetPdfState with _$GetPdfState {
  const factory GetPdfState.initial() = _Initial;
  const factory GetPdfState.loading() = _Load;
  const factory GetPdfState.success({required KtList<Pdf> pdf}) = _Success;
  const factory GetPdfState.error({required String message}) = _Error;
}
