import 'package:dartz/dartz.dart';
import 'package:fnotes/domain/auth/dtos.dart';
import 'package:fnotes/domain/auth/failures.dart';
import 'package:fnotes/domain/auth/i_auth_repository.dart';
import 'package:injectable/injectable.dart';

@Environment(Environment.dev)
@Environment(Environment.test)
@Injectable(as: IAuthRepository)
class FakeAuthRepository implements IAuthRepository {
  @override
  Future<Either<AuthFailure, Unit>> register(RegisterRequestDTO registerRequestDTO) async {
    return const Right(unit);
  }

  @override
  Future<Either<AuthFailure, Unit>> signIn(SignInRequestDTO signInRequestDTO) async {
    return const Right(unit);
  }
}