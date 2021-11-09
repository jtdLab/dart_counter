import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/core/errors.dart';
import 'package:dart_counter/application/settings/change_username/change_username_bloc.dart';
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

  test('initial state initialized correctly', () {
    // Arrange & Act
    final underTest = ChangeUsernameBloc(mockUserService);

    // Assert
    expect(
      underTest.state,
      ChangeUsernameState.initial(
        username: Username.empty(),
        showErrorMessages: false,
      ),
    );
  });

  group('UsernameChanged', () {
    blocTest(
      'emits [ChangeUsernameInitial] when current state is ChangeUsernameInitial ',
      build: () => ChangeUsernameBloc(mockUserService),
      act: (ChangeUsernameBloc bloc) => bloc.add(
        const ChangeUsernameEvent.newUsernameChanged(newUsername: 'abcd'),
      ),
      expect: () => [
        ChangeUsernameInitial(
          username: Username('abcd'),
          showErrorMessages: false,
        ),
      ],
    );

    blocTest(
      'emits [ChangeUsernameInitial] when current state is ChangeUsernameSubmitFailure ',
      build: () => ChangeUsernameBloc(mockUserService),
      seed: () => const ChangeUsernameState.submitFailure(
        userFailure: UserFailure.invalidEmail(),
      ),
      act: (ChangeUsernameBloc bloc) => bloc.add(
        const ChangeUsernameEvent.newUsernameChanged(newUsername: 'abcd'),
      ),
      expect: () => [
        ChangeUsernameInitial(
          username: Username('abcd'),
          showErrorMessages: true,
        ),
      ],
    );

    blocTest(
      'throws Error when current state is ChangeUsernameSubmitInProgress ',
      build: () => ChangeUsernameBloc(mockUserService),
      seed: () => const ChangeUsernameState.submitInProgress(),
      act: (ChangeUsernameBloc bloc) => bloc.add(
        const ChangeUsernameEvent.newUsernameChanged(newUsername: 'abcd'),
      ),
      errors: () => [isA<UnexpectedStateError>()],
    );

    blocTest(
      'throws Error when current state is ChangeUsernameSubmitSuccess ',
      build: () => ChangeUsernameBloc(mockUserService),
      seed: () => const ChangeUsernameState.submitSuccess(),
      act: (ChangeUsernameBloc bloc) => bloc.add(
        const ChangeUsernameEvent.newUsernameChanged(newUsername: 'abcd'),
      ),
      errors: () => [isA<UnexpectedStateError>()],
    );
  });

  group('ConfirmPressed', () {
    blocTest(
      'emits [ChangeUsernameSubmitInProgress, ChangeUsernameSubmitSuccess] '
      'when current state is ChangeUsernameInitial with valid and available username ',
      build: () {
        when<Future<Either<UserFailure, Unit>>>(
          () => mockUserService.updateUsername(
            newUsername: any(named: 'newUsername'),
          ),
        ).thenAnswer((_) async => right(unit));

        return ChangeUsernameBloc(mockUserService);
      },
      seed: () => ChangeUsernameState.initial(
        username: Username('dummyUsername'),
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
      'emits [ChangeUsernameSubmitInProgress, ChangeUsernameSubmitFailure] '
      'when current state is ChangeUsernameInitial with valid and not available username ',
      build: () {
        when<Future<Either<UserFailure, Unit>>>(
          () => mockUserService.updateUsername(
            newUsername: any(named: 'newUsername'),
          ),
        ).thenAnswer((_) async => left(const UserFailure.failure()));

        return ChangeUsernameBloc(mockUserService);
      },
      seed: () => ChangeUsernameState.initial(
        username: Username('dummyUsername'),
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
      'emits [ChangeUsernameSubmitFailure] '
      'when current state is ChangeUsernameInitial with invalid username ',
      build: () => ChangeUsernameBloc(mockUserService),
      seed: () => ChangeUsernameState.initial(
        username: Username('a'),
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

    blocTest(
      'throws Error when current state is ChangeUsernameSubmitInProgress ',
      build: () => ChangeUsernameBloc(mockUserService),
      seed: () => const ChangeUsernameState.submitInProgress(),
      act: (ChangeUsernameBloc bloc) =>
          bloc.add(const ChangeUsernameEvent.confirmPressed()),
      errors: () => [isA<UnexpectedStateError>()],
    );

    blocTest(
      'throws Error when current state is ChangeUsernameSubmitSuccess ',
      build: () => ChangeUsernameBloc(mockUserService),
      seed: () => const ChangeUsernameState.submitSuccess(),
      act: (ChangeUsernameBloc bloc) =>
          bloc.add(const ChangeUsernameEvent.confirmPressed()),
      errors: () => [isA<UnexpectedStateError>()],
    );

    blocTest(
      'throws Error when current state is ChangeUsernameSubmitFailure ',
      build: () => ChangeUsernameBloc(mockUserService),
      seed: () => const ChangeUsernameState.submitFailure(
        userFailure: UserFailure.invalidEmail(),
      ),
      act: (ChangeUsernameBloc bloc) =>
          bloc.add(const ChangeUsernameEvent.confirmPressed()),
      errors: () => [isA<UnexpectedStateError>()],
    );
  });
}
