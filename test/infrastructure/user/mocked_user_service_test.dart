import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/infrastructure/user/mocked_user_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthService extends Mock implements IAuthService {}

void main() {
  setUpAll(() {
    // mocktail related setup
    registerFallbackValue(EmailAddress.empty());
    registerFallbackValue(Username.empty());
  });

  late MockAuthService mockAuthService;

  setUp(() {
    mockAuthService = MockAuthService();
  });

  void setUpAuthFacadeWithAuthenticatedUser() {
    when(
      () => mockAuthService.isAuthenticated(),
    ).thenAnswer((_) => true);
    when(
      () => mockAuthService.watchIsAuthenticated(),
    ).thenAnswer((_) => const Stream.empty());
  }

  void setUpAuthFacadeWithNotAuthenticatedUser() {
    when(
      () => mockAuthService.isAuthenticated(),
    ).thenAnswer((_) => false);
    when(
      () => mockAuthService.watchIsAuthenticated(),
    ).thenAnswer((_) => const Stream.empty());
  }

  test(
    'init',
    () {
      // Arrange
      final underTest = MockedUserService(mockAuthService);

      // Act

      // Assert
    },
  );

  group('deleteProfilePhoto', () {
    // TODO implement tests
  });

  group('getUser', () {
    // TODO implement tests
  });

  group('updateEmailAddress', () {
    // TODO implement tests
  });

  group('updateProfilePhoto', () {
    // TODO implement tests
  });

  group('updateUsername', () {
    // TODO implement tests
  });

  group('watchUser', () {
    // TODO implement tests
  });
}
