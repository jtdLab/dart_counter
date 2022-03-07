import 'dart:typed_data';

import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/domain_error.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dart_counter/infrastructure/user/fake_user_service.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthService extends Mock implements IAuthService {}

void main() {
  late MockAuthService mockAuthService;

  late FakeUserService underTest;

  setUpAll(() {
    // Mocktail related setup
    registerFallbackValue(EmailAddress.empty());
    registerFallbackValue(Username.empty());
  });

  setUp(() {
    mockAuthService = MockAuthService();
    FakeUserService.hasNetworkConnection = true;

    underTest = FakeUserService(mockAuthService);
  });

  group('#Methods#', () {
    group('#deleteProfilePhoto#', () {
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
            underTest.deleteProfilePhoto(),
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
          FakeUserService.hasNetworkConnection = false;

          // Act
          final failurOrUnit = await underTest.deleteProfilePhoto();

          // Assert
          expect(failurOrUnit, left(const UserFailure.noNetworkAccess()));
        },
      );

      test(
        'GIVEN authenticated user and has network access '
        'THEN return unit, set users photoUrl to null and emit updated user.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // network access
          FakeUserService.hasNetworkConnection = true;

          // Act
          final failurOrUnit = await underTest.deleteProfilePhoto();

          // Assert
          expect(failurOrUnit, right(unit));
          final user = await underTest.getUser();
          expect(user.toOption().toNullable()!.profile.photoUrl, null);
          underTest.watchUser().listen(
                expectAsync1(
                  (failurOrUser) => expect(
                    failurOrUser.toOption().toNullable()!.profile.photoUrl,
                    null,
                  ),
                ),
              );
        },
      );
    });

    group('#getUser#', () {
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
            () async => underTest.getUser(),
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
          FakeUserService.hasNetworkConnection = false;

          // Act
          final failurOrUser = await underTest.getUser();

          // Assert
          expect(failurOrUser, left(const UserFailure.noNetworkAccess()));
        },
      );

      test(
        'GIVEN authenticated user and has network access '
        'THEN return the user.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // network access
          FakeUserService.hasNetworkConnection = true;

          // Act
          final failurOrUser = await underTest.getUser();

          // Assert
          expect(failurOrUser.isRight(), true);
        },
      );
    });

    group('#updateEmailAddress#', () {
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
            underTest.updateEmailAddress(
              newEmailAddress: EmailAddress('a@b.com'),
            ),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user but has no network access '
        'WHEN valid email '
        'THEN return no network access failure.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // no network access
          FakeUserService.hasNetworkConnection = false;

          // Act
          final validEmail = EmailAddress('a@b.com');
          final failurOrUnit = await underTest.updateEmailAddress(
            newEmailAddress: validEmail,
          );

          // Assert
          expect(failurOrUnit, left(const UserFailure.noNetworkAccess()));
        },
      );

      test(
        'GIVEN authenticated user and has network access '
        'WHEN invalid email '
        'THEN return invalid email failure.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // no network access
          FakeUserService.hasNetworkConnection = true;

          // Act
          final invalidEmail = EmailAddress.empty();
          final failurOrUnit = await underTest.updateEmailAddress(
            newEmailAddress: invalidEmail,
          );

          // Assert
          expect(failurOrUnit, left(const UserFailure.invalidEmail()));
        },
      );

      test(
        'GIVEN authenticated user and has network access '
        'WHEN valid email '
        'THEN return unit, set users email to the new email and emit updated user.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // network access
          FakeUserService.hasNetworkConnection = true;

          // Act
          final validEmail = EmailAddress('a@b.com');
          final failurOrUnit = await underTest.updateEmailAddress(
            newEmailAddress: validEmail,
          );

          // Assert
          expect(failurOrUnit.isRight(), true);
          final user = await underTest.getUser();
          expect(user.toOption().toNullable()!.email, validEmail);
          underTest.watchUser().listen(
                expectAsync1(
                  (failurOrUser) => expect(
                    user.toOption().toNullable()!.email,
                    validEmail,
                  ),
                ),
              );
        },
      );
    });

    group('#updateProfilePhoto#', () {
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
            underTest.updateProfilePhoto(newPhotoData: Uint8List.fromList([])),
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
          FakeUserService.hasNetworkConnection = false;

          // Act
          final failurOrUnit = await underTest.updateProfilePhoto(
            newPhotoData: Uint8List.fromList([]),
          );

          // Assert
          expect(failurOrUnit, left(const UserFailure.noNetworkAccess()));
        },
      );

      test(
        'GIVEN authenticated user and has network access '
        'THEN return unit, set users photoUrl to the url of the new photo and emit updated user.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // network access
          FakeUserService.hasNetworkConnection = true;

          // Act
          final failurOrUnit = await underTest.updateProfilePhoto(
            newPhotoData: Uint8List.fromList([]),
          );

          // Assert
          expect(failurOrUnit.isRight(), true);
          final user = await underTest.getUser();
          expect(
            user.toOption().toNullable()!.profile.photoUrl,
            isInstanceOf<String>(),
          );
          underTest.watchUser().listen(
                expectAsync1(
                  (failurOrUser) => expect(
                    user.toOption().toNullable()!.profile.photoUrl,
                    isInstanceOf<String>(),
                  ),
                ),
              );
        },
      );
    });

    group('#updateUsername#', () {
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
            underTest.updateUsername(newUsername: Username('dummyUsername')),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user but has no network access '
        'WHEN valid username '
        'THEN return no network access failure.',
        () async {
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // no network access
          FakeUserService.hasNetworkConnection = false;

          // Act
          final validUsername = Username('dummyUsername');
          final failurOrUnit = await underTest.updateUsername(
            newUsername: validUsername,
          );

          // Assert
          expect(failurOrUnit, left(const UserFailure.noNetworkAccess()));
        },
      );

      test(
        'GIVEN authenticated user and has network access '
        'WHEN invalid username '
        'THEN return invalid username failure.',
        () async {
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // no network access
          FakeUserService.hasNetworkConnection = true;

          // Act
          final invalidUsername = Username.empty();
          final failurOrUnit = await underTest.updateUsername(
            newUsername: invalidUsername,
          );

          // Assert
          expect(failurOrUnit, left(const UserFailure.invalidUsername()));
        },
      );

      test(
        'GIVEN authenticated user and has network access '
        'WHEN valid username '
        'THEN return unit, set users username to the new username and emit updated user.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // network access
          FakeUserService.hasNetworkConnection = true;

          // Act
          final validUsername = Username('dummyUsername');
          final failurOrUnit = await underTest.updateUsername(
            newUsername: validUsername,
          );

          // Assert
          expect(failurOrUnit.isRight(), true);
          final user = await underTest.getUser();
          expect(user.toOption().toNullable()!.profile.name, validUsername);
          underTest.watchUser().listen(
                expectAsync1(
                  (failurOrUser) => expect(
                    user.toOption().toNullable()!.profile.name,
                    validUsername,
                  ),
                ),
              );
        },
      );
    });

    group('#watchUser#', () {
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
            () => underTest.watchUser(),
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
          FakeUserService.hasNetworkConnection = false;

          // Act & Assert
          expect(
            underTest.watchUser(),
            emitsInOrder([left(const UserFailure.noNetworkAccess())]),
          );
        },
      );

      test(
        'GIVEN authenticated user and has network access '
        'THEN emit value on listen.',
        () {
          // Arrange
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // network access
          FakeUserService.hasNetworkConnection = true;

          // Act & Assert
          underTest.watchUser().listen(
                expectAsync1(
                  (failurOrUser) => expect(failurOrUser.isRight(), true),
                ),
              );
        },
      );
    });
  });
}
