// coverage:ignore-file

import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

part 'failures.g.dart';

@freezed
class ValueFailure with _$ValueFailure {
  const factory ValueFailure.invalidEmail(String failedValue) = _InvalidEmail;

  const factory ValueFailure.shortPassword(String failedValue) = _ShortPassword;

  const factory ValueFailure.invalidString(String failedValue) = _InvalidString;

  factory ValueFailure.fromJson(Map<String, dynamic> json) => _$ValueFailureFromJson(json);
}
