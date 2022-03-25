import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/authenticated/settings/change_username/change_username_bloc.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dart_counter/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockUserService extends Mock implements IUserService {}

void main() {
  late MockUserService mockUserService;

  setUpAll(() {
    // Mocktail related setup
    registerFallbackValue(Username.empty());
  });

  setUp(() {
    mockUserService = MockUserService();
  });

  group('#Constructors#', () {
    group('#Standard#', () {
      test(
          'Initial state set to ChangeUsernameInitial with empty username and showErrorMessages false.',
          () {
        // Arrange & Act
        final underTest = ChangeUsernameBloc(mockUserService);

        // Assert
        expect(
          underTest.state,
          ChangeUsernameState.initial(
            newUsername: Username.empty(),
            showErrorMessages: false,
          ),
        );
      });
    });

    group('#GetIt#', () {
      test(
          'GIVEN ChangeUsernameBloc is not registered inside getIt '
          'THEN throw error.', () {
        // Act & Assert
        expect(() => ChangeUsernameBloc.getIt(), throwsA(anything));
      });

      test(
          'GIVEN ChangeUsernameBloc is registered inside getIt '
          'THEN initial state set to ChangeUsernameInitial with empty username and showErrorMessages false.',
          () {
        // Arrange
        getIt.registerFactoryParam(
          (param1, _) => ChangeUsernameBloc(mockUserService),
        );

        // Act
        final underTest = ChangeUsernameBloc.getIt();

        // Assert
        expect(
          underTest.state,
          ChangeUsernameState.initial(
            newUsername: Username.empty(),
            showErrorMessages: false,
          ),
        );
      });

      test(
          'GIVEN ChangeUsernameBloc is registered inside getIt '
          'THEN return the registered instance.', () {
        // Arrange
        final registeredInstance = ChangeUsernameBloc(mockUserService);
        getIt.registerFactoryParam((param1, _) => registeredInstance);

        // Act
        final underTest = ChangeUsernameBloc.getIt();

        // Assert
        expect(underTest, registeredInstance);
      });

      tearDown(() async {
        await getIt.reset();
      });
    });
  });

  group('#Events#', () {
    group('#UsernameChanged#', () {
      blocTest<ChangeUsernameBloc, ChangeUsernameState>(
        'GIVEN current state is ChangeUsernameInitial '
        'THEN emit [ChangeUsernameInitial].',
        build: () => ChangeUsernameBloc(mockUserService),
        act: (bloc) => bloc.add(
          const ChangeUsernameEvent.newUsernameChanged(newNewUsername: 'abcd'),
        ),
        expect: () => [
          ChangeUsernameInitial(
            newUsername: Username('abcd'),
            showErrorMessages: false,
          ),
        ],
      );

      blocTest<ChangeUsernameBloc, ChangeUsernameState>(
        'GIVEN current state is ChangeUsernameSubmitFailure '
        'THEN emit [ChangeUsernameInitial].',
        build: () => ChangeUsernameBloc(mockUserService),
        seed: () => const ChangeUsernameState.submitFailure(
          userFailure: UserFailure.invalidEmail(),
        ),
        act: (bloc) => bloc.add(
          const ChangeUsernameEvent.newUsernameChanged(newNewUsername: 'abcd'),
        ),
        expect: () => [
          ChangeUsernameInitial(
            newUsername: Username('abcd'),
            showErrorMessages: true,
          ),
        ],
      );
    });

    group('#ConfirmPressed#', () {
      blocTest<ChangeUsernameBloc, ChangeUsernameState>(
        'GIVEN current state is ChangeUsernameInitial with valid and available username '
        'THEN emit [ChangeUsernameSubmitInProgress, ChangeUsernameSubmitSuccess].',
        setUp: () {
          when(
            () => mockUserService.updateUsername(
              newUsername: any(named: 'newUsername'),
            ),
          ).thenAnswer((_) async => right(unit));
        },
        build: () => ChangeUsernameBloc(mockUserService),
        seed: () => ChangeUsernameState.initial(
          newUsername: Username('dummyUsername'),
          showErrorMessages: false,
        ),
        act: (bloc) => bloc.add(
          const ChangeUsernameEvent.confirmPressed(),
        ),
        wait: const Duration(seconds: 1),
        expect: () => [
          const ChangeUsernameSubmitInProgress(),
          const ChangeUsernameSubmitSuccess(),
        ],
      );

      blocTest<ChangeUsernameBloc, ChangeUsernameState>(
        'GIVEN current state is ChangeUsernameInitial with valid and not available username '
        'THEN emit [ChangeUsernameSubmitInProgress, ChangeUsernameSubmitFailure].',
        setUp: () {
          when(
            () => mockUserService.updateUsername(
              newUsername: any(named: 'newUsername'),
            ),
          ).thenAnswer((_) async => left(const UserFailure.unexpected()));
        },
        build: () => ChangeUsernameBloc(mockUserService),
        seed: () => ChangeUsernameState.initial(
          newUsername: Username('dummyUsername'),
          showErrorMessages: false,
        ),
        act: (bloc) => bloc.add(
          const ChangeUsernameEvent.confirmPressed(),
        ),
        wait: const Duration(seconds: 1),
        expect: () => [
          const ChangeUsernameSubmitInProgress(),
          const ChangeUsernameSubmitFailure(
            userFailure: UserFailure.unexpected(),
          ),
        ],
      );

      blocTest<ChangeUsernameBloc, ChangeUsernameState>(
        'GIVEN current state is ChangeUsernameInitial with invalid username '
        'THEN emit [ChangeUsernameSubmitFailure].',
        build: () => ChangeUsernameBloc(mockUserService),
        seed: () => ChangeUsernameState.initial(
          newUsername: Username('a'),
          showErrorMessages: false,
        ),
        act: (bloc) => bloc.add(
          const ChangeUsernameEvent.confirmPressed(),
        ),
        expect: () => [
          const ChangeUsernameSubmitFailure(
            userFailure: UserFailure.invalidUsername(),
          ),
        ],
      );
    });
  });
}
