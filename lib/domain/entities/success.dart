import 'package:freezed_annotation/freezed_annotation.dart';

part 'success.freezed.dart';

@freezed
class Success with _$Success {
  const Success._();
  factory Success({
    required bool success,
    required String message,
  }) = _Success;
}
