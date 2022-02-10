import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/settings/change_email/change_email_bloc.dart';
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
    registerFallbackValue(EmailAddress.empty());
  });

  late MockUserService mockUserService;

  setUp(() {
    mockUserService = MockUserService();
  });

  test(
      'Initial state set to ChangeEmailInitial with empty email and showErrorMessages false.',
      () {
    // Arrange & Act
    final underTest = ChangeEmailBloc(mockUserService);

    // Assert
    expect(
      underTest.state,
      ChangeEmailState.initial(
        newEmail: EmailAddress.empty(),
        showErrorMessages: false,
      ),
    );
  });

  group('NewEmailChanged', () {
    blocTest(
      'GIVEN current state is ChangeEmailInitial '
      'THEN emit [ChangeEmailInitial].',
      build: () => ChangeEmailBloc(mockUserService),
      act: (ChangeEmailBloc bloc) =>
          bloc.add(const ChangeEmailEvent.newEmailChanged(newNewEmail: 'abcd')),
      expect: () => [
        ChangeEmailInitial(
          newEmail: EmailAddress('abcd'),
          showErrorMessages: false,
        ),
      ],
    );

    blocTest(
      'GIVEN current state is ChangeEmailSubmitFailure '
      'THEN emit [ChangeEmailInitial].',
      build: () => ChangeEmailBloc(mockUserService),
      seed: () => const ChangeEmailState.submitFailure(
        userFailure: UserFailure.invalidEmail(),
      ),
      act: (ChangeEmailBloc bloc) =>
          bloc.add(const ChangeEmailEvent.newEmailChanged(newNewEmail: 'abcd')),
      expect: () => [
        ChangeEmailInitial(
          newEmail: EmailAddress('abcd'),
          showErrorMessages: true,
        ),
      ],
    );
  });

  group('ConfirmPressed', () {
    blocTest(
      'GIVEN current state is ChangeEmailInitial with valid and available email '
      'THEN emit [ChangeEmailSubmitInProgress, ChangeEmailSubmitSuccess].',
      build: () {
        when<Future<Either<UserFailure, Unit>>>(
          () => mockUserService.updateEmailAddress(
            newEmailAddress: any(named: 'newEmailAddress'),
          ),
        ).thenAnswer((_) async => right(unit));

        return ChangeEmailBloc(mockUserService);
      },
      seed: () => ChangeEmailState.initial(
        newEmail: EmailAddress('a@b.com'),
        showErrorMessages: false,
      ),
      act: (ChangeEmailBloc bloc) => bloc.add(
        const ChangeEmailEvent.confirmPressed(),
      ),
      wait: const Duration(seconds: 1),
      expect: () => [
        const ChangeEmailSubmitInProgress(),
        const ChangeEmailSubmitSuccess(),
      ],
    );

    blocTest(
      'GIVEN current state is ChangeEmailInitial with valid and not available email '
      'THEN emit [ChangeEmailSubmitInProgress, ChangeEmailSubmitFailure].',
      build: () {
        when<Future<Either<UserFailure, Unit>>>(
          () => mockUserService.updateEmailAddress(
            newEmailAddress: any(named: 'newEmailAddress'),
          ),
        ).thenAnswer((_) async => left(const UserFailure.unexpected()));

        return ChangeEmailBloc(mockUserService);
      },
      seed: () => ChangeEmailState.initial(
        newEmail: EmailAddress('a@b.com'),
        showErrorMessages: false,
      ),
      act: (ChangeEmailBloc bloc) => bloc.add(
        const ChangeEmailEvent.confirmPressed(),
      ),
      wait: const Duration(seconds: 1),
      expect: () => [
        const ChangeEmailSubmitInProgress(),
        const ChangeEmailSubmitFailure(
          userFailure: UserFailure.unexpected(),
        ),
      ],
    );

    blocTest(
      'GIVEN current state is ChangeEmailInitial with invalid email '
      'THEN emit [ChangeEmailSubmitFailure].',
      build: () => ChangeEmailBloc(mockUserService),
      seed: () => ChangeEmailState.initial(
        newEmail: EmailAddress('abd'),
        showErrorMessages: false,
      ),
      act: (ChangeEmailBloc bloc) => bloc.add(
        const ChangeEmailEvent.confirmPressed(),
      ),
      expect: () => [
        const ChangeEmailSubmitFailure(
          userFailure: UserFailure.invalidEmail(),
        ),
      ],
    );
  });
}
