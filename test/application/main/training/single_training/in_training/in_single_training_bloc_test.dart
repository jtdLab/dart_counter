import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/authenticated/training/single_training/in_training/in_single_training_bloc.dart';
import 'package:dart_counter/domain/training/single/i_single_training_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockSingleTrainingService extends Mock implements ISingleTrainingService {
}

void main() {
  late MockSingleTrainingService trainingService;

  setUp(() {
    trainingService = MockSingleTrainingService();
  });

  group('#Constructor#', () {
    group('#GetIt#', () {
      test(
          'GIVEN InSingleTrainingBloc is not registered inside getIt '
          'THEN throw error.', () {
        // Act & Assert
        expect(
          () => InSingleTrainingBloc.getIt(),
          throwsA(anything),
        );
      });

      test(
          'GIVEN InSingleTrainingBloc is registered inside getIt '
          'THEN return the registered instance.', () {
        // Arrange
        final registeredInstance = InSingleTrainingBloc(trainingService);
        getIt.registerFactoryParam((param1, _) => registeredInstance);

        // Act
        final underTest = InSingleTrainingBloc.getIt();

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
      blocTest<InSingleTrainingBloc, void>(
        'Cancel the training.',
        build: () => InSingleTrainingBloc(trainingService),
        act: (bloc) => bloc.add(const InTrainingEvent.canceled()),
        verify: (_) => verify(() => trainingService.cancel()).called(1),
      );
    });
  });
}
