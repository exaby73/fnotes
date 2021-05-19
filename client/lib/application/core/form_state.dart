// coverage:ignore-file

import 'package:fnotes/domain/auth/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_state.freezed.dart';
part 'form_state.g.dart';

@freezed
class FormState with _$FormState {
  const factory FormState.initial() = _Initial;

  const factory FormState.invalid() = _Invalid;

  const factory FormState.loading() = _Loading;

  const factory FormState.success() = _Success;

  const factory FormState.error(AuthFailure failure) = _Error;

  factory FormState.fromJson(Map<String, dynamic> json) => _$FormStateFromJson(json);
}