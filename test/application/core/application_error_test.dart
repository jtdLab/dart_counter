import 'package:dart_counter/application/core/application_error.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
      'GIVEN msg is X '
      'THEN return "ApplicationError: X"', () {
    // Arrange
    const msg = 'Custom error message.';
    final error = ApplicationError(msg);

    final underTest = error.toString();

    expect(underTest, 'ApplicationError: $msg');
  });
}
