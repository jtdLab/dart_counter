import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/training/double_training/in_training/in_double_training_bloc.dart';
import 'package:dart_counter/domain/training/double/i_double_training_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDoubleTrainingService extends Mock implements IDoubleTrainingService {
}

void main() {
  late MockDoubleTrainingService trainingService;

  setUp(() {
    trainingService = MockDoubleTrainingService();
  });

  group('#Events#', () {
    group('#Canceled#', () {
      blocTest<InDoubleTrainingBloc, void>(
        'Cancel the training.',
        build: () => InDoubleTrainingBloc(trainingService),
        act: (bloc) => bloc.add(const InTrainingEvent.canceled()),
        verify: (_) => verify(() => trainingService.cancel()).called(1),
      );
    });
  });
}
