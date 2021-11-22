import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/settings/change_email/change_email_bloc.dart';
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

  test('initial state initialized correctly', () {
    // Arrange & Act
    final underTest = ChangeEmailBloc(mockUserService);

    // Assert
    expect(
      underTest.state,
      ChangeEmailState.initial(
        email: EmailAddress.empty(),
        showErrorMessages: false,
      ),
    );
  });

  group('NewEmailChanged', () {
    blocTest(
      'emits [ChangeEmailInitial] when current state is ChangeEmailInitial ',
      build: () => ChangeEmailBloc(mockUserService),
      act: (ChangeEmailBloc bloc) =>
          bloc.add(const ChangeEmailEvent.newEmailChanged(newNewEmail: 'abcd')),
      expect: () => [
        ChangeEmailInitial(
          email: EmailAddress('abcd'),
          showErrorMessages: false,
        ),
      ],
    );

    blocTest(
      'emits [ChangeEmailInitial] when current state is ChangeEmailSubmitFailure ',
      build: () => ChangeEmailBloc(mockUserService),
      seed: () => const ChangeEmailState.submitFailure(
        userFailure: UserFailure.invalidEmail(),
      ),
      act: (ChangeEmailBloc bloc) =>
          bloc.add(const ChangeEmailEvent.newEmailChanged(newNewEmail: 'abcd')),
      expect: () => [
        ChangeEmailInitial(
          email: EmailAddress('abcd'),
          showErrorMessages: true,
        ),
      ],
    );
  });

  group('ConfirmPressed', () {
    blocTest(
      'emits [ChangeEmailSubmitInProgress, ChangeEmailSubmitSuccess] '
      'when current state is ChangeEmailInitial with valid and available email ',
      build: () {
        when<Future<Either<UserFailure, Unit>>>(
          () => mockUserService.updateEmailAddress(
            newEmailAddress: any(named: 'newEmailAddress'),
          ),
        ).thenAnswer((_) async => right(unit));

        return ChangeEmailBloc(mockUserService);
      },
      seed: () => ChangeEmailState.initial(
        email: EmailAddress('a@b.com'),
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
      'emits [ChangeEmailSubmitInProgress, ChangeEmailSubmitFailure] '
      'when current state is ChangeEmailInitial with valid and not available email ',
      build: () {
        when<Future<Either<UserFailure, Unit>>>(
          () => mockUserService.updateEmailAddress(
            newEmailAddress: any(named: 'newEmailAddress'),
          ),
        ).thenAnswer((_) async => left(const UserFailure.failure()));

        return ChangeEmailBloc(mockUserService);
      },
      seed: () => ChangeEmailState.initial(
        email: EmailAddress('a@b.com'),
        showErrorMessages: false,
      ),
      act: (ChangeEmailBloc bloc) => bloc.add(
        const ChangeEmailEvent.confirmPressed(),
      ),
      wait: const Duration(seconds: 1),
      expect: () => [
        const ChangeEmailSubmitInProgress(),
        const ChangeEmailSubmitFailure(
          userFailure: UserFailure.failure(),
        ),
      ],
    );

    blocTest(
      'emits [ChangeEmailSubmitFailure] '
      'when current state is ChangeEmailInitial with invalid email ',
      build: () => ChangeEmailBloc(mockUserService),
      seed: () => ChangeEmailState.initial(
        email: EmailAddress('abd'),
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
