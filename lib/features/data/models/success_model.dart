import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:student/features/domain/entities/success.dart';

part 'success_model.freezed.dart';
part 'success_model.g.dart';

@freezed
class SuccessModel with _$SuccessModel {
  const SuccessModel._();
  factory SuccessModel({
    required bool success,
    required String message,
  }) = _SuccessModel;

  factory SuccessModel.fromJson(Map<String, dynamic> json) =>
      _$SuccessModelFromJson(json);

  factory SuccessModel.fromEntity(Success success) => SuccessModel(
        success: success.success,
        message: success.message,
      );
}

extension SuccessModelX on SuccessModel {
  Success toEntity() => Success(
        success: success,
        message: message,
      );
}
