import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fnotes/application/auth/register_form_cubit.dart';
import 'package:fnotes/domain/auth/value_objects.dart';
import 'package:fnotes/injection.dart';
import 'package:injectable/injectable.dart' show Environment;

void main() {
  const invalidEmail = 'testexample.com';
  const invalidPassword = 'pass';
  const validEmail = 'test@example.com';
  const validPassword = 'password';
  const invalidName = 'first \n name';
  const validName = 'first name';
  late final RegisterFormState initialRegisterFormState;

  setUpAll(() {
    initialRegisterFormState = RegisterFormState.initial();
  });

  setUp(() {
    configureDependencies(Environment.test);
  });

  tearDown(() {
    showErrors = false;
    getIt.reset();
  });

  test(
    'RegisterFormCubit should have initial state',
    () {
      expect(getIt<RegisterFormCubit>().state, equals(initialRegisterFormState));
    },
  );

  group('RegisterFormCubit state change should', () {
    blocTest<RegisterFormCubit, RegisterFormState>(
      'emit invalid EmaillAddress for invalid email',
      build: () => getIt(),
      act: (cubit) {
        cubit.changeEmail(invalidEmail);
      },
      expect: () => <RegisterFormState>[
        initialRegisterFormState.copyWith.call(
          emailAddress: EmailAddress(invalidEmail),
        ),
      ],
    );

    blocTest<RegisterFormCubit, RegisterFormState>(
      'emit valid EmaillAddress for valid email',
      build: () => getIt(),
      act: (cubit) {
        cubit.changeEmail(validEmail);
      },
      expect: () => <RegisterFormState>[
        initialRegisterFormState.copyWith.call(
          emailAddress: EmailAddress(validEmail),
        ),
      ],
    );

    blocTest<RegisterFormCubit, RegisterFormState>(
      'emit invalid Password for invalid password',
      build: () => getIt(),
      act: (cubit) {
        cubit.changePassword(invalidPassword);
      },
      expect: () => <RegisterFormState>[
        initialRegisterFormState.copyWith.call(
          password: Password(invalidPassword),
        ),
      ],
    );

    blocTest<RegisterFormCubit, RegisterFormState>(
      'emit valid Password for valid password',
      build: () => getIt(),
      act: (cubit) {
        cubit.changePassword(validPassword);
      },
      expect: () => <RegisterFormState>[
        initialRegisterFormState.copyWith.call(
          password: Password(validPassword),
        ),
      ],
    );

    blocTest<RegisterFormCubit, RegisterFormState>(
      'emit invalid Password for invalid confirm password',
      build: () => getIt(),
      act: (cubit) {
        cubit.changeConfirmPassword(invalidPassword);
      },
      expect: () => <RegisterFormState>[
        initialRegisterFormState.copyWith.call(
          confirmPassword: Password(invalidPassword),
        ),
      ],
    );

    blocTest<RegisterFormCubit, RegisterFormState>(
      'emit valid Password for valid confirm password',
      build: () => getIt(),
      act: (cubit) {
        cubit.changeConfirmPassword(validPassword);
      },
      expect: () => <RegisterFormState>[
        initialRegisterFormState.copyWith.call(
          confirmPassword: Password(validPassword),
        ),
      ],
    );

    blocTest<RegisterFormCubit, RegisterFormState>(
      'emit invalid SingleLineString for invalid name',
      build: () => getIt(),
      act: (cubit) {
        cubit.changeName(invalidName);
      },
      expect: () => <RegisterFormState>[
        initialRegisterFormState.copyWith.call(
          name: SingleLineString(invalidName),
        ),
      ],
    );

    blocTest<RegisterFormCubit, RegisterFormState>(
      'emit valid SingleLineString for valid name',
      build: () => getIt(),
      act: (cubit) {
        cubit.changeName(validName);
      },
      expect: () => <RegisterFormState>[
        initialRegisterFormState.copyWith.call(
          name: SingleLineString(validName),
        ),
      ],
    );
  });
}
