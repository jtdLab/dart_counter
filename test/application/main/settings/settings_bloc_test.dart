import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/settings/settings_bloc.dart';
import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthService extends Mock implements IAuthService {}

void main() {
  late MockAuthService mockAuthService;

  setUp(() {
    mockAuthService = MockAuthService();
  });

  group('#Constructors#', () {
    group('#Standard#', () {
      test('Initial state set to SettingsInitial with localeChanged false.',
          () {
        // Act
        final underTest = SettingsBloc(mockAuthService);

        // Assert
        expect(
          underTest.state,
          const SettingsState.initial(localeChanged: false),
        );
      });
    });

    group('#GetIt#', () {
      test(
          'GIVEN SettingsBloc is not registered inside getIt '
          'THEN throw error.', () {
        // Act & Assert
        expect(() => SettingsBloc.getIt(), throwsA(anything));
      });

      test(
          'GIVEN SettingsBloc is registered inside getIt '
          'THEN initial state set to SettingsInitial with localeChanged false.',
          () {
        // Arrange
        getIt.registerFactoryParam(
          (param1, _) => SettingsBloc(mockAuthService),
        );

        // Act
        final underTest = SettingsBloc.getIt();

        // Assert
        expect(
          underTest.state,
          const SettingsState.initial(localeChanged: false),
        );
      });

      test(
          'GIVEN SettingsBloc is registered inside getIt '
          'THEN return the registered instance.', () {
        // Arrange
        final registeredInstance = SettingsBloc(mockAuthService);
        getIt.registerFactoryParam((param1, _) => registeredInstance);

        // Act
        final underTest = SettingsBloc.getIt();

        // Assert
        expect(underTest, registeredInstance);
      });

      tearDown(() async {
        await getIt.reset();
      });
    });
  });

  group('#Events#', () {
    group('LocaleChanged', () {
      blocTest<SettingsBloc, SettingsState>(
        'GIVEN current state is SettingsInitial with localeChanged false '
        'THEN emit [SettingsInitial, SettingsInitial].',
        build: () => SettingsBloc(mockAuthService),
        seed: () => const SettingsState.initial(localeChanged: false),
        act: (bloc) => bloc.add(const SettingsEvent.localeChanged()),
        expect: () => [
          const SettingsState.initial(localeChanged: true),
          const SettingsState.initial(localeChanged: false),
        ],
      );
    });

    group('SignOutPressed', () {
      blocTest<SettingsBloc, SettingsState>(
        'Sign out.',
        setUp: () {
          when(() => mockAuthService.signOut()).thenAnswer(
            (_) async => right(unit),
          );
        },
        build: () => SettingsBloc(mockAuthService),
        act: (bloc) => bloc.add(const SettingsEvent.signOutPressed()),
        verify: (_) {
          verify(() => mockAuthService.signOut()).called(1);
        },
      );
    });
  });
}
