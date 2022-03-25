import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/authenticated/training/bobs_twenty_seven/in_training/in_bobs_twenty_seven_bloc.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/i_bobs_twenty_seven_service.dart';
import 'package:dart_counter/core/injection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockBobsTwentySevenTrainingService extends Mock
    implements IBobsTwentySevenService {}

void main() {
  late MockBobsTwentySevenTrainingService trainingService;

  setUp(() {
    trainingService = MockBobsTwentySevenTrainingService();
  });

  group('#Constructor#', () {
    group('#GetIt#', () {
      test(
          'GIVEN InBobsTwentySevenBloc is not registered inside getIt '
          'THEN throw error.', () {
        // Act & Assert
        expect(
          () => InBobsTwentySevenBloc.getIt(),
          throwsA(anything),
        );
      });

      test(
          'GIVEN InBobsTwentySevenBloc is registered inside getIt '
          'THEN return the registered instance.', () {
        // Arrange
        final registeredInstance = InBobsTwentySevenBloc(trainingService);
        getIt.registerFactoryParam((param1, _) => registeredInstance);

        // Act
        final underTest = InBobsTwentySevenBloc.getIt();

        // Assert
        expect(underTest, registeredInstance);
      });

      tearDown(() async {
        await getIt.reset();
      });
    });
  });

  group('#Events#', () {
    group('#Canceled#', () {
      blocTest<InBobsTwentySevenBloc, void>(
        'Cancel the training.',
        build: () => InBobsTwentySevenBloc(trainingService),
        act: (bloc) => bloc.add(const InTrainingEvent.canceled()),
        verify: (_) => verify(() => trainingService.cancel()).called(1),
      );
    });
  });
}
