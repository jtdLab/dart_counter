import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/training/shared/in_training/in_training_bloc.dart';
import 'package:dart_counter/domain/training/abstract_i_training_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAbstractITrainingService extends Mock
    implements AbstractITrainingService {}

void main() {
  late AbstractITrainingService trainingService;

  setUp(() {
    trainingService = MockAbstractITrainingService();
  });

  blocTest<InTrainingBloc, void>(
    'cancels the training when Canceled was added',
    setUp: () {
      when(() => trainingService.cancel());
    },
    build: () => InTrainingBloc(trainingService),
    act: (bloc) => bloc.add(const InTrainingEvent.canceled()),
    verify: (_) => verify(() => trainingService.cancel()).called(1),
  );
}
