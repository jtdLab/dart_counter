// TODO
/**
 * import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/application_error.dart';
import 'package:dart_counter/application/main/play/shared/advanced_settings/advanced_settings_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/detailed_input_area/detailed_input_area_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/detailed_input_area/key_board/erease_button/detailed_erease_button_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/input/input_cubit.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/play/advanced_settings.dart';
import 'package:dart_counter/presentation/core/core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDetailedInputAreaBloc
    extends MockBloc<DetailedInputAreaEvent, DetailedInputAreaState>
    implements DetailedInputAreaBloc {}

class MockInputCubit extends MockCubit<InputState> implements InputCubit {}

class MockAdvancedSettingsBloc
    extends MockBloc<AdvancedSettingsEvent, AdvancedSettings>
    implements AdvancedSettingsBloc {}

void main() {
  late DetailedInputAreaBloc mockInputAreaBloc;
  late InputCubit mockInputCubit;
  late AdvancedSettingsBloc mockAdvancedSettingsBloc;

  setUp(() {
    mockInputAreaBloc = MockDetailedInputAreaBloc();
    mockInputCubit = MockInputCubit();
    mockAdvancedSettingsBloc = MockAdvancedSettingsBloc();

    when(() => mockAdvancedSettingsBloc.state).thenReturn(
      AdvancedSettings.dummy().copyWith(smartKeyBoardActivated: false),
    );
  });

  group('DetailEreaseButtonBloc', () {
    test(
        'initial state is DetailedEreaseButtonDisabled '
        'when smart key board is activated', () {
      // Arrange
      when(() => mockAdvancedSettingsBloc.state).thenReturn(
        AdvancedSettings.dummy().copyWith(smartKeyBoardActivated: true),
      );

      // Act
      final underTest = DetailedEreaseButtonBloc(
        mockInputAreaBloc,
        mockInputCubit,
        mockAdvancedSettingsBloc,
      );

      // Assert
      expect(
        underTest.state,
        const DetailedEreaseButtonState.disabled(),
      );
    });

    test(
        'initial state is DetailedEreaseButtonEnabled '
        'when smart key board is not activated', () {
      // Arrange
      when(() => mockAdvancedSettingsBloc.state).thenReturn(
        AdvancedSettings.dummy().copyWith(smartKeyBoardActivated: false),
      );

      // Act
      final underTest = DetailedEreaseButtonBloc(
        mockInputAreaBloc,
        mockInputCubit,
        mockAdvancedSettingsBloc,
      );

      // Assert
      expect(
        underTest.state,
        const DetailedEreaseButtonState.enabled(),
      );
    });

    group('Started', () {
      blocTest<DetailedEreaseButtonBloc, DetailedEreaseButtonState>(
        'throws ApplicationError when inputCubit emits points',
        setUp: () {
          whenListen(
            mockInputCubit,
            Stream.fromIterable([
              const InputState.points(points: 2),
              const InputState.points(points: 20),
            ]),
          );
        },
        build: () => DetailedEreaseButtonBloc(
          mockInputAreaBloc,
          mockInputCubit,
          mockAdvancedSettingsBloc,
        ),
        act: (bloc) => bloc.add(const DetailedEreaseButtonEvent.started()),
        errors: () => [isA<ApplicationError>()],
      );

      blocTest<DetailedEreaseButtonBloc, DetailedEreaseButtonState>(
        'emits DetailedEreaseButtonDisabled for each emitted empty darts by inputCubit',
        setUp: () {
          whenListen(
            mockInputCubit,
            Stream.fromIterable([
              const InputState.darts(darts: KtList.empty()),
              const InputState.darts(darts: KtList.empty()),
            ]),
          );
        },
        build: () => DetailedEreaseButtonBloc(
          mockInputAreaBloc,
          mockInputCubit,
          mockAdvancedSettingsBloc,
        ),
        act: (bloc) => bloc.add(const DetailedEreaseButtonEvent.started()),
        expect: () => const [
          DetailedEreaseButtonState.disabled(),
        ],
      );

      blocTest<DetailedEreaseButtonBloc, DetailedEreaseButtonState>(
        'emits DetailedEreaseButtonEnabled for each emitted not empty darts by inputCubit',
        setUp: () {
          whenListen(
            mockInputCubit,
            Stream.fromIterable([
              InputState.darts(
                darts: [
                  const Dart(type: DartType.single, value: 20),
                ].toImmutableList(),
              ),
              InputState.darts(
                darts: [
                  const Dart(type: DartType.single, value: 10),
                ].toImmutableList(),
              ),
            ]),
          );
        },
        build: () => DetailedEreaseButtonBloc(
          mockInputAreaBloc,
          mockInputCubit,
          mockAdvancedSettingsBloc,
        ),
        act: (bloc) => bloc.add(const DetailedEreaseButtonEvent.started()),
        expect: () => const [
          DetailedEreaseButtonState.enabled(),
        ],
      );

      blocTest<DetailedEreaseButtonBloc, DetailedEreaseButtonState>(
        'emits [DetailedEreaseButtonEnabled, DetailedEreaseButtonDisabled] '
        'when inputCubit emits [not empty darts, empty darts]',
        setUp: () {
          whenListen(
            mockInputCubit,
            Stream.fromIterable([
              InputState.darts(
                darts: [
                  const Dart(type: DartType.single, value: 20),
                ].toImmutableList(),
              ),
              const InputState.darts(darts: KtList.empty()),
            ]),
          );
        },
        build: () => DetailedEreaseButtonBloc(
          mockInputAreaBloc,
          mockInputCubit,
          mockAdvancedSettingsBloc,
        ),
        act: (bloc) => bloc.add(const DetailedEreaseButtonEvent.started()),
        expect: () => const [
          DetailedEreaseButtonState.enabled(),
          DetailedEreaseButtonState.disabled(),
        ],
      );
    });

    group('Pressed', () {
      blocTest<DetailedEreaseButtonBloc, DetailedEreaseButtonState>(
        'throws ApplicationError '
        'when inputCubit has points',
        setUp: () {
          when(() => mockInputCubit.state)
              .thenReturn(const InputState.points(points: 2));
        },
        build: () => DetailedEreaseButtonBloc(
          mockInputAreaBloc,
          mockInputCubit,
          mockAdvancedSettingsBloc,
        ),
        act: (bloc) => bloc.add(const DetailedEreaseButtonEvent.pressed()),
        errors: () => [
          isA<ApplicationError>(),
        ],
      );

      blocTest<DetailedEreaseButtonBloc, DetailedEreaseButtonState>(
        'does nothing '
        'when inputCubit has empty darts',
        setUp: () {
          when(() => mockInputCubit.state)
              .thenReturn(const InputState.darts(darts: KtList.empty()));
        },
        build: () => DetailedEreaseButtonBloc(
          mockInputAreaBloc,
          mockInputCubit,
          mockAdvancedSettingsBloc,
        ),
        act: (bloc) => bloc.add(const DetailedEreaseButtonEvent.pressed()),
        verify: (_) {
          verifyNever(
            () => mockInputAreaBloc.add(
              const DetailedInputAreaEvent.unfocusRequested(),
            ),
          );

          verifyNever(
            () => mockInputCubit.update(newInput: right(const KtList.empty())),
          );
        },
      );

      blocTest<DetailedEreaseButtonBloc, DetailedEreaseButtonState>(
        'adds UnfocusRequested to inputAreaBloc '
        'calls update of inputCubit with darts where the last dart got removed '
        'when inputCubit has not empty darts',
        setUp: () {
          when(() => mockInputCubit.state).thenReturn(
            InputState.darts(
              darts: [
                const Dart(type: DartType.single, value: 20),
                const Dart(type: DartType.single, value: 10),
              ].toImmutableList(),
            ),
          );
        },
        build: () => DetailedEreaseButtonBloc(
          mockInputAreaBloc,
          mockInputCubit,
          mockAdvancedSettingsBloc,
        ),
        act: (bloc) => bloc.add(const DetailedEreaseButtonEvent.pressed()),
        verify: (_) {
          verify(
            () => mockInputAreaBloc.add(
              const DetailedInputAreaEvent.unfocusRequested(),
            ),
          ).called(1);

          verify(
            () => mockInputCubit.update(
              newInput: right(
                [
                  const Dart(type: DartType.single, value: 20),
                ].toImmutableList(),
              ),
            ),
          ).called(1);
        },
      );
    });
  });
}

 */