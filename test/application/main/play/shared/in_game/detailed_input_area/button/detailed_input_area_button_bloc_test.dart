import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/play/shared/in_game/detailed_input_area/button/detailed_key_board_button_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/detailed_input_area/detailed_input_area_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/points_left/points_left_cubit.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDetailedInputAreaBloc
    extends MockBloc<DetailedInputAreaEvent, DetailedInputAreaState>
    implements DetailedInputAreaBloc {}

class MockPointsLeftCubit extends MockCubit<int> implements PointsLeftCubit {}

class MockDartUtils extends Mock implements IDartUtils {}

void main() {
  setUpAll(() {
    // mocktail related setup
    //registerFallbackValue(left<int, KtList<Dart>>(0)); // TODO n
  });

  late DetailedInputAreaBloc mockInputAreaBloc;
  late PointsLeftCubit mockPointsLeftCubit;
  final IDartUtils mockDartUtils = MockDartUtils();

  setUp(() {
    mockInputAreaBloc = MockDetailedInputAreaBloc();
    mockPointsLeftCubit = MockPointsLeftCubit();
  });

  test('initial state initialized correctly', () {
    // Arrange
    const value = 10;

    // Act
    final underTest = DetailedKeyBoardButtonCubit(
      value,
      mockInputAreaBloc,
      mockPointsLeftCubit,
      mockDartUtils,
    );

    // Assert
    expect(
      underTest.state,
      const DetailedKeyBoardButtonState.initial(value: value, disabled: false),
    );
  });

  group('onInputAreaChange', () {
    // TODO implement tests
  });
}
