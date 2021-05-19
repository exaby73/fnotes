import 'package:dartz/dartz.dart';
import 'package:fnotes/domain/auth/dtos.dart';
import 'package:fnotes/domain/auth/failures.dart';
import 'package:fnotes/domain/auth/i_auth_repository.dart';
import 'package:fnotes/injection.dart';
import 'package:injectable/injectable.dart';

class AuthEntity {
  final IAuthRepository _authRepository;

  const AuthEntity(this._authRepository);

  Future<Either<AuthFailure, Unit>> signIn(SignInRequestDTO signInRequestDTO) async {
    return _authRepository.signIn(signInRequestDTO);
  }

  Future<Either<AuthFailure, Unit>> register(RegisterRequestDTO registerRequestDTO) async {
    return _authRepository.register(registerRequestDTO);
  }
}
