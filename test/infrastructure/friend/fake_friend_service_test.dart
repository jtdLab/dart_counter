import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/domain_error.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
import 'package:dart_counter/infrastructure/friend/fake_friend_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthService extends Mock implements IAuthService {}

class MockUserService extends Mock implements IUserService {}

void main() {
  setUpAll(() async {
    // mocktail related setup
  });

  late MockAuthService mockAuthService;
  late MockUserService mockUserService;

  setUp(() {
    mockAuthService = MockAuthService();
    mockUserService = MockUserService();
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

  group('acceptFriendRequest', () {
    // TODO implement tests
  });

  group('cancelFriendRequest', () {
    // TODO implement tests
  });

  group('declineFriendRequest', () {
    // TODO implement tests
  });

  group('getFriends', () {
    // TODO implement tests
  });

  group('getReceivedFriendRequests', () {
    // TODO implement tests
  });

  group('getSentFriendRequests', () {
    // TODO implement tests
  });

  group('markReceivedFriendRequestsAsRead', () {
    // TODO implement tests
  });

  group('removeFriend', () {
    // TODO implement tests
  });

  group('searchUserByUsername', () {
    // TODO implement tests
  });

  group('sendFriendRequest', () {
    // TODO implement tests
  });

  group('watchFriends', () {
    test(
      'GIVEN not authenticated user '
      'THEN throw NotAuthenticatedError ',
      () {
        // Arrange
        setUpMockAuthServiceWithNotAuthenticatedUser();
        final underTest = FakeFriendService(mockAuthService, mockUserService);

        // Act & Assert
        expect(
          () => underTest.watchFriends(),
          throwsA(isA<NotAuthenticatedError>()),
        );
      },
    );

    test('emit value on listen', () {
      // Arrange
      setUpMockAuthServiceWithAuthenticatedUser();
      final underTest = FakeFriendService(mockAuthService, mockUserService);

      // Assert
      underTest.watchFriends().listen(
            expectAsync1(
              (failureOrFriends) => expect(failureOrFriends.isRight(), true),
            ),
          );
    });

    // TODO implement tests
  });

  group('watchReceivedFriendRequests', () {
    test(
      'GIVEN not authenticated user '
      'THEN throw NotAuthenticatedError ',
      () {
        // Arrange
        setUpMockAuthServiceWithNotAuthenticatedUser();
        final underTest = FakeFriendService(mockAuthService, mockUserService);

        // Act & Assert
        expect(
          () => underTest.watchReceivedFriendRequests(),
          throwsA(isA<NotAuthenticatedError>()),
        );
      },
    );

    test('emit value on listen', () {
      // Arrange
      setUpMockAuthServiceWithAuthenticatedUser();
      final underTest = FakeFriendService(mockAuthService, mockUserService);

      // Assert
      underTest.watchReceivedFriendRequests().listen(
            expectAsync1(
              (failureOrReceivedFriendRequestes) => expect(
                failureOrReceivedFriendRequestes.isRight(),
                true,
              ),
            ),
          );
    });

    // TODO implement tests
  });

  group('watchSentFriendRequests', () {
    test(
      'GIVEN not authenticated user '
      'THEN throw NotAuthenticatedError ',
      () {
        // Arrange
        setUpMockAuthServiceWithNotAuthenticatedUser();
        final underTest = FakeFriendService(mockAuthService, mockUserService);

        // Act & Assert
        expect(
          () => underTest.watchSentFriendRequests(),
          throwsA(isA<NotAuthenticatedError>()),
        );
      },
    );

    test('emit value on listen', () {
      // Arrange
      setUpMockAuthServiceWithAuthenticatedUser();
      final underTest = FakeFriendService(mockAuthService, mockUserService);

      // Assert
      underTest.watchReceivedFriendRequests().listen(
            expectAsync1(
              (failureOrSentFriendRequestes) => expect(
                failureOrSentFriendRequestes.isRight(),
                true,
              ),
            ),
          );
    });

    // TODO implement tests
  });
}
