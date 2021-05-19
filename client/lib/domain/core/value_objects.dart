// coverage:ignore-file

import 'package:dartz/dartz.dart';
import 'package:fnotes/domain/core/errors.dart';

abstract class ValueObject<T, U> {
  Either<T, U> get value;

  bool get valid => value.isRight();

  U getOrCrash() => value.fold((l) => throw UnrepresentableStateError(), (r) => r);
}
