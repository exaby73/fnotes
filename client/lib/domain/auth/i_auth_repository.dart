// coverage:ignore-file

import 'package:dartz/dartz.dart';
import 'package:fnotes/domain/auth/dtos.dart';
import 'package:fnotes/domain/auth/failures.dart';

abstract class IAuthRepository {
  Future<Either<AuthFailure, Unit>> register(RegisterRequestDTO registerRequestDTO);

  Future<Either<AuthFailure, Unit>> signIn(SignInRequestDTO signInRequestDTO);
}