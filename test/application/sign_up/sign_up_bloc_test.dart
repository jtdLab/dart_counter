import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/core/data_watcher/data_watcher_bloc.dart';
import 'package:dart_counter/application/sign_up/sign_up_bloc.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/infrastructure/auth/mocked_auth_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDataWatcherBloc extends MockBloc<DataWatcherEvent, DataWatcherState>
    implements DataWatcherBloc {}

late SignUpBloc underTest;

/**
 * user: User.dummy(),
            receivedGameInvitations: KtList.from(
              List.generate(2, (index) => GameInvitation.dummy()),
            ),
            sentGameInvitations: KtList.from(
              List.generate(2, (index) => GameInvitation.dummy()),
            ),
            friends: KtList.from(
              List.generate(2, (index) => Friend.dummy()),
            ),
            receivedFriendRequests: KtList.from(
              List.generate(2, (index) => FriendRequest.dummy()),
            ),
            sentFriendRequests: KtList.from(
              List.generate(2, (index) => FriendRequest.dummy()),
            ),
 */
/**
 * 
void main() {
  setUpAll(() {
    // register fallback values required by mocktail
    registerFallbackValue(
      DataWatcherEvent.watchDataStarted(
        appUserId: UniqueId.fromUniqueString('dummyId'),
      ),
    );
    registerFallbackValue(const DataWatcherState.loadInProgress());
  });

  group('SignUpBloc', () {
    group('Initial', () {
      setUp(() {
        // mock dependencies
        final mockedAuthFacade = MockedAuthFacade();

        final mockedDataWatcherBloc = MockDataWatcherBloc();
        whenListen(
          mockedDataWatcherBloc,
          Stream.fromIterable([
            const DataWatcherState.loadInProgress(),
          ]),
          initialState: const DataWatcherState.loadInProgress(),
        );

        // setup bloc to test
        underTest = SignUpBloc(mockedAuthFacade, mockedDataWatcherBloc);
      });

      test('Sets initial state correctly', () {
        expect(
          underTest.state,
          equals(
            SignUpState(
              email: EmailAddress.empty(),
              username: Username.empty(),
              password: Password.empty(),
              passwordAgain: Password.empty(),
              showErrorMessages: false,
              isSubmitting: false,
              isSignedUp: false,
            ),
          ),
        );
      });
    });

    group('Events', () {
      group('EmailChanged', () {
        void setUp() {

        }
        
        blocTest(
          'GIVEN initial state '
          'WHEN EmailChanged is added '
          'THEN emit correct state with new email.',
          setUp: ,
          build: () => underTest,
          act: (SignUpBloc bloc) =>
              bloc.add(const SignUpEvent.emailChanged('abc')),
          expect: () => [
            SignUpState(
              email: EmailAddress('abc'),
              username: Username.empty(),
              password: Password.empty(),
              passwordAgain: Password.empty(),
              showErrorMessages: false,
              isSubmitting: false,
              isSignedUp: false,
            )
          ],
        );

        blocTest(
          'GIVEN state != initial state '
          'WHEN EmailChanged is added '
          'THEN emit correct state with new email.',
          build: () => underTest,
          seed: () => SignUpState(
            email: EmailAddress('abc'),
            username: Username('username'),
            password: Password('password'),
            passwordAgain: Password('password'),
            showErrorMessages: false,
            isSubmitting: false,
            isSignedUp: false,
          ),
          act: (SignUpBloc bloc) =>
              bloc.add(const SignUpEvent.emailChanged('abcd')),
          expect: () => [
            SignUpState(
              email: EmailAddress('abcd'),
              username: Username('username'),
              password: Password('password'),
              passwordAgain: Password('password'),
              showErrorMessages: false,
              isSubmitting: false,
              isSignedUp: false,
            ),
          ],
        );
      });

      group('UsernameChanged', () {
        blocTest(
          'GIVEN initial state '
          'WHEN UsernameChanged is added '
          'THEN emit correct state with new username.',
          build: () => underTest,
          act: (SignUpBloc bloc) =>
              bloc.add(const SignUpEvent.usernameChanged('abc')),
          expect: () => [
            SignUpState(
              email: EmailAddress.empty(),
              username: Username('abc'),
              password: Password.empty(),
              passwordAgain: Password.empty(),
              showErrorMessages: false,
              isSubmitting: false,
              isSignedUp: false,
            )
          ],
        );

        blocTest(
          'GIVEN state != initial state '
          'WHEN UsernameChanged is added '
          'THEN emit correct state with new username.',
          build: () => underTest,
          seed: () => SignUpState(
            email: EmailAddress('email'),
            username: Username('abc'),
            password: Password('password'),
            passwordAgain: Password('password'),
            showErrorMessages: false,
            isSubmitting: false,
            isSignedUp: false,
          ),
          act: (SignUpBloc bloc) =>
              bloc.add(const SignUpEvent.usernameChanged('abcd')),
          expect: () => [
            SignUpState(
              email: EmailAddress('email'),
              username: Username('abcd'),
              password: Password('password'),
              passwordAgain: Password('password'),
              showErrorMessages: false,
              isSubmitting: false,
              isSignedUp: false,
            ),
          ],
        );
      });

      group('PasswordChanged', () {
        blocTest(
          'GIVEN initial state '
          'WHEN PasswordChanged is added '
          'THEN emit correct state with new password.',
          build: () => underTest,
          act: (SignUpBloc bloc) =>
              bloc.add(const SignUpEvent.passwordChanged('abc')),
          expect: () => [
            SignUpState(
              email: EmailAddress.empty(),
              username: Username.empty(),
              password: Password('abc'),
              passwordAgain: Password.empty(),
              showErrorMessages: false,
              isSubmitting: false,
              isSignedUp: false,
            )
          ],
        );

        blocTest(
          'GIVEN state != initial state '
          'WHEN PasswordChanged is added '
          'THEN emit correct state with new password.',
          build: () => underTest,
          seed: () => SignUpState(
            email: EmailAddress('email'),
            username: Username('username'),
            password: Password('abc'),
            passwordAgain: Password('password'),
            showErrorMessages: false,
            isSubmitting: false,
            isSignedUp: false,
          ),
          act: (SignUpBloc bloc) =>
              bloc.add(const SignUpEvent.passwordChanged('abcd')),
          expect: () => [
            SignUpState(
              email: EmailAddress('email'),
              username: Username('username'),
              password: Password('abcd'),
              passwordAgain: Password('password'),
              showErrorMessages: false,
              isSubmitting: false,
              isSignedUp: false,
            ),
          ],
        );
      });

      group('PasswordAgainChanged', () {
        blocTest(
          'GIVEN initial state '
          'WHEN PasswordAgainChanged is added '
          'THEN emit correct state with new password-again.',
          build: () => underTest,
          act: (SignUpBloc bloc) =>
              bloc.add(const SignUpEvent.passwordAgainChanged('abc')),
          expect: () => [
            SignUpState(
              email: EmailAddress.empty(),
              username: Username.empty(),
              password: Password.empty(),
              passwordAgain: Password('abc'),
              showErrorMessages: false,
              isSubmitting: false,
              isSignedUp: false,
            )
          ],
        );

        blocTest(
          'GIVEN state != initial state '
          'WHEN PasswordAgainChanged is added '
          'THEN emit correct state with new password-again.',
          build: () => underTest,
          seed: () => SignUpState(
            email: EmailAddress('email'),
            username: Username('username'),
            password: Password('password'),
            passwordAgain: Password('abc'),
            showErrorMessages: false,
            isSubmitting: false,
            isSignedUp: false,
          ),
          act: (SignUpBloc bloc) =>
              bloc.add(const SignUpEvent.passwordAgainChanged('abcd')),
          expect: () => [
            SignUpState(
              email: EmailAddress('email'),
              username: Username('username'),
              password: Password('password'),
              passwordAgain: Password('abcd'),
              showErrorMessages: false,
              isSubmitting: false,
              isSignedUp: false,
            ),
          ],
        );
      });

      group('SignUpPressed', () {});
    });
  });
}

 */

void main() {}
