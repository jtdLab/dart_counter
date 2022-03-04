import 'package:dart_counter/infrastructure/core/utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('#ShaX#', () {
    group('#toSha256#', () {
      test(
          'GIVEN a string '
          'THEN return the sha256 hash of it.', () {
        // Arrange
        const string = 'abcdef12345';

        // Act
        final underTest = string.toSha256();

        // Assert
        expect(
          underTest,
          'fb7e36ab9aa3c1a2853d6956211c3a23350490e8810e4157fbb48eaf4635652a',
        );
      });
    });
  });
}
