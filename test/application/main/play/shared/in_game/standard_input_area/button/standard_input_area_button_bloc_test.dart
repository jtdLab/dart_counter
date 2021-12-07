import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/play/shared/in_game/input/input_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/points_left/points_left_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/standard_input_area/button/standard_key_board_button_cubit.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:mocktail/mocktail.dart';

class MockPointsLeftCubit extends MockCubit<int> implements PointsLeftCubit {}

class MockInputCubit extends MockCubit<InputState> implements InputCubit {}

class MockDartUtils extends Mock implements IDartUtils {}

void main() {
  setUpAll(() {
    // mocktail related setup
    registerFallbackValue(left<int, KtList<Dart>>(0));
  });

  late PointsLeftCubit mockPointsLeftCubit;
  late InputCubit mockInputCubit;
  final IDartUtils mockDartUtils = MockDartUtils();

  setUp(() {
    mockPointsLeftCubit = MockPointsLeftCubit();
    mockInputCubit = MockInputCubit();
  });

  test('initial state initialized correctly', () {
    // Arrange
    const value = 10;

    // Act
    final underTest = StandardKeyBoardButtonCubit(
      value,
      mockPointsLeftCubit,
      mockInputCubit,
      mockDartUtils,
    );

    // Assert
    expect(
      underTest.state,
      const StandardKeyBoardButtonState.initial(disabled: false),
    );
  });

  group('onInputCubitChange', () {
    // TODO implement tests
  });
}
