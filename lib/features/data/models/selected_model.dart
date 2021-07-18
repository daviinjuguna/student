import 'package:freezed_annotation/freezed_annotation.dart';

part 'selected_model.freezed.dart';
part 'selected_model.g.dart';

@freezed
class SelectedModel with _$SelectedModel {
  factory SelectedModel({@JsonKey(name: "answer_id") required int answerId}) =
      _SelectedModel;

  factory SelectedModel.fromJson(Map<String, dynamic> json) =>
      _$SelectedModelFromJson(json);
}
