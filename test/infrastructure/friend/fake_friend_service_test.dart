import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/domain_error.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/friend/friend.dart';
import 'package:dart_counter/domain/friend/friend_failure.dart';
import 'package:dart_counter/domain/friend/friend_request.dart';
import 'package:dart_counter/infrastructure/friend/fake_friend_service.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthService extends Mock implements IAuthService {}

void main() {
  late MockAuthService mockAuthService;

  late FakeFriendService underTest;

  setUp(() {
    mockAuthService = MockAuthService();

    underTest = FakeFriendService(mockAuthService);
    FakeFriendService.hasNetworkConnection = true;
  });

  group('#Methods#', () {
    group('#acceptFriendRequest#', () {
      final acceptedFriendRequest = FriendRequest.dummy();

      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () {
          // Arrange
          // not authenticated user
          when(() => mockAuthService.isAuthenticated())
              .thenAnswer((_) => false);

          // Act & Assert
          expect(
            underTest.acceptFriendRequest(friendRequest: acceptedFriendRequest),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user but has no network access '
        'THEN return no network access failure.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // no network access
          FakeFriendService.hasNetworkConnection = false;

          // Act
          final result = await underTest.acceptFriendRequest(
            friendRequest: acceptedFriendRequest,
          );

          // Assert
          expect(result, left(const FriendFailure.noNetworkAccess()));
        },
      );

      test(
        'GIVEN authenticated user and has network access '
        'THEN return unit and emit updated received friend requests without the accepted friend request.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // network access
          FakeFriendService.hasNetworkConnection = true;

          final acceptedFriendRequest =
              (await underTest.getReceivedFriendRequests())
                  .toOption()
                  .toNullable()!
                  .get(0);

          // Act
          final result = await underTest.acceptFriendRequest(
            friendRequest: acceptedFriendRequest,
          );

          // Assert
          expect(result, right(unit));
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
      final canceledFriendRequest = FriendRequest.dummy();

      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () {
          // Arrange
          // not authenticated user
          when(() => mockAuthService.isAuthenticated())
              .thenAnswer((_) => false);

          // Act & Assert
          expect(
            underTest.cancelFriendRequest(friendRequest: canceledFriendRequest),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user but has no network access '
        'THEN return no network access failure.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // no network access
          FakeFriendService.hasNetworkConnection = false;

          // Act
          final result = await underTest.cancelFriendRequest(
            friendRequest: canceledFriendRequest,
          );

          // Assert
          expect(result, left(const FriendFailure.noNetworkAccess()));
        },
      );

      test(
        'GIVEN authenticated user and has network access '
        'WHEN called with valid friend request '
        'THEN return unit and emit updated sent friend requests without the canceled friend request.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // network access
          FakeFriendService.hasNetworkConnection = true;
          final canceledFriendRequest =
              (await underTest.getSentFriendRequests())
                  .toOption()
                  .toNullable()!
                  .get(0);

          // Act
          final result = await underTest.cancelFriendRequest(
            friendRequest: canceledFriendRequest,
          );

          // Assert
          expect(result, right(unit));
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
      final declinedFriendRequest = FriendRequest.dummy();

      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () {
          // Arrange
          //not authenticated user
          when(() => mockAuthService.isAuthenticated())
              .thenAnswer((_) => false);

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
        'GIVEN authenticated user but has no network access '
        'THEN return no network access failure.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // no network access
          FakeFriendService.hasNetworkConnection = false;

          // Act
          final result = await underTest.declineFriendRequest(
            friendRequest: declinedFriendRequest,
          );

          // Assert
          expect(result, left(const FriendFailure.noNetworkAccess()));
        },
      );

      test(
        'GIVEN authenticated user and has network access '
        'WHEN called with valid friend request '
        'THEN return unit and emit updated received friend requests without the declinced friend request.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // network access
          FakeFriendService.hasNetworkConnection = true;

          final declinedFriendRequest =
              (await underTest.getReceivedFriendRequests())
                  .toOption()
                  .toNullable()!
                  .get(0);

          // Act
          final result = await underTest.declineFriendRequest(
            friendRequest: declinedFriendRequest,
          );

          // Assert
          expect(result, right(unit));
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
          // not authenticated user
          when(() => mockAuthService.isAuthenticated())
              .thenAnswer((_) => false);

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
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // no network access
          FakeFriendService.hasNetworkConnection = false;

          // Act
          final result = await underTest.getFriends();

          // Assert
          expect(result, left(const FriendFailure.noNetworkAccess()));
        },
      );

      test(
        'GIVEN authenticated user and has network access '
        'THEN return not empty friend.',
        () async {
          // Arrange
          // not authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // network access
          FakeFriendService.hasNetworkConnection = true;

          // Act
          final result = await underTest.getFriends();

          // Assert
          expect(result.toOption().toNullable()!.isEmpty(), false);
        },
      );
    });

    group('#getReceivedFriendRequests#', () {
      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () {
          // Arrange
          // not authenticated user
          when(() => mockAuthService.isAuthenticated())
              .thenAnswer((_) => false);

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
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // no network access
          FakeFriendService.hasNetworkConnection = false;

          // Act
          final result = await underTest.getReceivedFriendRequests();

          // Assert
          expect(result, left(const FriendFailure.noNetworkAccess()));
        },
      );

      test(
        'GIVEN authenticated user and has network access '
        'THEN return not empty received friend requests.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // network access
          FakeFriendService.hasNetworkConnection = true;

          // Act
          final result = await underTest.getReceivedFriendRequests();

          // Assert
          expect(result.toOption().toNullable()!.isEmpty(), false);
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
          when(() => mockAuthService.isAuthenticated())
              .thenAnswer((_) => false);

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
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // no network access
          FakeFriendService.hasNetworkConnection = false;

          // Act
          final result = await underTest.getSentFriendRequests();

          // Assert
          expect(result, left(const FriendFailure.noNetworkAccess()));
        },
      );

      test(
        'GIVEN authenticated user and has network access '
        'THEN return not empty sent friend requests.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // network access
          FakeFriendService.hasNetworkConnection = true;

          // Act
          final result = await underTest.getSentFriendRequests();

          // Assert
          expect(result.toOption().toNullable()!.isEmpty(), false);
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
          when(() => mockAuthService.isAuthenticated())
              .thenAnswer((_) => false);

          // Act & Assert
          expect(
            () async => underTest.markReceivedFriendRequestsAsRead(),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN not authenticated user '
        'GIVEN has network access '
        'THEN emit updated received friend requests with read flag set to true for every friend request.',
        () async {
          // Arrange
          // not authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // network access
          FakeFriendService.hasNetworkConnection = true;

          // Act
          final result = await underTest.markReceivedFriendRequestsAsRead();

          // Assert

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
      final removedFriend = Friend.dummy();

      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () {
          // Arrange
          // not authenticated user
          when(() => mockAuthService.isAuthenticated())
              .thenAnswer((_) => false);

          // Act & Assert
          expect(
            underTest.removeFriend(friend: removedFriend),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user but has no network access '
        'THEN return no network access failure.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // no network access
          FakeFriendService.hasNetworkConnection = false;

          // Act
          final result = await underTest.removeFriend(friend: removedFriend);

          // Assert
          expect(result, left(const FriendFailure.noNetworkAccess()));
        },
      );

      test(
        'GIVEN authenticated user and has network access '
        'WHEN called with valid friend '
        'THEN return unit and emit updated friends without the removed friend.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // network access
          FakeFriendService.hasNetworkConnection = true;

          final removedFriend =
              (await underTest.getFriends()).toOption().toNullable()!.get(0);

          // Act
          final result = await underTest.removeFriend(friend: removedFriend);

          // Assert
          expect(result, right(unit));
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

    group('searchUserByUsername', () {
      const username = 'username';

      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () {
          // Arrange
          // not authenticated user
          when(() => mockAuthService.isAuthenticated())
              .thenAnswer((_) => false);

          // Act & Assert
          expect(
            underTest.searchUserByUsername(username: username),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user but has no network access '
        'THEN return no network access failure.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // no network access
          FakeFriendService.hasNetworkConnection = false;

          // Act
          final result =
              await underTest.searchUserByUsername(username: username);

          // Assert
          expect(result, left(const FriendFailure.noNetworkAccess()));
        },
      );

      // TODO test success case
    });

    group('#getUserById#', () {
      const userId = 'userId';

      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () {
          // Arrange
          // not authenticated user
          when(() => mockAuthService.isAuthenticated())
              .thenAnswer((_) => false);

          // Act & Assert
          expect(
            underTest.getUserById(id: userId),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user but has no network access '
        'THEN return no network access failure.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // no network access
          FakeFriendService.hasNetworkConnection = false;

          // Act
          final result = await underTest.getUserById(id: userId);

          // Assert
          expect(result, left(const FriendFailure.noNetworkAccess()));
        },
      );

      test(
          'GIVEN authenticated user and has network access '
          'WHEN called with id '
          'THEN return user snapshot that has the provided id.', () async {
        // Arrange
        // authenticated user
        when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
        // network access
        FakeFriendService.hasNetworkConnection = true;

        // Act
        final result = await underTest.getUserById(
          id: userId,
        );

        // Assert
        expect(
          result.toOption().toNullable()!.id,
          UniqueId.fromUniqueString(userId),
        );
      });
    });

    group('#sendFriendRequest#', () {
      final toId = UniqueId.fromUniqueString('toId');

      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () {
          // Arrange
          // not authenticated user
          when(() => mockAuthService.isAuthenticated())
              .thenAnswer((_) => false);

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
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // no network access
          FakeFriendService.hasNetworkConnection = false;

          // Act
          final result = await underTest.sendFriendRequest(toId: toId);

          // Assert
          expect(result, left(const FriendFailure.noNetworkAccess()));
        },
      );

      test(
        'GIVEN authenticated user and has network access '
        'WHEN called with valid received id '
        'THEN return unit and emit updated sent friend requests which contain the sent friend request.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // network access
          FakeFriendService.hasNetworkConnection = true;

          // Act
          final result = await underTest.sendFriendRequest(toId: toId);

          // Assert
          expect(result, right(unit));
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
          // not authenticated user
          when(() => mockAuthService.isAuthenticated())
              .thenAnswer((_) => false);

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
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // no network access
          FakeFriendService.hasNetworkConnection = false;

          // Act & Assert
          expect(
            underTest.watchFriends(),
            emitsInOrder([left(const FriendFailure.noNetworkAccess())]),
          );
        },
      );

      test(
          'GIVEN authenticated user and has network access '
          'THEN emit value on listen.', () {
        // Arrange
        // authenticated user
        when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
        // network access
        FakeFriendService.hasNetworkConnection = true;

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
          // not authenticated user
          when(() => mockAuthService.isAuthenticated())
              .thenAnswer((_) => false);

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
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // no network access
          FakeFriendService.hasNetworkConnection = false;

          // Act & Assert
          expect(
            underTest.watchReceivedFriendRequests(),
            emitsInOrder([left(const FriendFailure.noNetworkAccess())]),
          );
        },
      );

      test(
          'GIVEN authenticated user and has network access '
          'THEN emit value on listen.', () {
        // Arrange
        // authenticated user
        when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
        // network access
        FakeFriendService.hasNetworkConnection = true;

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
          // not authenticated user
          when(() => mockAuthService.isAuthenticated())
              .thenAnswer((_) => false);

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
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // no network access
          FakeFriendService.hasNetworkConnection = false;

          // Act & Assert
          expect(
            underTest.watchSentFriendRequests(),
            emitsInOrder([left(const FriendFailure.noNetworkAccess())]),
          );
        },
      );

      test(
          'GIVEN authenticated user and has network access '
          'THEN emit value on listen.', () {
        // Arrange
        // authenticated user
        when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
        // network access
        FakeFriendService.hasNetworkConnection = true;

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
