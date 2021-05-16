import 'package:dartz/dartz.dart';
import 'package:fnotes/domain/core/errors.dart';
import 'package:fnotes/domain/core/failures.dart';
import 'package:fnotes/domain/core/json_serializers.dart';
import 'package:fnotes/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:queen_validators/queen_validators.dart';

part 'value_objects.freezed.dart';

part 'value_objects.g.dart';

@freezed
class EmailAddress with _$EmailAddress implements ValueObject<ValueFailure, String> {
  factory EmailAddress(String input) {
    return EmailAddress._internal(_validate(input));
  }

  factory EmailAddress.empty() => EmailAddress('');

  const factory EmailAddress._internal(
    @EitherValueFailureOrStringConverter() Either<ValueFailure, String> value,
  ) = _EmailAddress;

  factory EmailAddress.fromJson(Map<String, dynamic> json) => _$EmailAddressFromJson(json);

  const EmailAddress._();

  static Either<ValueFailure, String> _validate(String input) {
    if (isEmail(input)) return Right(input);
    return Left(ValueFailure.invalidEmail(input));
  }

  @override
  String getOrCrash() => value.fold((l) => throw UnrepresentableStateError(), (r) => r);

  @override
  bool get valid => value.isRight();
}

@freezed
class Password with _$Password implements ValueObject<ValueFailure, String> {
  factory Password(String input) {
    return Password._internal(_validate(input));
  }

  factory Password.empty() => Password('');

  const factory Password._internal(
    @EitherValueFailureOrStringConverter() Either<ValueFailure, String> value,
  ) = _Password;

  factory Password.fromJson(Map<String, dynamic> json) => _$PasswordFromJson(json);

  const Password._();

  static Either<ValueFailure, String> _validate(String input) {
    if (input.length < 8) return Left(ValueFailure.shortPassword(input));
    return Right(input);
  }

  @override
  String getOrCrash() => value.fold((l) => throw UnrepresentableStateError(), (r) => r);

  @override
  bool get valid => value.isRight();
}

@freezed
class SingleLineString with _$SingleLineString implements ValueObject<ValueFailure, String> {
  factory SingleLineString(String input) {
    return SingleLineString._internal(_validate(input));
  }

  const factory SingleLineString._internal(
    @EitherValueFailureOrStringConverter() Either<ValueFailure, String> value,
  ) = _SingleLineString;

  factory SingleLineString.fromJson(Map<String, dynamic> json) => _$SingleLineStringFromJson(json);

  const SingleLineString._();

  static Either<ValueFailure, String> _validate(String input) {
    if (input.contains('\n')) return Left(ValueFailure.invalidString(input));
    return Right(input);
  }

  @override
  String getOrCrash() => value.fold((l) => throw UnrepresentableStateError(), (r) => r);

  @override
  bool get valid => value.isRight();
}
