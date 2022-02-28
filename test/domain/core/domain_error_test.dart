import 'package:dart_counter/domain/core/domain_error.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('#Methods#', () {
    group('#toString#', () {
      test(
          'GIVEN msg is X '
          'THEN return "DomainError: X"', () {
        // Arrange
        const msg = 'Custom error message.';
        final error = DomainError(msg);

        final underTest = error.toString();

        expect(underTest, 'DomainError: $msg');
      });
    });
  });
}
