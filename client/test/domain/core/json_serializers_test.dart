import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fnotes/domain/core/failures.dart';
import 'package:fnotes/domain/core/json_serializers.dart';

void main() {
  group(
    'EitherValueFailureOrStringConverter',
    () {
      const converter = EitherValueFailureOrStringConverter();
      const valueFailure = ValueFailure.invalidEmail('');

      group('fromJson should', () {
        test(
          'return Right for isLeft false in json',
          () {
            const value = 'Value';
            const json = {
              'isLeft': false,
              'value': value,
            };

            final result = converter.fromJson(json);
            expect(result, equals(const Right(value)));
          },
        );

        test(
          'return Left for isLeft true in json',
          () {
            final json = {
              'isLeft': true,
              'value': valueFailure.toJson(),
            };

            final result = converter.fromJson(json);
            expect(result, equals(const Left(valueFailure)));
          },
        );

        test(
          'throw AssertionError if isLeft key does not exist',
          () {
            final json = {
              'value': valueFailure.toJson(),
            };

            try {
              converter.fromJson(json);
            } catch (e) {
              expect(e, equals(isA<AssertionError>()));
            }
          },
        );

        test(
          'throw AssertionError if value key does not exist',
          () {
            final json = {
              'isLeft': true,
            };

            try {
              converter.fromJson(json);
            } catch (e) {
              expect(e, equals(isA<AssertionError>()));
            }
          },
        );
      });

      group('toJson should', () {
        test(
          'return isLeft false for Right',
          () {
            const value = 'Value';
            const expectedResult = {
              'isLeft': false,
              'value': value,
            };

            final result = converter.toJson(const Right(value));
            expect(result, equals(expectedResult));
          },
        );

        test(
          'return Left for isLeft true in json',
          () {
            final expectedResult = {
              'isLeft': true,
              'value': valueFailure.toJson(),
            };
            final result = converter.toJson(const Left(valueFailure));
            expect(result, equals(expectedResult));
          },
        );
      });
    },
  );
}
