import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/domain_error.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/infrastructure/core/firestore_helpers.dart';
import 'package:dart_counter/injection.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthService extends Mock implements IAuthService {}

void main() {
  late MockAuthService authService;
  late FakeFirebaseFirestore firestore;

  const userId = 'userId';

  setUp(() async {
    authService = MockAuthService();
    firestore = FakeFirebaseFirestore();

    await getIt.reset();
    getIt.registerLazySingleton<IAuthService>(() => authService);
    getIt.registerLazySingleton<FirebaseFirestore>(() => firestore);
  });

  group('#getUserDocument#', () {
    test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.', () {
      // Arrange
      when(() => authService.userId()).thenThrow(NotAuthenticatedError());

      // Act & Assert
      expect(
        () => firestore.userDocument(),
        throwsA(isA<NotAuthenticatedError>()),
      );
    });

    test(
        'GIVEN authenticated user '
        'THEN return document with path users/{userId}.', () async {
      // Arrange
      when(() => authService.userId()).thenReturn(
        UniqueId.fromUniqueString(userId),
      );

      // Act
      final underTest = firestore.userDocument();

      // Assert
      expect(underTest, isA<DocumentReference>());
      expect(underTest.path, 'users/$userId');
    });
  });

  group('#gameHistoryOfflineCollection#', () {
    test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.', () {
      // Arrange
      when(() => authService.userId()).thenThrow(NotAuthenticatedError());

      // Act & Assert
      expect(
        () => firestore.gameHistoryOfflineCollection(),
        throwsA(isA<NotAuthenticatedError>()),
      );
    });

    test(
        'GIVEN authenticated user '
        'THEN return collection users/{userId}/gameHistoryOffline.', () async {
      // Arrange
      when(() => authService.userId()).thenReturn(
        UniqueId.fromUniqueString(userId),
      );

      // Act
      final underTest = firestore.gameHistoryOfflineCollection();

      // Assert
      expect(underTest, isA<CollectionReference>());
      expect(underTest.path, 'users/$userId/gameHistoryOffline');
    });
  });

  group('#receivedGameInvitationsCollection#', () {
    test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.', () {
      // Arrange
      when(() => authService.userId()).thenThrow(NotAuthenticatedError());

      // Act & Assert
      expect(
        () => firestore.receivedGameInvitationsCollection(),
        throwsA(isA<NotAuthenticatedError>()),
      );
    });

    test(
        'GIVEN authenticated user '
        'THEN return collection users/{userId}/receivedGameInvitations.',
        () async {
      // Arrange
      when(() => authService.userId()).thenReturn(
        UniqueId.fromUniqueString(userId),
      );

      // Act
      final underTest = firestore.receivedGameInvitationsCollection();

      // Assert
      expect(underTest, isA<CollectionReference>());
      expect(underTest.path, 'users/$userId/receivedGameInvitations');
    });
  });

  group('#sentGameInvitationsCollection#', () {
    test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.', () {
      // Arrange
      when(() => authService.userId()).thenThrow(NotAuthenticatedError());

      // Act & Assert
      expect(
        () => firestore.sentGameInvitationsCollection(),
        throwsA(isA<NotAuthenticatedError>()),
      );
    });

    test(
        'GIVEN authenticated user '
        'THEN return collection users/{userId}/sentGameInvitations.', () async {
      // Arrange
      when(() => authService.userId()).thenReturn(
        UniqueId.fromUniqueString(userId),
      );

      // Act
      final underTest = firestore.sentGameInvitationsCollection();

      // Assert
      expect(underTest, isA<CollectionReference>());
      expect(underTest.path, 'users/$userId/sentGameInvitations');
    });
  });

  group('#receivedFriendRequestsCollection#', () {
    test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.', () {
      // Arrange
      when(() => authService.userId()).thenThrow(NotAuthenticatedError());

      // Act & Assert
      expect(
        () => firestore.receivedFriendRequestsCollection(),
        throwsA(isA<NotAuthenticatedError>()),
      );
    });

    test(
        'GIVEN authenticated user '
        'THEN return collection users/{userId}/receivedFriendRequests.',
        () async {
      // Arrange
      when(() => authService.userId()).thenReturn(
        UniqueId.fromUniqueString(userId),
      );

      // Act
      final underTest = firestore.receivedFriendRequestsCollection();

      // Assert
      expect(underTest, isA<CollectionReference>());
      expect(underTest.path, 'users/$userId/receivedFriendRequests');
    });
  });

  group('#sentFriendRequestsCollection#', () {
    test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.', () {
      // Arrange
      when(() => authService.userId()).thenThrow(NotAuthenticatedError());

      // Act & Assert
      expect(
        () => firestore.sentFriendRequestsCollection(),
        throwsA(isA<NotAuthenticatedError>()),
      );
    });

    test(
        'GIVEN authenticated user '
        'THEN return collection users/{userId}/sentFriendRequests.', () async {
      // Arrange
      when(() => authService.userId()).thenReturn(
        UniqueId.fromUniqueString(userId),
      );

      // Act
      final underTest = firestore.sentFriendRequestsCollection();

      // Assert
      expect(underTest, isA<CollectionReference>());
      expect(underTest.path, 'users/$userId/sentFriendRequests');
    });
  });

  group('#gameHistoryOnlineCollection#', () {
    test(
        'GIVEN incoming uid '
        'THEN return collection users/uid/gameHistoryOnline.', () async {
      // Arrange
      const uid = 'someUid';

      // Act
      final underTest = firestore.gameHistoryOnlineCollection(uid: uid);

      // Assert
      expect(underTest, isA<CollectionReference>());
      expect(underTest.path, 'users/$uid/gameHistoryOnline');
    });
  });

  group('#profilesCollection#', () {
    test('Return collection profiles.', () async {
      // Arrange
      when(() => authService.userId()).thenReturn(
        UniqueId.fromUniqueString(userId),
      );

      // Act
      final underTest = firestore.profilesCollection();

      // Assert
      expect(underTest, isA<CollectionReference>());
      expect(underTest.path, 'profiles');
    });
  });
}
