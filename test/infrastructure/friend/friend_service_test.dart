import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/domain_error.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/friend/friend.dart';
import 'package:dart_counter/domain/friend/friend_failure.dart';
import 'package:dart_counter/domain/friend/friend_request.dart';
import 'package:dart_counter/domain/friend/user_snapshot.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
import 'package:dart_counter/infrastructure/core/firestore_helpers.dart';
import 'package:dart_counter/infrastructure/friend/friend_service.dart';
import 'package:dart_counter/core/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:mocktail/mocktail.dart';
import 'package:social_client/social_client.dart';

class MockAuthService extends Mock implements IAuthService {}

class MockUserService extends Mock implements IUserService {}

class MockSocialClient extends Mock implements SocialClient {}

void main() {
  late MockAuthService authService;
  late MockUserService userService;
  late FakeFirebaseFirestore firebaseFirestore;
  late MockSocialClient socialClient;

  late FriendService underTest;

  const userId = 'userId';

  setUp(() async {
    authService = MockAuthService();
    userService = MockUserService();
    firebaseFirestore = FakeFirebaseFirestore();
    socialClient = MockSocialClient();

    await getIt.reset();
    getIt.registerFactory<IAuthService>(() => authService);
    getIt.registerFactory<FirebaseFirestore>(() => firebaseFirestore);

    underTest = FriendService(
      authService,
      userService,
      firebaseFirestore,
      socialClient,
    );
  });

  group('#Methods#', () {
    group('#acceptFriendRequest#', () {
      const fromId = 'fromId';
      final acceptedFriendRequest = FriendRequest.dummy().copyWith(
        fromId: UniqueId.fromUniqueString(fromId),
      );

      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () async {
          // Arrange
          // not authenticated user
          when(() => authService.isAuthenticated()).thenReturn(false);

          // Act & Assert
          expect(
            underTest.acceptFriendRequest(
              friendRequest: acceptedFriendRequest,
            ),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN accept friend request fails '
        'THEN return unexpected failure.',
        () async {
          // Arrange
          // authenticated user
          when(() => authService.isAuthenticated()).thenReturn(true);
          // accept friend request fails
          when(() => socialClient.acceptFriendRequest(fromId: fromId))
              .thenAnswer((_) async => false);

          // Act
          final result = await underTest.acceptFriendRequest(
            friendRequest: acceptedFriendRequest,
          );

          // Assert
          expect(result, left(const FriendFailure.unexpected()));
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN accept friend request succeeds '
        'THEN return unit.',
        () async {
          // Arrange
          // authenticated user
          when(() => authService.isAuthenticated()).thenReturn(true);
          // accept friend request succeeds
          when(() => socialClient.acceptFriendRequest(fromId: fromId))
              .thenAnswer((_) async => true);

          // Act
          final result = await underTest.acceptFriendRequest(
            friendRequest: acceptedFriendRequest,
          );

          // Assert
          expect(result, right(unit));
        },
      );
    });

    group('#cancelFriendRequest#', () {
      const toId = 'toId';
      final canceledFriendRequest = FriendRequest.dummy().copyWith(
        toId: UniqueId.fromUniqueString(toId),
      );

      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () async {
          // Arrange
          // not authenticated user
          when(() => authService.isAuthenticated()).thenReturn(false);

          // Act & Assert
          expect(
            underTest.cancelFriendRequest(
              friendRequest: canceledFriendRequest,
            ),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN cancel friend request fails '
        'THEN return unexpected failure.',
        () async {
          // Arrange
          // authenticated user
          when(() => authService.isAuthenticated()).thenReturn(true);
          // cancel friend request fails
          when(() => socialClient.cancelFriendRequest(toId: toId))
              .thenAnswer((_) async => false);

          // Act
          final result = await underTest.cancelFriendRequest(
            friendRequest: canceledFriendRequest,
          );

          // Assert
          expect(result, left(const FriendFailure.unexpected()));
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN cancel friend request succeeds '
        'THEN return unit.',
        () async {
          // Arrange
          // authenticated user
          when(() => authService.isAuthenticated()).thenReturn(true);
          // cancel friend request succeeds
          when(() => socialClient.cancelFriendRequest(toId: toId))
              .thenAnswer((_) async => true);

          // Act
          final result = await underTest.cancelFriendRequest(
            friendRequest: canceledFriendRequest,
          );

          // Assert
          expect(result, right(unit));
        },
      );
    });

    group('#declineFriendRequest#', () {
      const fromId = 'fromId';
      final declinedFriendRequest = FriendRequest.dummy().copyWith(
        fromId: UniqueId.fromUniqueString(fromId),
      );

      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () async {
          // Arrange
          // not authenticated user
          when(() => authService.isAuthenticated()).thenReturn(false);

          // Act & Assert
          expect(
            underTest.declineFriendRequest(
              friendRequest: declinedFriendRequest,
            ),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN decline friend request fails '
        'THEN return unexpected failure.',
        () async {
          // Arrange
          // authenticated user
          when(() => authService.isAuthenticated()).thenReturn(true);
          // decline friend request fails
          when(() => socialClient.declineFriendRequest(fromId: fromId))
              .thenAnswer((_) async => false);

          // Act
          final result = await underTest.declineFriendRequest(
            friendRequest: declinedFriendRequest,
          );

          // Assert
          expect(result, left(const FriendFailure.unexpected()));
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN decline friend request succeeds '
        'THEN return unit.',
        () async {
          // Arrange
          // authenticated user
          when(() => authService.isAuthenticated()).thenReturn(true);
          // decline friend request succeeds
          when(() => socialClient.declineFriendRequest(fromId: fromId))
              .thenAnswer((_) async => true);

          // Act
          final result = await underTest.declineFriendRequest(
            friendRequest: declinedFriendRequest,
          );

          // Assert
          expect(result, right(unit));
        },
      );
    });

    group('getFriends', () {
      // TODO implement tests
    });

    group('#getReceivedFriendRequests#', () {
      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () {
          // Arrange
          // not authenticated user
          when(() => authService.userId()).thenThrow(NotAuthenticatedError());

          // Act & Assert
          expect(
            () async => underTest.getReceivedFriendRequests(),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN firestore contains invalid received friend requests json '
        'THEN return unexpected failure.',
        () async {
          // Arrange
          // authenticated user
          when(() => authService.userId())
              .thenReturn(UniqueId.fromUniqueString(userId));
          // invalid received friend requests json
          await firebaseFirestore.receivedFriendRequestsCollection().add({
            'key': 'value',
          });

          // Act
          final result = await underTest.getReceivedFriendRequests();

          // Assert
          expect(result, left(const FriendFailure.unexpected()));
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN firestore contains 0 docs '
        'THEN return empty list.',
        () async {
          // Arrange
          // authenticated user
          when(() => authService.userId())
              .thenReturn(UniqueId.fromUniqueString(userId));
          // firestore return 0 docs
          // do nothing

          // Act
          final result = await underTest.getReceivedFriendRequests();

          // Assert
          expect(result, right(const KtList.empty()));
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN firestore contains valid received friend requests json '
        'THEN return received friend requests sorted by createdAt desc.',
        () async {
          // Arrange
          // authenticated user
          when(() => authService.userId())
              .thenReturn(UniqueId.fromUniqueString(userId));
          // valid received friend requests json
          const id1 = 'id1';
          const toId1 = 'toId1';
          const fromId1 = 'fromId1';
          const fromName1 = 'fromName1';
          const read1 = true;
          const createdAt1 = 1;
          await firebaseFirestore
              .receivedFriendRequestsCollection()
              .doc(id1)
              .set({
            'toId': toId1,
            'fromId': fromId1,
            'fromName': fromName1,
            'read': read1,
            'createdAt': createdAt1
          });
          const id2 = 'id2';
          const toId2 = 'toId2';
          const fromId2 = 'fromId2';
          const fromName2 = 'fromName2';
          const read2 = false;
          const createdAt2 = 2;
          await firebaseFirestore
              .receivedFriendRequestsCollection()
              .doc(id2)
              .set({
            'toId': toId2,
            'fromId': fromId2,
            'fromName': fromName2,
            'read': read2,
            'createdAt': createdAt2
          });

          // Act
          final result = await underTest.getReceivedFriendRequests();

          // Assert
          expect(
            result,
            right(
              KtList.from(
                [
                  FriendRequest(
                    id: UniqueId.fromUniqueString(id2),
                    toId: UniqueId.fromUniqueString(toId2),
                    fromId: UniqueId.fromUniqueString(fromId2),
                    fromName: Username(fromName2),
                    read: read2,
                    createdAt: DateTime.fromMillisecondsSinceEpoch(createdAt2),
                  ),
                  FriendRequest(
                    id: UniqueId.fromUniqueString(id1),
                    toId: UniqueId.fromUniqueString(toId1),
                    fromId: UniqueId.fromUniqueString(fromId1),
                    fromName: Username(fromName1),
                    read: read1,
                    createdAt: DateTime.fromMillisecondsSinceEpoch(createdAt1),
                  ),
                ],
              ),
            ),
          );
        },
      );
    });

    group('#getSentFriendRequests#', () {
      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () {
          // Arrange
          // not authenticated user
          when(() => authService.userId()).thenThrow(NotAuthenticatedError());

          // Act & Assert
          expect(
            () async => underTest.getSentFriendRequests(),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN firestore contains invalid sent friend requests json '
        'THEN return unexpected failure.',
        () async {
          // Arrange
          // authenticated user
          when(() => authService.userId())
              .thenReturn(UniqueId.fromUniqueString(userId));
          // invalid received friend requests json
          await firebaseFirestore.sentFriendRequestsCollection().add({
            'key': 'value',
          });

          // Act
          final result = await underTest.getSentFriendRequests();

          // Assert
          expect(result, left(const FriendFailure.unexpected()));
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN firestore contains 0 docs '
        'THEN return empty list.',
        () async {
          // Arrange
          // authenticated user
          when(() => authService.userId())
              .thenReturn(UniqueId.fromUniqueString(userId));
          // firestore return 0 docs
          // do nothing

          // Act
          final result = await underTest.getSentFriendRequests();

          // Assert
          expect(result, right(const KtList.empty()));
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN firestore contains valid sent friend requests json '
        'THEN return sent friend requests sorted by createdAt desc.',
        () async {
          // Arrange
          // authenticated user
          when(() => authService.userId())
              .thenReturn(UniqueId.fromUniqueString(userId));
          // valid received friend requests json
          const id1 = 'id1';
          const toId1 = 'toId1';
          const fromId1 = 'fromId1';
          const fromName1 = 'fromName1';
          const read1 = true;
          const createdAt1 = 1;
          await firebaseFirestore.sentFriendRequestsCollection().doc(id1).set({
            'toId': toId1,
            'fromId': fromId1,
            'fromName': fromName1,
            'read': read1,
            'createdAt': createdAt1
          });
          const id2 = 'id2';
          const toId2 = 'toId2';
          const fromId2 = 'fromId2';
          const fromName2 = 'fromName2';
          const read2 = false;
          const createdAt2 = 2;
          await firebaseFirestore.sentFriendRequestsCollection().doc(id2).set({
            'toId': toId2,
            'fromId': fromId2,
            'fromName': fromName2,
            'read': read2,
            'createdAt': createdAt2
          });

          // Act
          final result = await underTest.getSentFriendRequests();

          // Assert
          expect(
            result,
            right(
              KtList.from(
                [
                  FriendRequest(
                    id: UniqueId.fromUniqueString(id2),
                    toId: UniqueId.fromUniqueString(toId2),
                    fromId: UniqueId.fromUniqueString(fromId2),
                    fromName: Username(fromName2),
                    read: read2,
                    createdAt: DateTime.fromMillisecondsSinceEpoch(createdAt2),
                  ),
                  FriendRequest(
                    id: UniqueId.fromUniqueString(id1),
                    toId: UniqueId.fromUniqueString(toId1),
                    fromId: UniqueId.fromUniqueString(fromId1),
                    fromName: Username(fromName1),
                    read: read1,
                    createdAt: DateTime.fromMillisecondsSinceEpoch(createdAt1),
                  ),
                ],
              ),
            ),
          );
        },
      );
    });

    group('#markReceivedFriendRequestsAsRead#', () {
      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () {
          // Arrange
          // not authenticated user
          when(() => authService.userId()).thenThrow(NotAuthenticatedError());

          // Act & Assert
          expect(
            () async => underTest.markReceivedFriendRequestsAsRead(),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN firestore contains valid received friend requests json '
        'THEN set read property of all received friend requests to true and write to firestore.',
        () async {
          // Arrange
          // authenticated user
          when(() => authService.userId())
              .thenReturn(UniqueId.fromUniqueString(userId));

          const id1 = 'id1';
          await firebaseFirestore
              .receivedFriendRequestsCollection()
              .doc(id1)
              .set({
            'toId': 'toId1',
            'fromId': 'fromId1',
            'fromName': 'fromName1',
            'read': false,
            'createdAt': 1
          });
          const id2 = 'id2';
          await firebaseFirestore
              .receivedFriendRequestsCollection()
              .doc(id2)
              .set({
            'toId': 'toId2',
            'fromId': 'fromId2',
            'fromName': 'fromName2',
            'read': true,
            'createdAt': 2
          });

          // Act
          await underTest.markReceivedFriendRequestsAsRead();

          // Assert
          final updatedRead1 = ((await firebaseFirestore
                  .receivedFriendRequestsCollection()
                  .doc(id1)
                  .get())
              .data()! as Map<String, dynamic>)['read'] as bool;
          final updatedRead2 = ((await firebaseFirestore
                  .receivedFriendRequestsCollection()
                  .doc(id1)
                  .get())
              .data()! as Map<String, dynamic>)['read'] as bool;
          expect(updatedRead1, true);
          expect(updatedRead2, true);
        },
      );
    });

    group('#removeFriend#', () {
      const friendId = 'friendId';
      final removedFriend = Friend.dummy().copyWith(
        id: UniqueId.fromUniqueString(friendId),
      );

      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () async {
          // Arrange
          // not authenticated user
          when(() => authService.isAuthenticated()).thenReturn(false);

          // Act & Assert
          expect(
            underTest.removeFriend(friend: removedFriend),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN remove friend fails '
        'THEN return unexpected failure.',
        () async {
          // Arrange
          // authenticated user
          when(() => authService.isAuthenticated()).thenReturn(true);
          // remove friend fails
          when(() => socialClient.removeFriend(friendId: friendId))
              .thenAnswer((_) async => false);

          // Act
          final result = await underTest.removeFriend(friend: removedFriend);

          // Assert
          expect(result, left(const FriendFailure.unexpected()));
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN remove friend succeeds '
        'THEN return unit.',
        () async {
          // Arrange
          // authenticated user
          when(() => authService.isAuthenticated()).thenReturn(true);
          // remove friend succeeds
          when(() => socialClient.removeFriend(friendId: friendId))
              .thenAnswer((_) async => true);

          // Act
          final result = await underTest.removeFriend(friend: removedFriend);

          // Assert
          expect(result, right(unit));
        },
      );
    });

    group('searchUserByUsername', () {
      // TODO implement tests
    });

    group('#getUserById#', () {
      const userId = 'userId';

      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () {
          // Arrange
          // not authenticated user
          when(() => authService.isAuthenticated()).thenReturn(false);

          // Act & Assert
          expect(
            () => underTest.getUserById(id: userId),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN firestore contains invalid user snapshot json '
        'THEN return unexpected failure.',
        () async {
          // Arrange
          // authenticated user
          when(() => authService.isAuthenticated()).thenReturn(true);
          // invalid user snapshot json
          await firebaseFirestore.profilesCollection().add({
            'key': 'value',
          });

          // Act
          final result = await underTest.getUserById(id: userId);

          // Assert
          expect(result, left(const FriendFailure.unexpected()));
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN firestore contains valid user snapshot json '
        'THEN return user snapshot.',
        () async {
          // Arrange
          // authenticated user
          when(() => authService.isAuthenticated()).thenReturn(true);
          // valid user snapshot json
          const photoUrl = 'photoUrl';
          const name = 'name';
          await firebaseFirestore.profilesCollection().doc(userId).set({
            'photoUrl': photoUrl,
            'name': name,
          });

          // Act
          final result = await underTest.getUserById(id: userId);

          // Assert
          expect(
            result,
            right(
              UserSnapshot(
                id: UniqueId.fromUniqueString(userId),
                photoUrl: photoUrl,
                name: Username(name),
              ),
            ),
          );
        },
      );
    });

    group('#sendFriendRequest#', () {
      const toId = 'toId';

      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () async {
          // Arrange
          // not authenticated user
          when(() => authService.isAuthenticated()).thenReturn(false);

          // Act & Assert
          expect(
            underTest.sendFriendRequest(toId: UniqueId.fromUniqueString(toId)),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN send friend request fails '
        'THEN return unexpected failure.',
        () async {
          // Arrange
          // authenticated user
          when(() => authService.isAuthenticated()).thenReturn(true);
          // send friend request fails
          when(() => socialClient.sendFriendRequest(toId: toId))
              .thenAnswer((_) async => false);

          // Act
          final result = await underTest.sendFriendRequest(
            toId: UniqueId.fromUniqueString(toId),
          );

          // Assert
          expect(result, left(const FriendFailure.unexpected()));
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN send friend request succeeds '
        'THEN return unit.',
        () async {
          // Arrange
          // authenticated user
          when(() => authService.isAuthenticated()).thenReturn(true);
          // send friend request succeeds
          when(() => socialClient.sendFriendRequest(toId: toId))
              .thenAnswer((_) async => true);

          // Act
          final result = await underTest.sendFriendRequest(
            toId: UniqueId.fromUniqueString(toId),
          );

          // Assert
          expect(result, right(unit));
        },
      );
    });

    group('watchFriends', () {
      // TODO implement tests
    });

    group('#watchReceivedFriendRequests#', () {
      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () async {
          // Arrange
          // not authenticated user
          when(() => authService.userId()).thenThrow(NotAuthenticatedError());

          // Act & Assert
          expect(
            () => underTest.watchReceivedFriendRequests(),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN firestore contains invalid received friend requests json '
        'THEN emit unexpected failure.',
        () async {
          // Arrange
          // authenticated user
          when(() => authService.userId())
              .thenReturn(UniqueId.fromUniqueString(userId));
          // invalid received friend requests json
          await firebaseFirestore.receivedFriendRequestsCollection().add({
            'key': 'value',
          });

          // Act
          final result = underTest.watchReceivedFriendRequests();

          // Assert
          expect(
            result,
            emitsInOrder([left(const FriendFailure.unexpected())]),
          );
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN firestore contains 0 docs '
        'THEN emit empty list.',
        () async {
          // Arrange
          // authenticated user
          when(() => authService.userId())
              .thenReturn(UniqueId.fromUniqueString(userId));
          // firestore return 0 docs
          // do nothing

          // Act
          final result = underTest.watchReceivedFriendRequests();

          // Assert

          expect(result, emitsInOrder([right(const KtList.empty())]));
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN firestore contains valid received friend requests json '
        'THEN emit received friend requests sorted by createdAt desc.',
        () async {
          // Arrange
          // authenticated user
          when(() => authService.userId())
              .thenReturn(UniqueId.fromUniqueString(userId));
          // valid received friend requests json
          const id1 = 'id1';
          const toId1 = 'toId1';
          const fromId1 = 'fromId1';
          const fromName1 = 'fromName1';
          const read1 = true;
          const createdAt1 = 1;
          await firebaseFirestore
              .receivedFriendRequestsCollection()
              .doc(id1)
              .set({
            'toId': toId1,
            'fromId': fromId1,
            'fromName': fromName1,
            'read': read1,
            'createdAt': createdAt1
          });
          const id2 = 'id2';
          const toId2 = 'toId2';
          const fromId2 = 'fromId2';
          const fromName2 = 'fromName2';
          const read2 = false;
          const createdAt2 = 2;
          await firebaseFirestore
              .receivedFriendRequestsCollection()
              .doc(id2)
              .set({
            'toId': toId2,
            'fromId': fromId2,
            'fromName': fromName2,
            'read': read2,
            'createdAt': createdAt2
          });

          // Act
          final result = underTest.watchReceivedFriendRequests();

          // Assert
          expect(
            result,
            emitsInOrder([
              right(
                KtList.from(
                  [
                    FriendRequest(
                      id: UniqueId.fromUniqueString(id2),
                      toId: UniqueId.fromUniqueString(toId2),
                      fromId: UniqueId.fromUniqueString(fromId2),
                      fromName: Username(fromName2),
                      read: read2,
                      createdAt:
                          DateTime.fromMillisecondsSinceEpoch(createdAt2),
                    ),
                    FriendRequest(
                      id: UniqueId.fromUniqueString(id1),
                      toId: UniqueId.fromUniqueString(toId1),
                      fromId: UniqueId.fromUniqueString(fromId1),
                      fromName: Username(fromName1),
                      read: read1,
                      createdAt:
                          DateTime.fromMillisecondsSinceEpoch(createdAt1),
                    ),
                  ],
                ),
              ),
            ]),
          );
        },
      );
    });

    group('#watchSentFriendRequests#', () {
      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () async {
          // Arrange
          // not authenticated user
          when(() => authService.userId()).thenThrow(NotAuthenticatedError());

          // Act & Assert
          expect(
            () => underTest.watchSentFriendRequests(),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN firestore contains invalid sent friend requests json '
        'THEN emit unexpected failure.',
        () async {
          // Arrange
          // authenticated user
          when(() => authService.userId())
              .thenReturn(UniqueId.fromUniqueString(userId));
          // invalid sent friend requests json
          await firebaseFirestore.sentFriendRequestsCollection().add({
            'key': 'value',
          });

          // Act
          final result = underTest.watchSentFriendRequests();

          // Assert
          expect(
            result,
            emitsInOrder([left(const FriendFailure.unexpected())]),
          );
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN firestore contains 0 docs '
        'THEN emit empty list.',
        () async {
          // Arrange
          // authenticated user
          when(() => authService.userId())
              .thenReturn(UniqueId.fromUniqueString(userId));
          // firestore return 0 docs
          // do nothing

          // Act
          final result = underTest.watchSentFriendRequests();

          // Assert

          expect(result, emitsInOrder([right(const KtList.empty())]));
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN firestore contains valid sent friend requests json '
        'THEN emit sent friend requests sorted by createdAt desc.',
        () async {
          // Arrange
          // authenticated user
          when(() => authService.userId())
              .thenReturn(UniqueId.fromUniqueString(userId));
          // valid sent friend requests json
          const id1 = 'id1';
          const toId1 = 'toId1';
          const fromId1 = 'fromId1';
          const fromName1 = 'fromName1';
          const read1 = true;
          const createdAt1 = 1;
          await firebaseFirestore.sentFriendRequestsCollection().doc(id1).set({
            'toId': toId1,
            'fromId': fromId1,
            'fromName': fromName1,
            'read': read1,
            'createdAt': createdAt1
          });
          const id2 = 'id2';
          const toId2 = 'toId2';
          const fromId2 = 'fromId2';
          const fromName2 = 'fromName2';
          const read2 = false;
          const createdAt2 = 2;
          await firebaseFirestore.sentFriendRequestsCollection().doc(id2).set({
            'toId': toId2,
            'fromId': fromId2,
            'fromName': fromName2,
            'read': read2,
            'createdAt': createdAt2
          });

          // Act
          final result = underTest.watchSentFriendRequests();

          // Assert
          expect(
            result,
            emitsInOrder([
              right(
                KtList.from(
                  [
                    FriendRequest(
                      id: UniqueId.fromUniqueString(id2),
                      toId: UniqueId.fromUniqueString(toId2),
                      fromId: UniqueId.fromUniqueString(fromId2),
                      fromName: Username(fromName2),
                      read: read2,
                      createdAt:
                          DateTime.fromMillisecondsSinceEpoch(createdAt2),
                    ),
                    FriendRequest(
                      id: UniqueId.fromUniqueString(id1),
                      toId: UniqueId.fromUniqueString(toId1),
                      fromId: UniqueId.fromUniqueString(fromId1),
                      fromName: Username(fromName1),
                      read: read1,
                      createdAt:
                          DateTime.fromMillisecondsSinceEpoch(createdAt1),
                    ),
                  ],
                ),
              ),
            ]),
          );
        },
      );
    });
  });
}
