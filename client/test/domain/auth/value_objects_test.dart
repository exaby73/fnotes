import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fnotes/domain/auth/value_objects.dart';
import 'package:fnotes/domain/core/errors.dart';
import 'package:fnotes/domain/core/failures.dart';
import 'package:fnotes/injection.dart';
import 'package:injectable/injectable.dart' show Environment;

void main() {
  setUpAll(() {
    configureDependencies(Environment.test);
  });

  group('EmailAddress', () {
    const validEmailText = 'test@example.com';
    const badEmailText = 'testexample.com';
    final EmailAddress validEmail = EmailAddress(validEmailText);
    final EmailAddress badEmail = EmailAddress(badEmailText);

    test('have right on valid email', () {
      expect(validEmail.value, equals(const Right(validEmailText)));
    });

    test('have left on invalid email', () {
      expect(badEmail.value, equals(const Left(ValueFailure.invalidEmail(badEmailText))));
    });

    test('be valid field should be true for valid email address', () {
      expect(validEmail.valid, equals(true));
    });

    test('be valid field should be false for valid email address', () {
      expect(badEmail.valid, equals(false));
    });

    test('return email for valid email when getOrCrash is called', () {
      expect(validEmail.getOrCrash(), equals(validEmailText));
    });

    test('throw error for invalid email when getOrCrash is called', () {
      expect(badEmail.getOrCrash, throwsA(isA<UnrepresentableStateError>()));
    });

    test('fromJson on valid email', () {
      const json = {
        'value': {
          'isLeft': false,
          'value': validEmailText,
        },
      };
      final result = EmailAddress.fromJson(json);
      expect(result, equals(EmailAddress(validEmailText)));
    });

    test('fromJson on invalid email', () {
      final json = {
        'value': {
          'isLeft': true,
          'value': const ValueFailure.invalidEmail(badEmailText).toJson(),
        },
      };
      final result = EmailAddress.fromJson(json);
      expect(result, equals(EmailAddress(badEmailText)));
    });

    test('toJson on valid email', () {
      const json = {
        'value': {
          'isLeft': false,
          'value': validEmailText,
        },
      };
      final result = validEmail.toJson();
      expect(result, equals(json));
    });

    test('toJson on invalid email', () {
      final json = {
        'value': {
          'isLeft': true,
          'value': const ValueFailure.invalidEmail(badEmailText).toJson(),
        },
      };
      final result = badEmail.toJson();
      expect(result, equals(json));
    });
  });

  group('Password', () {
    const validPasswordText = 'password';
    const badPasswordText = 'pass';
    final Password validPassword = Password(validPasswordText);
    final Password badPassword = Password(badPasswordText);

    test('have right on valid password', () {
      expect(validPassword.value, equals(const Right(validPasswordText)));
    });

    test('have left on invalid password', () {
      expect(badPassword.value, equals(const Left(ValueFailure.shortPassword(badPasswordText))));
    });

    test('be valid field should be true for valid password address', () {
      expect(validPassword.valid, equals(true));
    });

    test('be valid field should be false for valid password address', () {
      expect(badPassword.valid, equals(false));
    });

    test('return password for valid password when getOrCrash is called', () {
      expect(validPassword.getOrCrash(), equals(validPasswordText));
    });

    test('throw error for invalid password when getOrCrash is called', () {
      expect(badPassword.getOrCrash, throwsA(isA<UnrepresentableStateError>()));
    });

    test('fromJson on valid password', () {
      const json = {
        'value': {
          'isLeft': false,
          'value': validPasswordText,
        },
      };
      final result = Password.fromJson(json);
      expect(result, equals(Password(validPasswordText)));
    });

    test('fromJson on invalid password', () {
      final json = {
        'value': {
          'isLeft': true,
          'value': const ValueFailure.shortPassword(badPasswordText).toJson(),
        },
      };
      final result = Password.fromJson(json);
      expect(result, equals(Password(badPasswordText)));
    });

    test('toJson on valid password', () {
      const json = {
        'value': {
          'isLeft': false,
          'value': validPasswordText,
        },
      };
      final result = validPassword.toJson();
      expect(result, equals(json));
    });

    test('toJson on invalid password', () {
      final json = {
        'value': {
          'isLeft': true,
          'value': const ValueFailure.shortPassword(badPasswordText).toJson(),
        },
      };
      final result = badPassword.toJson();
      expect(result, equals(json));
    });
  });

  group('SingleLineString', () {
    const validStringText = 'valid string';
    const badStringText = 'valid \n string';
    final SingleLineString validString = SingleLineString(validStringText);
    final SingleLineString badString = SingleLineString(badStringText);

    test('have right on valid string', () {
      expect(validString.value, equals(const Right(validStringText)));
    });

    test('have left on invalid string', () {
      expect(badString.value, equals(const Left(ValueFailure.invalidString(badStringText))));
    });

    test('be valid field should be true for valid string address', () {
      expect(validString.valid, equals(true));
    });

    test('be valid field should be false for valid string address', () {
      expect(badString.valid, equals(false));
    });

    test('return string for valid string when getOrCrash is called', () {
      expect(validString.getOrCrash(), equals(validStringText));
    });

    test('throw error for invalid string when getOrCrash is called', () {
      expect(badString.getOrCrash, throwsA(isA<UnrepresentableStateError>()));
    });

    test('fromJson on valid string', () {
      const json = {
        'value': {
          'isLeft': false,
          'value': validStringText,
        },
      };
      final result = SingleLineString.fromJson(json);
      expect(result, equals(SingleLineString(validStringText)));
    });

    test('fromJson on invalid string', () {
      final json = {
        'value': {
          'isLeft': true,
          'value': const ValueFailure.invalidString(badStringText).toJson(),
        },
      };
      final result = SingleLineString.fromJson(json);
      expect(result, equals(SingleLineString(badStringText)));
    });

    test('toJson on valid string', () {
      const json = {
        'value': {
          'isLeft': false,
          'value': validStringText,
        },
      };
      final result = validString.toJson();
      expect(result, equals(json));
    });

    test('toJson on invalid string', () {
      final json = {
        'value': {
          'isLeft': true,
          'value': const ValueFailure.invalidString(badStringText).toJson(),
        },
      };
      final result = badString.toJson();
      expect(result, equals(json));
    });
  });
}
