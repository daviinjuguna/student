import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:student/features/data/models/choice_model.dart';

part 'choice.freezed.dart';

@freezed
class Choice with _$Choice {
  const Choice._();
  factory Choice({
    required int id,
    required String title,
  }) = _Choice;

  factory Choice.fromModel(ChoiceModel choice) =>
      Choice(id: choice.id, title: choice.title);
}

extension ChoiceX on Choice {
  ChoiceModel toModel() => ChoiceModel(id: id, title: title);
}
