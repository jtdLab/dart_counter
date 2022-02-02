import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/settings/settings_bloc.dart';
import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthService extends Mock implements IAuthService {}

class MockUserService extends Mock implements IUserService {}

void main() {
  late MockAuthService mockAuthService;
  late MockUserService mockUserService;

  late User initialUser;
  late User updatedUser;

  setUp(() {
    initialUser = User.dummy();
    updatedUser = User.dummy();
    mockAuthService = MockAuthService();
    mockUserService = MockUserService();
  });

  test('initial state initialized correctly when user available', () {
    // Arrange & Act
    when<Either<UserFailure, User>>(
      () => mockUserService.getUser(),
    ).thenAnswer((_) => right(initialUser));

    final underTest = SettingsBloc(mockAuthService, mockUserService);

    // Assert
    expect(
      underTest.state,
      SettingsState.initial(
        user: initialUser,
        localeChanged: false,
      ),
    );
  });

  group('Started', () {
    blocTest<SettingsBloc, SettingsState>(
      'emits [SettingsInitial] with updated user each time a new user arrives '
      'after Started was added.',
      build: () {
        when<Either<UserFailure, User>>(
          () => mockUserService.getUser(),
        ).thenAnswer((_) => right(initialUser));
        when<Stream<Either<UserFailure, User>>>(
          () => mockUserService.watchUser(),
        ).thenAnswer(
          (_) => Stream.fromIterable([right(updatedUser)]),
        );

        return SettingsBloc(mockAuthService, mockUserService);
      },
      seed: () =>
          SettingsState.initial(user: initialUser, localeChanged: false),
      act: (bloc) => bloc.add(const SettingsEvent.started()),
      expect: () => <SettingsState>[
        SettingsState.initial(
          user: updatedUser,
          localeChanged: false,
        )
      ],
    );

    blocTest<SettingsBloc, SettingsState>(
      'emits [] each time a new user failure arrives '
      'after Started was added.',
      build: () {
        when<Either<UserFailure, User>>(
          () => mockUserService.getUser(),
        ).thenAnswer((_) => right(initialUser));
        when<Stream<Either<UserFailure, User>>>(
          () => mockUserService.watchUser(),
        ).thenAnswer(
          (_) =>
              Stream.fromIterable([left(const UserFailure.noNetworkAccess())]),
        );

        return SettingsBloc(mockAuthService, mockUserService);
      },
      seed: () =>
          SettingsState.initial(user: initialUser, localeChanged: false),
      act: (bloc) => bloc.add(const SettingsEvent.started()),
      expect: () => <SettingsState>[],
    );
  });

  group('LocaleChanged', () {
    blocTest<SettingsBloc, SettingsState>(
      'emits [SettingsInitial, SettingsInitial] when LocaleChanged was added.',
      build: () {
        when<Either<UserFailure, User>>(
          () => mockUserService.getUser(),
        ).thenAnswer((_) => right(initialUser));

        return SettingsBloc(mockAuthService, mockUserService);
      },
      seed: () =>
          SettingsState.initial(user: initialUser, localeChanged: false),
      act: (bloc) => bloc.add(const SettingsEvent.localeChanged()),
      expect: () => <SettingsState>[
        SettingsState.initial(user: initialUser, localeChanged: true),
        SettingsState.initial(user: initialUser, localeChanged: false),
      ],
    );
  });

  group('SignOutPressed', () {
    blocTest<SettingsBloc, SettingsState>(
      'emits [] when SignOutPressed was added.',
      build: () {
        when(() => mockAuthService.signOut()).thenAnswer(
          (_) async => right(unit),
        );
        when<Either<UserFailure, User>>(
          () => mockUserService.getUser(),
        ).thenAnswer((_) => right(initialUser));

        return SettingsBloc(mockAuthService, mockUserService);
      },
      act: (bloc) => bloc.add(const SettingsEvent.signOutPressed()),
      expect: () => <SettingsState>[],
      verify: (_) {
        verify(() => mockAuthService.signOut()).called(1);
      },
    );
  });
}
