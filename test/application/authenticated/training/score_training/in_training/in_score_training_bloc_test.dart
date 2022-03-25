import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/authenticated/training/score_training/in_training/in_score_training_bloc.dart';
import 'package:dart_counter/domain/training/score/i_score_training_service.dart';
import 'package:dart_counter/core/injection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockScoreTrainingService extends Mock implements IScoreTrainingService {}

void main() {
  late MockScoreTrainingService trainingService;

  setUp(() {
    trainingService = MockScoreTrainingService();
  });

  group('#Constructor#', () {
    group('#GetIt#', () {
      test(
          'GIVEN InScoreTrainingBloc is not registered inside getIt '
          'THEN throw error.', () {
        // Act & Assert
        expect(
          () => InScoreTrainingBloc.getIt(),
          throwsA(anything),
        );
      });

      test(
          'GIVEN InScoreTrainingBloc is registered inside getIt '
          'THEN return the registered instance.', () {
        // Arrange
        final registeredInstance = InScoreTrainingBloc(trainingService);
        getIt.registerFactoryParam((param1, _) => registeredInstance);

        // Act
        final underTest = InScoreTrainingBloc.getIt();

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
      blocTest<InScoreTrainingBloc, void>(
        'Cancel the training.',
        build: () => InScoreTrainingBloc(trainingService),
        act: (bloc) => bloc.add(const InTrainingEvent.canceled()),
        verify: (_) => verify(() => trainingService.cancel()).called(1),
      );
    });
  });
}
