import 'package:dartz/dartz.dart';
import 'package:fnotes/domain/core/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class EitherValueFailureOrStringConverter implements JsonConverter<Either<ValueFailure, String>, Map<String, dynamic>> {
  const EitherValueFailureOrStringConverter();

  @override
  Either<ValueFailure, String> fromJson(Map<String, dynamic> json) {
    final isLeft = json['isLeft'] as bool?;
    final value = json['value'];
    assert(isLeft != null, 'Json needs to have an isLeft property');
    isLeft!;
    assert(value != null, 'Json needs to have a value property');
    if (isLeft) {
      return Left(ValueFailure.fromJson((json['value'] as Map).cast()));
    }
    return Right(json['value'] as String);
  }

  @override
  Map<String, dynamic> toJson(Either<ValueFailure, String> object) {
    return object.fold(
      (l) => {
        'isLeft': true,
        'value': l.toJson(),
      },
      (r) => {
        'isLeft': false,
        'value': r,
      },
    );
  }
}
