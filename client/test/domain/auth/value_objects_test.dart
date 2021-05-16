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

    test('should have right on valid email', () {
      expect(validEmail.value, equals(const Right(validEmailText)));
    });

    test('should have left on invalid email', () {
      expect(badEmail.value, equals(const Left(ValueFailure.invalidEmail(badEmailText))));
    });

    test('valid field should be true for valid email address', () {
      expect(validEmail.valid, equals(true));
    });

    test('valid field should be false for valid email address', () {
      expect(badEmail.valid, equals(false));
    });

    test('getOrCrash should return email for valid email', () {
      expect(validEmail.getOrCrash(), equals(validEmailText));
    });

    test('getOrCrash should throw error for invalid email', () {
      expect(badEmail.getOrCrash, throwsA(isA<UnrepresentableStateError>()));
    });
  });

  group('Password', () {});
}