import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/settings/change_username/change_username_bloc.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockUserService extends Mock implements IUserService {}

void main() {
  setUpAll(() {
    // mocktail related setup
    registerFallbackValue(Username.empty());
  });

  late MockUserService mockUserService;

  setUp(() {
    mockUserService = MockUserService();
  });

  test('Initial state set to ChangeUsernameInitial with empty username.', () {
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

  group('UsernameChanged', () {
    blocTest(
      'GIVEN current state is ChangeUsernameInitial '
      'THEN emit [ChangeUsernameInitial].',
      build: () => ChangeUsernameBloc(mockUserService),
      act: (ChangeUsernameBloc bloc) => bloc.add(
        const ChangeUsernameEvent.newUsernameChanged(newNewUsername: 'abcd'),
      ),
      expect: () => [
        ChangeUsernameInitial(
          newUsername: Username('abcd'),
          showErrorMessages: false,
        ),
      ],
    );

    blocTest(
      'GIVEN current state is ChangeUsernameSubmitFailure '
      'THEN emit [ChangeUsernameInitial].',
      build: () => ChangeUsernameBloc(mockUserService),
      seed: () => const ChangeUsernameState.submitFailure(
        userFailure: UserFailure.invalidEmail(),
      ),
      act: (ChangeUsernameBloc bloc) => bloc.add(
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

  group('ConfirmPressed', () {
    blocTest(
      'GIVEN current state is ChangeUsernameInitial with valid and available username '
      'THEN emit [ChangeUsernameSubmitInProgress, ChangeUsernameSubmitSuccess].',
      build: () {
        when<Future<Either<UserFailure, Unit>>>(
          () => mockUserService.updateUsername(
            newUsername: any(named: 'newUsername'),
          ),
        ).thenAnswer((_) async => right(unit));

        return ChangeUsernameBloc(mockUserService);
      },
      seed: () => ChangeUsernameState.initial(
        newUsername: Username('dummyUsername'),
        showErrorMessages: false,
      ),
      act: (ChangeUsernameBloc bloc) => bloc.add(
        const ChangeUsernameEvent.confirmPressed(),
      ),
      wait: const Duration(seconds: 1),
      expect: () => [
        const ChangeUsernameSubmitInProgress(),
        const ChangeUsernameSubmitSuccess(),
      ],
    );

    blocTest(
      'GIVEN current state is ChangeUsernameInitial with valid and not available username '
      'THEN emit [ChangeUsernameSubmitInProgress, ChangeUsernameSubmitFailure].',
      build: () {
        when<Future<Either<UserFailure, Unit>>>(
          () => mockUserService.updateUsername(
            newUsername: any(named: 'newUsername'),
          ),
        ).thenAnswer((_) async => left(const UserFailure.failure()));

        return ChangeUsernameBloc(mockUserService);
      },
      seed: () => ChangeUsernameState.initial(
        newUsername: Username('dummyUsername'),
        showErrorMessages: false,
      ),
      act: (ChangeUsernameBloc bloc) => bloc.add(
        const ChangeUsernameEvent.confirmPressed(),
      ),
      wait: const Duration(seconds: 1),
      expect: () => [
        const ChangeUsernameSubmitInProgress(),
        const ChangeUsernameSubmitFailure(
          userFailure: UserFailure.failure(),
        ),
      ],
    );

    blocTest(
      'GIVEN current state is ChangeUsernameInitial with invalid username '
      'THEN emit [ChangeUsernameSubmitFailure].',
      build: () => ChangeUsernameBloc(mockUserService),
      seed: () => ChangeUsernameState.initial(
        newUsername: Username('a'),
        showErrorMessages: false,
      ),
      act: (ChangeUsernameBloc bloc) => bloc.add(
        const ChangeUsernameEvent.confirmPressed(),
      ),
      expect: () => [
        const ChangeUsernameSubmitFailure(
          userFailure: UserFailure.invalidUsername(),
        ),
      ],
    );
  });
}
