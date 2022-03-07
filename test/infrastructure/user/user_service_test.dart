import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/domain_error.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/user/career_stats.dart';
import 'package:dart_counter/domain/user/profile.dart';
import 'package:dart_counter/domain/user/trend.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dart_counter/infrastructure/core/firestore_helpers.dart';
import 'package:dart_counter/infrastructure/core/storage_helpers.dart';
import 'package:dart_counter/infrastructure/user/user_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_storage_mocks/firebase_storage_mocks.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:mocktail/mocktail.dart';
import 'package:social_client/social_client.dart';

class MockAuthService extends Mock implements IAuthService {}

class MockSocialClient extends Mock implements SocialClient {}

void main() {
  late MockAuthService mockAuthService;
  late FakeFirebaseFirestore firestore;
  late MockFirebaseStorage storage;
  late MockSocialClient mockSocialClient;

  late UserService underTest;

  const userId = 'userId';

  setUp(() async {
    mockAuthService = MockAuthService();
    firestore = FakeFirebaseFirestore();
    storage = MockFirebaseStorage();
    mockSocialClient = MockSocialClient();

    await getIt.reset();
    getIt.registerLazySingleton<IAuthService>(() => mockAuthService);
    getIt.registerLazySingleton<FirebaseFirestore>(() => firestore);
    getIt.registerLazySingleton<FirebaseStorage>(() => storage);

    underTest = UserService(
      firestore,
      storage,
      mockAuthService,
      mockSocialClient,
    );
  });

  group('#Methods#', () {
    group('#deleteProfilePhoto#', () {
      test(
          'GIVEN not authenticated user '
          'THEN throw NotAuthenticatedError.', () {
        // Arrange
        // not authenticated user
        when(() => mockAuthService.userId()).thenThrow(NotAuthenticatedError());

        // Act & Assert
        expect(
          () async => underTest.deleteProfilePhoto(),
          throwsA(isA<NotAuthenticatedError>()),
        );
      });

      test(
          'GIVEN authenticated user '
          'GIVEN firestore holds user data '
          'GIVEN storage holds image '
          'THEN return unit set the photoUrl in firestore to null and delete the image from storage.',
          () async {
        // Arrange
        // authenticated user
        when(() => mockAuthService.userId())
            .thenReturn(UniqueId.fromUniqueString(userId));
        // firestore holds user data
        firestore.userDocument().set({'profile.photoUrl': 'someImageUrl'});
        // storage holds image
        storage.profilePhotoReference().putData(Uint8List.fromList([1, 2, 3]));

        // Act
        final result = await underTest.deleteProfilePhoto();

        // Assert
        expect(result, right(unit));
        final firestoreData = (await firestore.userDocument().get()).data()!
            as Map<String, dynamic>;
        expect(
          (firestoreData['profile'] as Map<String, dynamic>)['photoUrl'],
          null,
        );
        expect(storage.storedDataMap, {});
      });
    });

    group('#getUser#', () {
      test(
          'GIVEN not authenticated user '
          'THEN throw NotAuthenticatedError.', () {
        // Arrange
        // not authenticated user
        when(() => mockAuthService.userId()).thenThrow(NotAuthenticatedError());

        // Act & Assert
        expect(
          () async => underTest.getUser(),
          throwsA(isA<NotAuthenticatedError>()),
        );
      });

      test(
        'GIVEN authenticated user '
        'GIVEN firestore contains invalid user json '
        'THEN return unexpected failure.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.userId())
              .thenReturn(UniqueId.fromUniqueString(userId));
          // invalid received friend requests json
          await firestore.userDocument().set({
            'key': 'value',
          });

          // Act
          final result = await underTest.getUser();

          // Assert
          expect(result, left(const UserFailure.unexpected()));
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN firestore contains valid user json '
        'THEN return the user.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.userId())
              .thenReturn(UniqueId.fromUniqueString(userId));
          // valid user json
          const idToken = 'dummyIdToken';
          const emailString = 'a@b.com';
          final friendIdsStrings = ['dummyId1', 'dummyId2'];
          const photoUrl = 'http://www.ab.c';
          const nameString = 'dummyName';
          const average = 88.0;
          const averageTrendString = 'down';
          const checkoutPercentage = 45.6;
          const checkoutPercentageTrendString = 'none';
          const firstNine = 70.89;
          const firstNineTrendString = 'up';
          const games = 100;
          const wins = 67;
          const defeats = 33;
          const careerStatsJson = {
            'average': average,
            'averageTrend': averageTrendString,
            'checkoutPercentage': checkoutPercentage,
            'checkoutPercentageTrend': checkoutPercentageTrendString,
            'firstNine': firstNine,
            'firstNineTrend': firstNineTrendString,
            'games': games,
            'wins': wins,
            'defeats': defeats,
          };
          const profileJson = {
            'photoUrl': photoUrl,
            'name': nameString,
            'careerStatsOnline': careerStatsJson,
          };
          final json = {
            'id': userId,
            'idToken': idToken,
            'email': emailString,
            'profile': profileJson,
            'friendIds': friendIdsStrings,
            'careerStatsOffline': careerStatsJson,
          };
          await firestore.userDocument().set(json);

          // Act
          final result = await underTest.getUser();

          // Assert
          final id = UniqueId.fromUniqueString(userId);
          final email = EmailAddress('a@b.com');
          final friendIds = KtList.from([
            UniqueId.fromUniqueString('dummyId1'),
            UniqueId.fromUniqueString('dummyId2'),
          ]);
          final name = Username('dummyName');
          const averageTrend = Trend.down;
          const checkoutPercentageTrend = Trend.none;
          const firstNineTrend = Trend.up;
          const careerStats = CareerStats(
            average: average,
            averageTrend: averageTrend,
            checkoutPercentage: checkoutPercentage,
            checkoutPercentageTrend: checkoutPercentageTrend,
            firstNine: firstNine,
            firstNineTrend: firstNineTrend,
            games: games,
            wins: wins,
            defeats: defeats,
          );
          final profile = Profile(
            photoUrl: photoUrl,
            name: name,
            careerStatsOnline: careerStats,
          );

          expect(
            result,
            right(
              User(
                id: id,
                idToken: idToken,
                email: email,
                profile: profile,
                friendIds: friendIds,
                careerStatsOffline: careerStats,
              ),
            ),
          );
        },
      );
    });

    group('#updateEmailAddress#', () {
      final validEmail = EmailAddress('new@email.com');

      test(
          'GIVEN not authenticated user '
          'THEN throw NotAuthenticatedError.', () {
        // Arrange
        // not authenticated user
        when(() => mockAuthService.isAuthenticated()).thenReturn(false);

        // Act & Assert
        expect(
          () async => underTest.updateEmailAddress(
            newEmailAddress: EmailAddress.empty(),
          ),
          throwsA(isA<NotAuthenticatedError>()),
        );
      });

      test(
          'GIVEN authenticated user '
          'GIVEN invalid email '
          'THEN return invalid email failure.', () async {
        // Arrange
        // authenticated user
        when(() => mockAuthService.isAuthenticated()).thenReturn(true);
        final invalidEmail = EmailAddress.empty();

        // Act
        final result = await underTest.updateEmailAddress(
          newEmailAddress: invalidEmail,
        );

        // Assert
        expect(result, left(const UserFailure.invalidEmail()));
      });

      test(
        'GIVEN authenticated user '
        'GIVEN valid email '
        'GIVEN update email fails '
        'THEN return unexpected failure.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenReturn(true);
          // update email fails
          when(
            () => mockSocialClient.updateEmail(
              newEmail: validEmail.getOrCrash(),
            ),
          ).thenAnswer((_) async => false);

          // Act
          final result = await underTest.updateEmailAddress(
            newEmailAddress: validEmail,
          );

          // Assert
          expect(result, left(const UserFailure.unexpected()));
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN valid email '
        'GIVEN update email succeeds '
        'THEN return unit.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenReturn(true);
          // update email succeeds
          when(
            () => mockSocialClient.updateEmail(
              newEmail: validEmail.getOrCrash(),
            ),
          ).thenAnswer((_) async => true);

          // Act
          final result = await underTest.updateEmailAddress(
            newEmailAddress: validEmail,
          );
          // Assert
          expect(result, right(unit));
        },
      );
    });

    group('#updateProfilePhoto#', () {
      test(
          'GIVEN not authenticated user '
          'THEN throw NotAuthenticatedError.', () {
        // Arrange
        // not authenticated user
        when(() => mockAuthService.userId()).thenThrow(NotAuthenticatedError());

        // Act & Assert
        expect(
          () async => underTest.updateProfilePhoto(newPhotoData: Uint8List(0)),
          throwsA(isA<NotAuthenticatedError>()),
        );
      });

      // TODO must made testable before 
    });

    group('#updateUsername#', () {
      final validUsername = Username('newUsername');

      test(
          'GIVEN not authenticated user '
          'THEN throw NotAuthenticatedError.', () {
        // Arrange
        // not authenticated user
        when(() => mockAuthService.isAuthenticated()).thenReturn(false);

        // Act & Assert
        expect(
          () async => underTest.updateUsername(
            newUsername: Username.empty(),
          ),
          throwsA(isA<NotAuthenticatedError>()),
        );
      });

      test(
          'GIVEN authenticated user '
          'GIVEN invalid username '
          'THEN return invalid username failure.', () async {
        // Arrange
        // authenticated user
        when(() => mockAuthService.isAuthenticated()).thenReturn(true);
        final invalidUsername = Username.empty();

        // Act
        final result = await underTest.updateUsername(
          newUsername: invalidUsername,
        );

        // Assert
        expect(result, left(const UserFailure.invalidUsername()));
      });

      test(
        'GIVEN authenticated user '
        'GIVEN valid username '
        'GIVEN update name fails '
        'THEN return unexpected failure.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenReturn(true);
          // update username fails
          when(
            () => mockSocialClient.updateName(
              newName: validUsername.getOrCrash(),
            ),
          ).thenAnswer((_) async => false);

          // Act
          final result = await underTest.updateUsername(
            newUsername: validUsername,
          );

          // Assert
          expect(result, left(const UserFailure.unexpected()));
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN valid username '
        'GIVEN update username succeeds '
        'THEN return unit.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenReturn(true);
          // update username succeeds
          when(
            () => mockSocialClient.updateName(
              newName: validUsername.getOrCrash(),
            ),
          ).thenAnswer((_) async => true);

          // Act
          final result = await underTest.updateUsername(
            newUsername: validUsername,
          );
          // Assert
          expect(result, right(unit));
        },
      );
    });

    group('#watchUser#', () {
      test(
          'GIVEN not authenticated user '
          'THEN throw NotAuthenticatedError.', () {
        // Arrange
        // not authenticated user
        when(() => mockAuthService.userId()).thenThrow(NotAuthenticatedError());

        // Act & Assert
        expect(
          () async => underTest.watchUser(),
          throwsA(isA<NotAuthenticatedError>()),
        );
      });

      test(
        'GIVEN authenticated user '
        'GIVEN firestore contains invalid user json '
        'THEN emit unexpected failure.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.userId())
              .thenReturn(UniqueId.fromUniqueString(userId));
          // invalid received friend requests json
          await firestore.userDocument().set({
            'key': 'value',
          });

          // Act
          final result = underTest.watchUser();

          // Assert
          expect(result, emitsInOrder([left(const UserFailure.unexpected())]));
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN firestore contains valid user json '
        'THEN emit user.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.userId())
              .thenReturn(UniqueId.fromUniqueString(userId));
          // valid user json
          const idToken = 'dummyIdToken';
          const emailString = 'a@b.com';
          final friendIdsStrings = ['dummyId1', 'dummyId2'];
          const photoUrl = 'http://www.ab.c';
          const nameString = 'dummyName';
          const average = 88.0;
          const averageTrendString = 'down';
          const checkoutPercentage = 45.6;
          const checkoutPercentageTrendString = 'none';
          const firstNine = 70.89;
          const firstNineTrendString = 'up';
          const games = 100;
          const wins = 67;
          const defeats = 33;
          const careerStatsJson = {
            'average': average,
            'averageTrend': averageTrendString,
            'checkoutPercentage': checkoutPercentage,
            'checkoutPercentageTrend': checkoutPercentageTrendString,
            'firstNine': firstNine,
            'firstNineTrend': firstNineTrendString,
            'games': games,
            'wins': wins,
            'defeats': defeats,
          };
          const profileJson = {
            'photoUrl': photoUrl,
            'name': nameString,
            'careerStatsOnline': careerStatsJson,
          };
          final json1 = {
            'id': userId,
            'idToken': idToken,
            'email': emailString,
            'profile': profileJson,
            'friendIds': friendIdsStrings,
            'careerStatsOffline': careerStatsJson,
          };
          await firestore.userDocument().set(json1);

          // Act
          final result = underTest.watchUser();

          // Assert
          final id = UniqueId.fromUniqueString(userId);
          final email = EmailAddress('a@b.com');
          final friendIds = KtList.from([
            UniqueId.fromUniqueString('dummyId1'),
            UniqueId.fromUniqueString('dummyId2'),
          ]);
          final name = Username('dummyName');
          const averageTrend = Trend.down;
          const checkoutPercentageTrend = Trend.none;
          const firstNineTrend = Trend.up;
          const careerStats = CareerStats(
            average: average,
            averageTrend: averageTrend,
            checkoutPercentage: checkoutPercentage,
            checkoutPercentageTrend: checkoutPercentageTrend,
            firstNine: firstNine,
            firstNineTrend: firstNineTrend,
            games: games,
            wins: wins,
            defeats: defeats,
          );
          final profile = Profile(
            photoUrl: photoUrl,
            name: name,
            careerStatsOnline: careerStats,
          );

          expect(
            result,
            emitsInOrder([
              right(
                User(
                  id: id,
                  idToken: idToken,
                  email: email,
                  profile: profile,
                  friendIds: friendIds,
                  careerStatsOffline: careerStats,
                ),
              ),
            ]),
          );
        },
      );
    });
  });
}
