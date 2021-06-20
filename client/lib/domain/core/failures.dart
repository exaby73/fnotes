// coverage:ignore-file

import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

part 'failures.g.dart';

@freezed
class ValueFailure with _$ValueFailure {
  const factory ValueFailure.invalidEmail(String failedValue) = _InvalidEmail;

  const factory ValueFailure.shortPassword(String failedValue) = _ShortPassword;

  const factory ValueFailure.invalidString(String failedValue) = _InvalidString;

  factory ValueFailure.fromJson(Map<String, dynamic> json) =>
      _$ValueFailureFromJson(json);
}

@freezed
class DataFailure with _$DataFailure {
  const factory DataFailure.notFound() = _NotFound;

  const factory DataFailure.serverError(String message) = _ServerError;

  const factory DataFailure.unauthorized() = _Unauthorized;

  const factory DataFailure.networkError() = _NetworkError;

  const factory DataFailure.unknownError() = _UnknownError;

  factory DataFailure.fromJson(Map<String, dynamic> json) =>
      _$DataFailureFromJson(json);
}
