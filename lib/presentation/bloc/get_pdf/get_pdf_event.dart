part of 'get_pdf_bloc.dart';

@freezed
class GetPdfEvent with _$GetPdfEvent {
  const factory GetPdfEvent.started({required int id}) = _Started;
}
