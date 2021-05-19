// coverage:ignore-file

import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

part 'failures.g.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.serverError() = _ServerError;

  const factory AuthFailure.networkError() = _NetworkError;

  const factory AuthFailure.unknownError() = _UnknownError;

  const factory AuthFailure.emailTaken() = _EmailTaken;

  const factory AuthFailure.invalidEmailAndPasswordCombination() = _InvalidEmailAndPasswordCombination;

  factory AuthFailure.fromJson(Map<String, dynamic> json) => _$AuthFailureFromJson(json);
}
