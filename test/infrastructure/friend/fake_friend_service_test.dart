import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/domain_error.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/friend/friend.dart';
import 'package:dart_counter/domain/friend/friend_failure.dart';
import 'package:dart_counter/domain/friend/friend_request.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
import 'package:dart_counter/infrastructure/friend/fake_friend_service.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthService extends Mock implements IAuthService {}

class MockUserService extends Mock implements IUserService {}

void main() {
  late MockAuthService mockAuthService;
  late MockUserService mockUserService; // TODO remove if not needed

  setUp(() {
    mockAuthService = MockAuthService();
    mockUserService = MockUserService();
    FakeFriendService.hasNetworkConnection = true;
  });

  void setUpMockAuthServiceWithAuthenticatedUser() {
    when(
      () => mockAuthService.isAuthenticated(),
    ).thenAnswer((_) => true);
    when(
      () => mockAuthService.watchIsAuthenticated(),
    ).thenAnswer((_) => Stream.fromIterable([true]));
  }

  void setUpMockAuthServiceWithNotAuthenticatedUser() {
    when(
      () => mockAuthService.isAuthenticated(),
    ).thenAnswer((_) => false);
    when(
      () => mockAuthService.watchIsAuthenticated(),
    ).thenAnswer((_) => Stream.fromIterable([false]));
  }

  group('#Methods#', () {
    group('#acceptFriendRequest#', () {
      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () {
          // Arrange
          setUpMockAuthServiceWithNotAuthenticatedUser();
          final underTest = FakeFriendService(mockAuthService);

          // Act & Assert
          expect(
            underTest.acceptFriendRequest(friendRequest: FriendRequest.dummy()),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user but has no network access '
        'THEN return no network access failure.',
        () async {
          // Arrange
          setUpMockAuthServiceWithAuthenticatedUser();
          FakeFriendService.hasNetworkConnection = false;
          final underTest = FakeFriendService(mockAuthService);

          // Act
          final failurOrUnit = await underTest.acceptFriendRequest(
            friendRequest: FriendRequest.dummy(),
          );

          // Assert
          expect(
            failurOrUnit,
            left(const FriendFailure.noNetworkAccess()),
          );
        },
      );

      test(
        'GIVEN authenticated user and has network access '
        'WHEN called with valid friend request '
        'THEN return unit and emit updated received friend requests without the accepted friend request.',
        () async {
          // Arrange
          setUpMockAuthServiceWithAuthenticatedUser();
          FakeFriendService.hasNetworkConnection = true;
          final underTest = FakeFriendService(mockAuthService);
          final acceptedFriendRequest =
              (await underTest.getReceivedFriendRequests())
                  .toOption()
                  .toNullable()!
                  .get(0);

          // Act
          final failurOrUnit = await underTest.acceptFriendRequest(
            friendRequest: acceptedFriendRequest,
          );

          // Assert
          expect(failurOrUnit.isRight(), true);
          underTest.watchReceivedFriendRequests().listen(
                expectAsync1(
                  (failureOrFriendRequests) => expect(
                    failureOrFriendRequests
                        .toOption()
                        .toNullable()!
                        .contains(acceptedFriendRequest),
                    false,
                  ),
                ),
              );
        },
      );
    });

    group('#cancelFriendRequest#', () {
      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () {
          // Arrange
          setUpMockAuthServiceWithNotAuthenticatedUser();
          final underTest = FakeFriendService(mockAuthService);

          // Act & Assert
          expect(
            underTest.cancelFriendRequest(friendRequest: FriendRequest.dummy()),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user but has no network access '
        'THEN return no network access failure.',
        () async {
          // Arrange
          setUpMockAuthServiceWithAuthenticatedUser();
          FakeFriendService.hasNetworkConnection = false;
          final underTest = FakeFriendService(mockAuthService);

          // Act
          final failurOrUnit = await underTest.cancelFriendRequest(
            friendRequest: FriendRequest.dummy(),
          );

          // Assert
          expect(
            failurOrUnit,
            left(const FriendFailure.noNetworkAccess()),
          );
        },
      );

      test(
        'GIVEN authenticated user and has network access '
        'WHEN called with valid friend request '
        'THEN return unit and emit updated sent friend requests without the canceled friend request.',
        () async {
          // Arrange
          setUpMockAuthServiceWithAuthenticatedUser();
          FakeFriendService.hasNetworkConnection = true;
          final underTest = FakeFriendService(mockAuthService);
          final canceledFriendRequest =
              (await underTest.getSentFriendRequests())
                  .toOption()
                  .toNullable()!
                  .get(0);

          // Act
          final failurOrUnit = await underTest.cancelFriendRequest(
            friendRequest: canceledFriendRequest,
          );

          // Assert
          expect(failurOrUnit.isRight(), true);
          underTest.watchSentFriendRequests().listen(
                expectAsync1(
                  (failureOrFriendRequests) => expect(
                    failureOrFriendRequests
                        .toOption()
                        .toNullable()!
                        .contains(canceledFriendRequest),
                    false,
                  ),
                ),
              );
        },
      );
    });

    group('#declineFriendRequest#', () {
      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () {
          // Arrange
          setUpMockAuthServiceWithNotAuthenticatedUser();
          final underTest = FakeFriendService(mockAuthService);

          // Act & Assert
          expect(
            underTest.declineFriendRequest(
                friendRequest: FriendRequest.dummy()),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user but has no network access '
        'THEN return no network access failure.',
        () async {
          // Arrange
          setUpMockAuthServiceWithAuthenticatedUser();
          FakeFriendService.hasNetworkConnection = false;
          final underTest = FakeFriendService(mockAuthService);

          // Act
          final failurOrUnit = await underTest.declineFriendRequest(
              friendRequest: FriendRequest.dummy());

          // Assert
          expect(
            failurOrUnit,
            left(const FriendFailure.noNetworkAccess()),
          );
        },
      );

      test(
        'GIVEN authenticated user and has network access '
        'WHEN called with valid friend request '
        'THEN return unit and emit updated received friend requests without the declinced friend request.',
        () async {
          // Arrange
          setUpMockAuthServiceWithAuthenticatedUser();
          FakeFriendService.hasNetworkConnection = true;
          final underTest = FakeFriendService(mockAuthService);
          final declinedFriendRequest =
              (await underTest.getReceivedFriendRequests())
                  .toOption()
                  .toNullable()!
                  .get(0);

          // Act
          final failurOrUnit = await underTest.declineFriendRequest(
            friendRequest: declinedFriendRequest,
          );

          // Assert
          expect(failurOrUnit.isRight(), true);
          underTest.watchReceivedFriendRequests().listen(
                expectAsync1(
                  (failureOrFriendRequests) => expect(
                    failureOrFriendRequests
                        .toOption()
                        .toNullable()!
                        .contains(declinedFriendRequest),
                    false,
                  ),
                ),
              );
        },
      );
    });

    group('#getFriends#', () {
      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () {
          // Arrange
          setUpMockAuthServiceWithNotAuthenticatedUser();
          final underTest = FakeFriendService(mockAuthService);

          // Act & Assert
          expect(
            () async => underTest.getFriends(),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user but has no network access '
        'THEN return no network access failure ',
        () async {
          // Arrange
          setUpMockAuthServiceWithAuthenticatedUser();
          FakeFriendService.hasNetworkConnection = false;
          final underTest = FakeFriendService(mockAuthService);

          // Act
          final failureOrFriends = await underTest.getFriends();

          // Assert
          expect(
            failureOrFriends,
            left(const FriendFailure.noNetworkAccess()),
          );
        },
      );

      test(
        'GIVEN authenticated user and has network access '
        'THEN return not empty friend.',
        () async {
          // Arrange
          setUpMockAuthServiceWithAuthenticatedUser();
          FakeFriendService.hasNetworkConnection = true;
          final underTest = FakeFriendService(mockAuthService);

          // Act
          final failureOrFriends = await underTest.getFriends();

          // Assert
          expect(failureOrFriends.isRight(), true);
          expect(failureOrFriends.toOption().toNullable()!.isEmpty(), false);
        },
      );
    });

    group('#getReceivedFriendRequests#', () {
      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () {
          // Arrange
          setUpMockAuthServiceWithNotAuthenticatedUser();
          final underTest = FakeFriendService(mockAuthService);

          // Act & Assert
          expect(
            () async => underTest.getReceivedFriendRequests(),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user but has no network access '
        'THEN return no network access failure ',
        () async {
          // Arrange
          setUpMockAuthServiceWithAuthenticatedUser();
          FakeFriendService.hasNetworkConnection = false;
          final underTest = FakeFriendService(mockAuthService);

          // Act
          final failureOrReceivedFriendRequests =
              await underTest.getReceivedFriendRequests();

          // Assert
          expect(
            failureOrReceivedFriendRequests,
            left(const FriendFailure.noNetworkAccess()),
          );
        },
      );

      test(
        'GIVEN authenticated user and has network access '
        'THEN return not empty received friend requests.',
        () async {
          // Arrange
          setUpMockAuthServiceWithAuthenticatedUser();
          FakeFriendService.hasNetworkConnection = true;
          final underTest = FakeFriendService(mockAuthService);

          // Act
          final failureOrReceivedFriendRequests =
              await underTest.getReceivedFriendRequests();

          // Assert
          expect(failureOrReceivedFriendRequests.isRight(), true);
          expect(
            failureOrReceivedFriendRequests.toOption().toNullable()!.isEmpty(),
            false,
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
          setUpMockAuthServiceWithNotAuthenticatedUser();
          final underTest = FakeFriendService(mockAuthService);

          // Act & Assert
          expect(
            () async => underTest.getSentFriendRequests(),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user but has no network access '
        'THEN return no network access failure ',
        () async {
          // Arrange
          setUpMockAuthServiceWithAuthenticatedUser();
          FakeFriendService.hasNetworkConnection = false;
          final underTest = FakeFriendService(mockAuthService);

          // Act
          final failureOrSentFriendRequests =
              await underTest.getSentFriendRequests();

          // Assert
          expect(
            failureOrSentFriendRequests,
            left(const FriendFailure.noNetworkAccess()),
          );
        },
      );

      test(
        'GIVEN authenticated user and has network access '
        'THEN return not empty sent friend requests.',
        () async {
          // Arrange
          setUpMockAuthServiceWithAuthenticatedUser();
          FakeFriendService.hasNetworkConnection = true;
          final underTest = FakeFriendService(mockAuthService);

          // Act
          final failureOrSentFriendRequests =
              await underTest.getSentFriendRequests();

          // Assert
          expect(failureOrSentFriendRequests.isRight(), true);
          expect(
            failureOrSentFriendRequests.toOption().toNullable()!.isEmpty(),
            false,
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
          setUpMockAuthServiceWithNotAuthenticatedUser();
          final underTest = FakeFriendService(mockAuthService);

          // Act & Assert
          expect(
            () async => underTest.markReceivedFriendRequestsAsRead(),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'Return unit and emit updated received friend requests with read flag set to true for every friend request.',
        () async {
          // Arrange
          setUpMockAuthServiceWithAuthenticatedUser();
          FakeFriendService.hasNetworkConnection = true;
          final underTest = FakeFriendService(mockAuthService);

          // Act
          final failureOrUnit =
              await underTest.markReceivedFriendRequestsAsRead();

          // Assert
          expect(failureOrUnit.isRight(), true);
          underTest.watchReceivedFriendRequests().listen(
                expectAsync1(
                  (failureOrFriendRequests) => expect(
                    failureOrFriendRequests
                        .toOption()
                        .toNullable()!
                        .asList()
                        .every((element) => element.read),
                    true,
                  ),
                ),
              );
        },
      );
    });

    group('#removeFriend#', () {
      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () {
          // Arrange
          setUpMockAuthServiceWithNotAuthenticatedUser();
          final underTest = FakeFriendService(mockAuthService);

          // Act & Assert
          expect(
            underTest.removeFriend(friend: Friend.dummy()),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user but has no network access '
        'THEN return no network access failure.',
        () async {
          // Arrange
          setUpMockAuthServiceWithAuthenticatedUser();
          FakeFriendService.hasNetworkConnection = false;
          final underTest = FakeFriendService(mockAuthService);

          // Act
          final failurOrUnit = await underTest.removeFriend(
            friend: Friend.dummy(),
          );

          // Assert
          expect(
            failurOrUnit,
            left(const FriendFailure.noNetworkAccess()),
          );
        },
      );

      test(
        'GIVEN authenticated user and has network access '
        'WHEN called with valid friend '
        'THEN return unit and emit updated friends without the removed friend.',
        () async {
          // Arrange
          setUpMockAuthServiceWithAuthenticatedUser();
          FakeFriendService.hasNetworkConnection = true;
          final underTest = FakeFriendService(mockAuthService);
          final removedFriend =
              (await underTest.getFriends()).toOption().toNullable()!.get(0);

          // Act
          final failurOrUnit = await underTest.removeFriend(
            friend: removedFriend,
          );

          // Assert
          expect(failurOrUnit.isRight(), true);
          underTest.watchFriends().listen(
                expectAsync1(
                  (failureOrFriends) => expect(
                    failureOrFriends
                        .toOption()
                        .toNullable()!
                        .contains(removedFriend),
                    false,
                  ),
                ),
              );
        },
      );
    });

    group('#searchUserByUsername#', () {
      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () {
          // Arrange
          setUpMockAuthServiceWithNotAuthenticatedUser();
          final underTest = FakeFriendService(mockAuthService);

          // Act & Assert
          expect(
            underTest.searchUserByUsername(username: 'username'),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user but has no network access '
        'THEN return no network access failure.',
        () async {
          // Arrange
          setUpMockAuthServiceWithAuthenticatedUser();
          FakeFriendService.hasNetworkConnection = false;
          final underTest = FakeFriendService(mockAuthService);

          // Act
          final failurOrUnit =
              await underTest.searchUserByUsername(username: 'username');

          // Assert
          expect(
            failurOrUnit,
            left(const FriendFailure.noNetworkAccess()),
          );
        },
      );

      // TODO test success case
    });

    group('#getUserById#', () {
      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () {
          // Arrange
          setUpMockAuthServiceWithNotAuthenticatedUser();
          final underTest = FakeFriendService(mockAuthService);

          // Act & Assert
          expect(
            underTest.getUserById(id: 'userId'),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user but has no network access '
        'THEN return no network access failure.',
        () async {
          // Arrange
          setUpMockAuthServiceWithAuthenticatedUser();
          FakeFriendService.hasNetworkConnection = false;
          final underTest = FakeFriendService(mockAuthService);

          // Act
          final failurOrUnit = await underTest.getUserById(id: 'userId');

          // Assert
          expect(
            failurOrUnit,
            left(const FriendFailure.noNetworkAccess()),
          );
        },
      );

      test(
          'GIVEN authenticated user and has network access '
          'WHEN called with id '
          'THEN return user snapshot that has the provided id.', () async {
        // Arrange
        setUpMockAuthServiceWithAuthenticatedUser();
        FakeFriendService.hasNetworkConnection = true;
        final underTest = FakeFriendService(mockAuthService);
        const id = 'userId';

        // Act
        final failurOrUnit = await underTest.getUserById(
          id: id,
        );

        // Assert
        expect(failurOrUnit.isRight(), true);
        expect(
          failurOrUnit.toOption().toNullable()!.id,
          UniqueId.fromUniqueString(id),
        );
      });
    });

    group('#sendFriendRequest#', () {
      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () {
          // Arrange
          setUpMockAuthServiceWithNotAuthenticatedUser();
          final underTest = FakeFriendService(mockAuthService);

          // Act & Assert
          expect(
            underTest.sendFriendRequest(toId: UniqueId()),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user but has no network access '
        'THEN return no network access failure.',
        () async {
          // Arrange
          setUpMockAuthServiceWithAuthenticatedUser();
          FakeFriendService.hasNetworkConnection = false;
          final underTest = FakeFriendService(mockAuthService);

          // Act
          final failurOrUnit = await underTest.sendFriendRequest(
            toId: UniqueId(),
          );

          // Assert
          expect(
            failurOrUnit,
            left(const FriendFailure.noNetworkAccess()),
          );
        },
      );

      test(
        'GIVEN authenticated user and has network access '
        'WHEN called with valid received id '
        'THEN return unit and emit updated sent friend requests which contain the sent friend request.',
        () async {
          // Arrange
          setUpMockAuthServiceWithAuthenticatedUser();
          FakeFriendService.hasNetworkConnection = true;
          final underTest = FakeFriendService(mockAuthService);
          final toId = UniqueId();

          // Act
          final failurOrUnit = await underTest.sendFriendRequest(toId: toId);

          // Assert
          expect(failurOrUnit.isRight(), true);
          underTest.watchSentFriendRequests().listen(
                expectAsync1(
                  (failureOrFriendRequests) => expect(
                    failureOrFriendRequests
                        .toOption()
                        .toNullable()!
                        .asList()
                        .any((element) => element.toId == toId),
                    true,
                  ),
                ),
              );
        },
      );
    });

    group('#watchFriends#', () {
      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () {
          // Arrange
          setUpMockAuthServiceWithNotAuthenticatedUser();
          final underTest = FakeFriendService(mockAuthService);

          // Act & Assert
          expect(
            () => underTest.watchFriends(),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user but has no network access '
        'THEN return stream with no network access failure.',
        () {
          // Arrange
          setUpMockAuthServiceWithAuthenticatedUser();
          FakeFriendService.hasNetworkConnection = false;
          final underTest = FakeFriendService(mockAuthService);

          // Act & Assert
          expect(
            underTest.watchFriends(),
            emitsInOrder([left(const FriendFailure.noNetworkAccess())]),
          );
        },
      );

      test(
          'GIVEN network connection available '
          'THEN emit value on listen.', () {
        // Arrange
        setUpMockAuthServiceWithAuthenticatedUser();
        FakeFriendService.hasNetworkConnection = true;
        final underTest = FakeFriendService(mockAuthService);

        // Assert
        underTest.watchFriends().listen(
              expectAsync1(
                (failureOrFriends) => expect(failureOrFriends.isRight(), true),
              ),
            );
      });
    });

    group('#watchReceivedFriendRequests#', () {
      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () {
          // Arrange
          setUpMockAuthServiceWithNotAuthenticatedUser();
          final underTest = FakeFriendService(mockAuthService);

          // Act & Assert
          expect(
            () => underTest.watchReceivedFriendRequests(),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user but has no network access '
        'THEN return stream with no network access failure.',
        () {
          // Arrange
          setUpMockAuthServiceWithAuthenticatedUser();
          FakeFriendService.hasNetworkConnection = false;
          final underTest = FakeFriendService(mockAuthService);

          // Act & Assert
          expect(
            underTest.watchReceivedFriendRequests(),
            emitsInOrder([left(const FriendFailure.noNetworkAccess())]),
          );
        },
      );

      test(
          'GIVEN network connection available '
          'THEN emit value on listen.', () {
        // Arrange
        setUpMockAuthServiceWithAuthenticatedUser();
        FakeFriendService.hasNetworkConnection = true;
        final underTest = FakeFriendService(mockAuthService);

        // Assert
        underTest.watchReceivedFriendRequests().listen(
              expectAsync1(
                (failureOrReceivedFriendRequests) =>
                    expect(failureOrReceivedFriendRequests.isRight(), true),
              ),
            );
      });
    });

    group('#watchSentFriendRequests#', () {
      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () {
          // Arrange
          setUpMockAuthServiceWithNotAuthenticatedUser();
          final underTest = FakeFriendService(mockAuthService);

          // Act & Assert
          expect(
            () => underTest.watchSentFriendRequests(),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user but has no network access '
        'THEN return stream with no network access failure.',
        () {
          // Arrange
          setUpMockAuthServiceWithAuthenticatedUser();
          FakeFriendService.hasNetworkConnection = false;
          final underTest = FakeFriendService(mockAuthService);

          // Act & Assert
          expect(
            underTest.watchSentFriendRequests(),
            emitsInOrder([left(const FriendFailure.noNetworkAccess())]),
          );
        },
      );

      test(
          'GIVEN network connection available '
          'THEN emit value on listen.', () {
        // Arrange
        setUpMockAuthServiceWithAuthenticatedUser();
        FakeFriendService.hasNetworkConnection = true;
        final underTest = FakeFriendService(mockAuthService);

        // Assert
        underTest.watchSentFriendRequests().listen(
              expectAsync1(
                (failureOrSentFriendRequests) =>
                    expect(failureOrSentFriendRequests.isRight(), true),
              ),
            );
      });
    });
  });
}
