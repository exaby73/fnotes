import 'package:dartz/dartz.dart';
import 'package:fnotes/domain/core/errors.dart';
import 'package:fnotes/domain/core/failures.dart';
import 'package:fnotes/domain/core/json_serializers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:queen_validators/queen_validators.dart';

part 'value_objects.freezed.dart';

part 'value_objects.g.dart';

abstract class ValueObject<T, U> {
  Either<T, U> get value;

  bool get valid => value.isRight();

  U getOrCrash() => value.fold((l) => throw UnrepresentableStateError(), (r) => r);
}

@freezed
class EmailAddress with _$EmailAddress implements ValueObject<ValueFailure, String> {
  factory EmailAddress(String input) {
    return EmailAddress._internal(_validate(input));
  }

  const factory EmailAddress._internal(
    @EitherValueFailureOrStringConverter() Either<ValueFailure, String> value,
  ) = _EmailAddress;

  factory EmailAddress.fromJson(Map<String, dynamic> json) => _$EmailAddressFromJson(json);

  static Either<ValueFailure, String> _validate(String input) {
    if (isEmail(input)) return Right(input);
    return Left(ValueFailure.invalidEmail(input));
  }

  const EmailAddress._();

  @override
  String getOrCrash() => value.fold((l) => throw UnrepresentableStateError(), (r) => r);

  @override
  bool get valid => value.isRight();
}
