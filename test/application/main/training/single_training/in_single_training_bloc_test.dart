import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/training/single_training/in_training/in_single_training_bloc.dart';
import 'package:dart_counter/domain/training/single/i_single_training_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockSingleTrainingService extends Mock implements ISingleTrainingService {
}

void main() {
  late MockSingleTrainingService trainingService;

  setUp(() {
    trainingService = MockSingleTrainingService();
  });

  group('Canceled', () {
    blocTest<InSingleTrainingBloc, void>(
      'Cancel the training.',
      build: () => InSingleTrainingBloc(trainingService),
      act: (bloc) => bloc.add(const InTrainingEvent.canceled()),
      verify: (_) => verify(() => trainingService.cancel()).called(1),
    );
  });
}
