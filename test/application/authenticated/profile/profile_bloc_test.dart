void main() {}

// TODO remove this file if bloc is finaly not neeedd

/**
 * import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/core/application_error.dart';
import 'package:dart_counter/application/authenticated/profile/profile_bloc.dart';
import 'package:dart_counter/domain/user/career_stats.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockUserService extends Mock implements IUserService {}

void main() {
  late MockUserService mockUserService;

  final initialUser = User.dummy();
  final updatedUser = User.dummy();

  setUp(() {
    mockUserService = MockUserService();

    when(() => mockUserService.getUser()).thenReturn(right(initialUser));
  });

  test(
      'GIVEN user is not available '
      'THEN throw ApplicationError.', () {
    // Arrange
    when(() => mockUserService.getUser())
        .thenReturn(left(const UserFailure.unableToLoadData()));

    // Act & Assert
    expect(
      () => ProfileBloc(
        mockUserService,
      ),
      throwsA(isA<ApplicationError>()),
    );
  });

  test(
      'GIVEN user is available '
      'THEN initial state set to PofileInitial with correct user and correct calculated career stats.',
      () {
    // Arrange & Act
    final underTest = ProfileBloc(
      mockUserService,
    );

    // Assert
    expect(
      underTest.state,
      ProfileState.initial(
        user: initialUser,
        careerStatsAll: initialUser.careerStatsOffline
            .merge(initialUser.profile.careerStatsOnline),
      ),
    );
  });

  group('Started', () {
    blocTest<ProfileBloc, ProfileState>(
      'Emit [SettingsProfile] with updated user and careerStats each time a new user arrives.',
      build: () {
        when<Either<UserFailure, User>>(
          () => mockUserService.getUser(),
        ).thenAnswer((_) => right(initialUser));
        when<Stream<Either<UserFailure, User>>>(
          () => mockUserService.watchUser(),
        ).thenAnswer(
          (_) => Stream.fromIterable([right(updatedUser)]),
        );

        return ProfileBloc(mockUserService);
      },
      seed: () => ProfileState.initial(
        user: initialUser,
        careerStatsAll: initialUser.careerStatsOffline
            .merge(initialUser.profile.careerStatsOnline),
      ),
      act: (bloc) => bloc.add(const ProfileEvent.started()),
      expect: () => <ProfileState>[
        ProfileState.initial(
          user: updatedUser,
          careerStatsAll: updatedUser.careerStatsOffline
              .merge(updatedUser.profile.careerStatsOnline),
        ),
      ],
    );

    // TODO test when user failur arrives
  });
}

 */
