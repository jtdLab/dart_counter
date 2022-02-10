import 'package:dart_counter/core/stream_x.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // TODO this testcases are wrong the method doesnt complete the stream
  group('notMatchingTypeCompleteWithError', () {
    test('', () {
      // Arrange
      final errorObj = Error();
      final stream = Stream.fromIterable([1, 2, 'notMatching', 3, 4]);

      // Act
      final underTest = stream.notMatchingTypeCompleteWithError<int>(errorObj);

      // Assert
      expect(underTest, isNot(isA<Stream<int>>()));
      expect(underTest, emitsInOrder([1, 2, emitsError(errorObj), 3, 4]));
    });
  });

  group('whereTypeElseCompleteWithError', () {
    // TODO this testcases are wrong the method doesnt complete the stream
    test('', () {
      // Arrange
      final errorObj = Error();
      final stream = Stream.fromIterable([1, 2, 'notMatching', 3, 4]);

      // Act
      final underTest = stream.whereTypeElseCompleteWithError<int>(errorObj);

      // Assert
      expect(underTest, isA<Stream<int>>());
      expect(underTest, emitsInOrder([1, 2, emitsError(errorObj), 3, 4]));
    });
  });
}
