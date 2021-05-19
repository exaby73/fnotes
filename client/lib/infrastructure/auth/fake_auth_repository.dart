import 'package:dartz/dartz.dart';
import 'package:fnotes/domain/auth/dtos.dart';
import 'package:fnotes/domain/auth/failures.dart';
import 'package:fnotes/domain/auth/i_auth_repository.dart';
import 'package:fnotes/injection.dart';
import 'package:injectable/injectable.dart';

@Environment(Environment.dev)
@Environment(Environment.test)
@Injectable(as: IAuthRepository)
class FakeAuthRepository implements IAuthRepository {
  const FakeAuthRepository();

  @override
  Future<Either<AuthFailure, Unit>> register(RegisterRequestDTO registerRequestDTO) async {
    if (showErrors) return const Left(AuthFailure.emailTaken());
    return const Right(unit);
  }

  @override
  Future<Either<AuthFailure, Unit>> signIn(SignInRequestDTO signInRequestDTO) async {
    if (showErrors) return const Left(AuthFailure.invalidEmailAndPasswordCombination());
    return const Right(unit);
  }
}
