import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fnotes/domain/auth/auth_entity.dart';
import 'package:fnotes/domain/auth/dtos.dart';
import 'package:fnotes/domain/auth/failures.dart';
import 'package:fnotes/domain/auth/value_objects.dart';
import 'package:fnotes/injection.dart';
import 'package:injectable/injectable.dart' show Environment;

void main() {
  final validName = SingleLineString('Name');
  final validEmail = EmailAddress('test@example.com');
  final validPassword = Password('password');

  setUpAll(() {
    configureDependencies(Environment.test);
  });

  group('sign in should', () {
    test(
      'return unit on success',
          () async {
        final authEntity = AuthEntity(getIt());
        final signInRequestDTO = SignInRequestDTO(emailAddress: validEmail, password: validPassword);
        final result = await authEntity.signIn(signInRequestDTO);
        expect(result, equals(const Right(unit)));
      },
    );

    test(
      'return failure on error',
          () async {
        final authEntity = AuthEntity(getIt(param1: true));
        final signInRequestDTO = SignInRequestDTO(emailAddress: validEmail, password: validPassword);
        final result = await authEntity.signIn(signInRequestDTO);
        expect(result, equals(const Left(AuthFailure.invalidEmailAndPasswordCombination())));
      },
    );
  });

  group('register should', () {
    test(
      'return unit on success',
      () async {
        final authEntity = AuthEntity(getIt());
        final registerRequestDTO = RegisterRequestDTO(name: validName, emailAddress: validEmail, password: validPassword, confirmPassword: validPassword);
        final result = await authEntity.register(registerRequestDTO);
        expect(result, equals(const Right(unit)));
      },
    );

    test(
      'return failure on error',
      () async {
        final authEntity = AuthEntity(getIt(param1: true));
        final registerRequestDTO = RegisterRequestDTO(name: validName, emailAddress: validEmail, password: validPassword, confirmPassword: validPassword);
        final result = await authEntity.register(registerRequestDTO);
        expect(result, equals(const Left(AuthFailure.emailTaken())));
      },
    );
  });
}
