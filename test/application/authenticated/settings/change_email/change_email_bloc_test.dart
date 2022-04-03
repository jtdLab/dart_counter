import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/authenticated/settings/change_email/change_email_bloc.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dart_counter/core/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockUserService extends Mock implements IUserService {}

void main() {
  late MockUserService mockUserService;

  setUpAll(() {
    // Mocktail related setup
    registerFallbackValue(EmailAddress.empty());
  });

  setUp(() {
    mockUserService = MockUserService();
  });

  group('#Constructors#', () {
    group('#Standard#', () {
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
    });

    group('#GetIt#', () {
      test(
          'GIVEN ChangeEmailBloc is not registered inside getIt '
          'THEN throw error.', () {
        // Act & Assert
        expect(() => ChangeEmailBloc.getIt(), throwsA(anything));
      });

      test(
          'GIVEN ChangeEmailBloc is registered inside getIt '
          'THEN initial state set to ChangeEmailInitial with empty email and showErrorMessages false.',
          () {
        // Arrange
        getIt.registerFactoryParam(
          (param1, _) => ChangeEmailBloc(mockUserService),
        );

        // Act
        final underTest = ChangeEmailBloc.getIt();

        // Assert
        expect(
          underTest.state,
          ChangeEmailState.initial(
            newEmail: EmailAddress.empty(),
            showErrorMessages: false,
          ),
        );
      });

      test(
          'GIVEN ChangeEmailBloc is registered inside getIt '
          'THEN return the registered instance.', () {
        // Arrange
        final registeredInstance = ChangeEmailBloc(mockUserService);
        getIt.registerFactoryParam((param1, _) => registeredInstance);

        // Act
        final underTest = ChangeEmailBloc.getIt();

        // Assert
        expect(underTest, registeredInstance);
      });

      tearDown(() async {
        // Reset DI-container
        await getIt.reset();
      });
    });
  });

  group('#Events#', () {
    group('#NewEmailChanged#', () {
      blocTest<ChangeEmailBloc, ChangeEmailState>(
        'GIVEN current state is ChangeEmailInitial '
        'THEN emit [ChangeEmailInitial].',
        build: () => ChangeEmailBloc(mockUserService),
        act: (bloc) => bloc
            .add(const ChangeEmailEvent.newEmailChanged(newNewEmail: 'abcd')),
        expect: () => [
          ChangeEmailInitial(
            newEmail: EmailAddress('abcd'),
            showErrorMessages: false,
          ),
        ],
      );

      blocTest<ChangeEmailBloc, ChangeEmailState>(
        'GIVEN current state is ChangeEmailSubmitFailure '
        'THEN emit [ChangeEmailInitial].',
        build: () => ChangeEmailBloc(mockUserService),
        seed: () => const ChangeEmailState.submitFailure(
          userFailure: UserFailure.invalidEmail(),
        ),
        act: (bloc) => bloc
            .add(const ChangeEmailEvent.newEmailChanged(newNewEmail: 'abcd')),
        expect: () => [
          ChangeEmailInitial(
            newEmail: EmailAddress('abcd'),
            showErrorMessages: true,
          ),
        ],
      );
    });

    group('#ConfirmPressed#', () {
      blocTest<ChangeEmailBloc, ChangeEmailState>(
        'GIVEN current state is ChangeEmailInitial with valid and available email '
        'THEN emit [ChangeEmailSubmitInProgress, ChangeEmailSubmitSuccess].',
        setUp: () {
          when(
            () => mockUserService.updateEmailAddress(
              newEmailAddress: any(named: 'newEmailAddress'),
            ),
          ).thenAnswer((_) async => right(unit));
        },
        build: () => ChangeEmailBloc(mockUserService),
        seed: () => ChangeEmailState.initial(
          newEmail: EmailAddress('a@b.com'),
          showErrorMessages: false,
        ),
        act: (bloc) => bloc.add(
          const ChangeEmailEvent.confirmPressed(),
        ),
        wait: const Duration(seconds: 1),
        expect: () => [
          const ChangeEmailSubmitInProgress(),
          const ChangeEmailSubmitSuccess(),
        ],
      );

      blocTest<ChangeEmailBloc, ChangeEmailState>(
        'GIVEN current state is ChangeEmailInitial with valid and not available email '
        'THEN emit [ChangeEmailSubmitInProgress, ChangeEmailSubmitFailure].',
        setUp: () {
          when(
            () => mockUserService.updateEmailAddress(
              newEmailAddress: any(named: 'newEmailAddress'),
            ),
          ).thenAnswer((_) async => left(const UserFailure.unexpected()));
        },
        build: () => ChangeEmailBloc(mockUserService),
        seed: () => ChangeEmailState.initial(
          newEmail: EmailAddress('a@b.com'),
          showErrorMessages: false,
        ),
        act: (bloc) => bloc.add(
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

      blocTest<ChangeEmailBloc, ChangeEmailState>(
        'GIVEN current state is ChangeEmailInitial with invalid email '
        'THEN emit [ChangeEmailSubmitFailure].',
        build: () => ChangeEmailBloc(mockUserService),
        seed: () => ChangeEmailState.initial(
          newEmail: EmailAddress('abd'),
          showErrorMessages: false,
        ),
        act: (bloc) => bloc.add(
          const ChangeEmailEvent.confirmPressed(),
        ),
        expect: () => [
          const ChangeEmailSubmitFailure(
            userFailure: UserFailure.invalidEmail(),
          ),
        ],
      );
    });
  });
}
