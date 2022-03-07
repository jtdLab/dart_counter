import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/infrastructure/game/dart_dto.dart';
import 'package:dart_counter/infrastructure/play/dart_utils.dart';
import 'package:dart_counter/presentation/core/core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dart_game/util.dart' as ex;

class MockDartUtils extends Mock implements ex.DartUtils {}

void main() {
  late MockDartUtils mockDartUtils;

  late DartUtils underTest;

  setUp(() {
    mockDartUtils = MockDartUtils();

    underTest = DartUtils(mockDartUtils);
  });

  group('#Methods#', () {
    group('#maxDartsOnDouble#', () {
      setUp(() {
        when(
          () => mockDartUtils.maxDartsOnDouble(
            pointsLeft: any(named: 'pointsLeft'),
            points: any(named: 'points'),
          ),
        ).thenReturn(1);
      });

      test(
          'GIVEN pointsLeft and points '
          'THEN call maxDartsOnDouble with pointsLeft and points.', () {
        // Arrange
        const pointsLeft = 501;
        const points = 100;

        // Act
        underTest.maxDartsOnDouble(pointsLeft: pointsLeft, points: points);

        // Assert
        verify(
          () => mockDartUtils.maxDartsOnDouble(
            pointsLeft: pointsLeft,
            points: points,
          ),
        ).called(1);
      });
    });

    group('#maxDartsThrown#', () {
      setUp(() {
        when(
          () => mockDartUtils.maxDartsThrown(
            pointsLeft: any(named: 'pointsLeft'),
            points: any(named: 'points'),
          ),
        ).thenReturn(1);
      });

      test(
          'GIVEN pointsLeft and points '
          'THEN call maxDartsThrown with pointsLeft and points.', () {
        // Arrange
        const pointsLeft = 501;
        const points = 100;

        // Act
        underTest.maxDartsThrown(pointsLeft: pointsLeft, points: points);

        // Assert
        verify(
          () => mockDartUtils.maxDartsThrown(
            pointsLeft: pointsLeft,
            points: points,
          ),
        ).called(1);
      });
    });

    group('#minDartsOnDouble#', () {
      setUp(() {
        when(
          () => mockDartUtils.minDartsOnDouble(
            pointsLeft: any(named: 'pointsLeft'),
            points: any(named: 'points'),
          ),
        ).thenReturn(1);
      });

      test(
          'GIVEN pointsLeft and points '
          'THEN call minDartsOnDouble with pointsLeft and points.', () {
        // Arrange
        const pointsLeft = 501;
        const points = 100;

        // Act
        underTest.minDartsOnDouble(pointsLeft: pointsLeft, points: points);

        // Assert
        verify(
          () => mockDartUtils.minDartsOnDouble(
            pointsLeft: pointsLeft,
            points: points,
          ),
        ).called(1);
      });
    });

    group('#minDartsThrown#', () {
      setUp(() {
        when(
          () => mockDartUtils.minDartsThrown(
            pointsLeft: any(named: 'pointsLeft'),
            points: any(named: 'points'),
          ),
        ).thenReturn(1);
      });

      test(
          'GIVEN pointsLeft and points '
          'THEN call minDartsThrown with pointsLeft and points.', () {
        // Arrange
        const pointsLeft = 501;
        const points = 100;

        // Act
        underTest.minDartsThrown(pointsLeft: pointsLeft, points: points);

        // Assert
        verify(
          () => mockDartUtils.minDartsThrown(
            pointsLeft: pointsLeft,
            points: points,
          ),
        ).called(1);
      });
    });

    group('#validatePoints#', () {
      setUp(() {
        when(
          () => mockDartUtils.validatePoints(
            pointsLeft: any(named: 'pointsLeft'),
            points: any(named: 'points'),
          ),
        ).thenReturn(true);
      });

      test(
          'GIVEN pointsLeft and points '
          'THEN call validatePoints with pointsLeft and points.', () {
        // Arrange
        const pointsLeft = 501;
        const points = 100;

        // Act
        underTest.validatePoints(pointsLeft: pointsLeft, points: points);

        // Assert
        verify(
          () => mockDartUtils.validatePoints(
            pointsLeft: pointsLeft,
            points: points,
          ),
        ).called(1);
      });
    });

    group('#validateDarts#', () {
      setUp(() {
        when(
          () => mockDartUtils.validateDarts(
            pointsLeft: any(named: 'pointsLeft'),
            darts: any(named: 'darts'),
          ),
        ).thenReturn(true);
      });

      test(
          'GIVEN pointsLeft and darts '
          'THEN call validateDarts with pointsLeft and darts.', () {
        // Arrange
        const pointsLeft = 501;
        final darts = KtList.from([Dart.dummy()]);

        // Act
        underTest.validateDarts(pointsLeft: pointsLeft, darts: darts);

        // Assert
        verify(
          () => mockDartUtils.validateDarts(
            pointsLeft: pointsLeft,
            darts: darts
                .asList()
                .map((dart) => DartDto.fromDomain(dart).toExternal())
                .toList(),
          ),
        ).called(1);
      });
    });

    group('#isFinish#', () {
      setUp(() {
        when(
          () => mockDartUtils.isFinish(
            points: any(named: 'points'),
          ),
        ).thenReturn(true);
      });

      test(
          'GIVEN points '
          'THEN call isFinish with points.', () {
        // Arrange
        const points = 100;

        // Act
        underTest.isFinish(points: points);

        // Assert
        verify(
          () => mockDartUtils.isFinish(
            points: points,
          ),
        ).called(1);
      });
    });
  });
}
