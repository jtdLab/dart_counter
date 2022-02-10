import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/training/score_training/in_training/in_score_training_bloc.dart';
import 'package:dart_counter/domain/training/score/i_score_training_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockScoreTrainingService extends Mock implements IScoreTrainingService {}

void main() {
  late MockScoreTrainingService trainingService;

  setUp(() {
    trainingService = MockScoreTrainingService();
  });

  group('Canceled', () {
    blocTest<InScoreTrainingBloc, void>(
      'Cancel the training.',
      build: () => InScoreTrainingBloc(trainingService),
      act: (bloc) => bloc.add(const InTrainingEvent.canceled()),
      verify: (_) => verify(() => trainingService.cancel()).called(1),
    );
  });
}
