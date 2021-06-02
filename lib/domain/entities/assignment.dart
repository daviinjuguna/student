import 'package:freezed_annotation/freezed_annotation.dart';

import 'attempted.dart';

part 'assignment.freezed.dart';

@freezed
class Assignment with _$Assignment {
  const Assignment._();
  factory Assignment({
    required int id,
    required String title,
    required int questions,
    // int attempts,
    Attempted? attempted,
    //TODO add graged
  }) = _Assignment;
}
