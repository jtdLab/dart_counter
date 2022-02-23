import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/training/single_training/in_training/in_single_training_bloc.dart';
import 'package:dart_counter/domain/training/abstract_i_training_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockTrainingService extends Mock implements AbstractITrainingService {}

// TODO good practice ??
class TestableInTrainingBloc extends InTrainingBloc {
  TestableInTrainingBloc(
    AbstractITrainingService trainingService,
  ) : super(trainingService);
}

void main() {
  late MockTrainingService mockTrainingService;

  setUp(() {
    mockTrainingService = MockTrainingService();
  });

  group('#Events#', () {
    group('#Canceled#', () {
      blocTest<InTrainingBloc, void>(
        'Cancel training.',
        setUp: () {
          when(() => mockTrainingService.cancel());
        },
        build: () => TestableInTrainingBloc(mockTrainingService),
        act: (bloc) => bloc.add(const InTrainingEvent.canceled()),
        verify: (_) {
          verify(() => mockTrainingService.cancel()).called(1);
        },
      );
    });
  });
}
