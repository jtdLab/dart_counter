import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/authenticated/settings/settings_bloc.dart';
import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/core/injection.dart';
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
    group('#GetIt#', () {
      test(
          'GIVEN SettingsBloc is not registered inside getIt '
          'THEN throw error.', () {
        // Act & Assert
        expect(() => SettingsBloc.getIt(), throwsA(anything));
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
    group('#SignOutPressed#', () {
      blocTest<SettingsBloc, void>(
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
