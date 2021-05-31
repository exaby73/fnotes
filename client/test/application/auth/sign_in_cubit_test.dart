import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fnotes/application/auth/sign_in_form_cubit.dart';
import 'package:fnotes/application/core/form_state.dart';
import 'package:fnotes/domain/auth/failures.dart';
import 'package:fnotes/domain/auth/value_objects.dart';
import 'package:fnotes/injection.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart' show Environment;

import '../core/memory_storage.dart';

void main() {
  const invalidEmail = 'testexample.com';
  const invalidPassword = 'pass';
  const validEmail = 'test@example.com';
  const validPassword = 'password';
  late final SignInFormState initialSignInFormState;

  setUpAll(() {
    initialSignInFormState = SignInFormState.initial();
  });

  setUp(() {
    HydratedBloc.storage = MemoryStorage();
    configureDependencies(Environment.test);
  });

  tearDown(() {
    showErrors = false;
    getIt.reset();
  });

  test(
    'SignInFormCubit should have initial state',
    () {
      expect(getIt<SignInFormCubit>().state, equals(initialSignInFormState));
    },
  );

  group('SignInFormCubit state change should', () {
    blocTest<SignInFormCubit, SignInFormState>(
      'emit new email state on email change',
      build: () => getIt(),
      act: (cubit) {
        cubit.changeEmail(validEmail);
      },
      expect: () => <SignInFormState>[
        initialSignInFormState.copyWith.call(
          emailAddress: EmailAddress(validEmail),
        ),
      ],
    );

    blocTest<SignInFormCubit, SignInFormState>(
      'emit new password state on password change',
      build: () => getIt(),
      act: (cubit) {
        cubit.changePassword(validPassword);
      },
      expect: () => <SignInFormState>[
        initialSignInFormState.copyWith.call(
          password: Password(validPassword),
        ),
      ],
    );
  });

  group(
    'SignInFormCubit sign in should',
    () {
      blocTest<SignInFormCubit, SignInFormState>(
        'emit error state on invalid email',
        build: () => getIt(),
        act: (cubit) async {
          cubit.changeEmail(invalidEmail);
          await cubit.signIn();
        },
        skip: 1,
        expect: () => <SignInFormState>[
          initialSignInFormState.copyWith.call(
            emailAddress: EmailAddress(invalidEmail),
            formState: const FormState.invalid(),
          ),
        ],
      );

      blocTest<SignInFormCubit, SignInFormState>(
        'emit error state on invalid password',
        build: () => getIt(),
        act: (cubit) async {
          cubit.changePassword(invalidPassword);
          await cubit.signIn();
        },
        skip: 1,
        expect: () => <SignInFormState>[
          initialSignInFormState.copyWith.call(
            password: Password(invalidPassword),
            formState: const FormState.invalid(),
          ),
        ],
      );

      blocTest<SignInFormCubit, SignInFormState>(
        'emit loading state for valid form and success for signin',
        build: () => getIt(),
        act: (cubit) async {
          cubit.changeEmail(validEmail);
          cubit.changePassword(validPassword);
          await cubit.signIn();
        },
        skip: 2,
        expect: () => <SignInFormState>[
          initialSignInFormState.copyWith.call(
            emailAddress: EmailAddress(validEmail),
            password: Password(validPassword),
            formState: const FormState.loading(),
          ),
          initialSignInFormState.copyWith.call(
            emailAddress: EmailAddress(validEmail),
            password: Password(validPassword),
            formState: const FormState.success(),
          ),
        ],
      );

      blocTest<SignInFormCubit, SignInFormState>(
        'emit loading state for valid form and error for signin',
        build: () => getIt(),
        act: (cubit) async {
          showErrors = true;
          cubit.changeEmail(validEmail);
          cubit.changePassword(validPassword);
          await cubit.signIn();
        },
        skip: 2,
        expect: () => <SignInFormState>[
          initialSignInFormState.copyWith.call(
            emailAddress: EmailAddress(validEmail),
            password: Password(validPassword),
            formState: const FormState.loading(),
          ),
          initialSignInFormState.copyWith.call(
            emailAddress: EmailAddress(validEmail),
            password: Password(validPassword),
            formState: const FormState.error(AuthFailure.invalidEmailAndPasswordCombination()),
          ),
        ],
      );
    },
  );
}
