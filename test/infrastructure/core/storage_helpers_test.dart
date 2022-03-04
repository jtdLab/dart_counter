import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/domain_error.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/infrastructure/core/storage_helpers.dart';
import 'package:dart_counter/injection.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_storage_mocks/firebase_storage_mocks.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthService extends Mock implements IAuthService {}

void main() {
  late MockAuthService authService;
  late MockFirebaseStorage storage;

  const userId = 'userId';

  setUp(() async {
    authService = MockAuthService();
    storage = MockFirebaseStorage();

    await getIt.reset();
    getIt.registerLazySingleton<IAuthService>(() => authService);
    getIt.registerLazySingleton<FirebaseStorage>(() => storage);
  });

  group('#profilePhotoReference#', () {
    test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.', () {
      // Arrange
      // not authenticated user
      when(() => authService.userId()).thenThrow(NotAuthenticatedError());

      // Act & Assert
      expect(
        () => storage.profilePhotoReference(),
        throwsA(isA<NotAuthenticatedError>()),
      );
    });

    test(
        'GIVEN authenticated user '
        'THEN return reference profilePhotos/{userId}.', () async {
      // Arrange
      // authenticated user
      when(() => authService.userId()).thenReturn(
        UniqueId.fromUniqueString(userId),
      );

      // Act
      final underTest = storage.profilePhotoReference();

      // Assert
      expect(underTest, isA<Reference>());
      expect(underTest.name, 'profilePhotos$userId');
    });
  });
}
