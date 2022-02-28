import 'package:dart_counter/infrastructure/core/infrastructure_error.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
      'GIVEN msg is X '
      'THEN return "InfrastructureError: X"', () {
    // Arrange
    const msg = 'Custom error message.';
    final error = InfrastructureError(msg);

    final underTest = error.toString();

    expect(underTest, 'InfrastructureError: $msg');
  });
}
