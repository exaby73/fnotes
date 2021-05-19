import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fnotes/application/auth/auth_cubit.dart';
import 'package:fnotes/application/core/form_state.dart';
import 'package:fnotes/domain/auth/value_objects.dart';
import 'package:fnotes/injection.dart';
import 'package:injectable/injectable.dart' show Environment;

void main() {
  const invalidEmail = 'testexample.com';
  const invalidPassword = 'pass';
  const validEmail = 'test@example.com';
  const validPassword = 'password';
  late final AuthState initialState;

  setUpAll(() {
    configureDependencies(Environment.test);
    initialState = AuthState.initial();
  });

  group('AuthCubit state change should', () {
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

  group(
    'AuthCubit sign in should',
    () {
      blocTest<AuthCubit, AuthState>(
        'emit error state on invalid email',
        build: () => AuthCubit(),
        act: (cubit) async {
          cubit.changeEmail(invalidEmail);
          await cubit.signIn();
        },
        skip: 1,
        expect: () => <AuthState>[
          initialState.copyWith.call(
            emailAddress: EmailAddress(invalidEmail),
            formState: const FormState.invalid(),
          ),
        ],
      );

      blocTest<AuthCubit, AuthState>(
        'emit error state on invalid password',
        build: () => AuthCubit(),
        act: (cubit) async {
          cubit.changePassword(invalidPassword);
          await cubit.signIn();
        },
        skip: 1,
        expect: () => <AuthState>[
          initialState.copyWith.call(
            password: Password(invalidPassword),
            formState: const FormState.invalid(),
          ),
        ],
      );
    },
  );
}
