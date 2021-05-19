import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_state.freezed.dart';
part 'form_state.g.dart';

@freezed
class FormState with _$FormState {
  const factory FormState.initial() = _Initial;

  const factory FormState.invalid() = _Invalid;

  factory FormState.fromJson(Map<String, dynamic> json) => _$FormStateFromJson(json);
}