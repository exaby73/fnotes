import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fnotes/application/auth/auth_cubit.dart';
import 'package:fnotes/domain/auth/value_objects.dart';
import 'package:fnotes/injection.dart';
import 'package:injectable/injectable.dart' show Environment;

void main() {
  setUpAll(() {
    configureDependencies(Environment.test);
  });

  group('AuthCubit should', () {
    late final AuthState initialState;

    setUpAll(() {
      initialState = AuthState.initial();
    });

    const validEmail = 'test@example.com';
    blocTest<AuthCubit, AuthState>(
      'emit new email state on email change',
      build: () => AuthCubit(),
      act: (cubit) {
        cubit.changeEmail(validEmail);
      },
      expect: () => <AuthState>[
        initialState.copyWith.call(
          emailAddress: EmailAddress(validEmail),
        ),
      ],
    );

    const validPassword = 'password';
    blocTest<AuthCubit, AuthState>(
      'emit new password state on password change',
      build: () => AuthCubit(),
      act: (cubit) {
        cubit.changePassword(validPassword);
      },
      expect: () => <AuthState>[
        initialState.copyWith.call(
          password: Password(validPassword),
        ),
      ],
    );
  });
}
