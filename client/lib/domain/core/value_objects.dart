import 'package:dartz/dartz.dart';
import 'package:fnotes/domain/core/errors.dart';
import 'package:fnotes/domain/core/failures.dart';
import 'package:fnotes/domain/core/json_serializers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:queen_validators/queen_validators.dart';

abstract class ValueObject<T, U> {
  Either<T, U> get value;

  bool get valid => value.isRight();

  U getOrCrash() => value.fold((l) => throw UnrepresentableStateError(), (r) => r);
}
