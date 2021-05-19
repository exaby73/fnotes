import 'package:dartz/dartz.dart';
import 'package:fnotes/domain/auth/dtos.dart';
import 'package:fnotes/domain/auth/failures.dart';
import 'package:fnotes/domain/auth/i_auth_repository.dart';
import 'package:injectable/injectable.dart';

@Environment(Environment.dev)
@Environment(Environment.test)
@Injectable(as: IAuthRepository)
class FakeAuthRepository implements IAuthRepository {
  final bool _showErrors;

  const FakeAuthRepository(@factoryParam bool? showErrors) : _showErrors = showErrors ?? false;

  @override
  Future<Either<AuthFailure, Unit>> register(RegisterRequestDTO registerRequestDTO) async {
    if (_showErrors) return const Left(AuthFailure.emailTaken());

    return const Right(unit);
  }

  @override
  Future<Either<AuthFailure, Unit>> signIn(SignInRequestDTO signInRequestDTO) async {
    if (_showErrors) return const Left(AuthFailure.invalidEmailAndPasswordCombination());
    return const Right(unit);
  }
}
