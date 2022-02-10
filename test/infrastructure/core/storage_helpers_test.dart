import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/domain_error.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/infrastructure/core/storage_helpers.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_storage_mocks/firebase_storage_mocks.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthService extends Mock implements IAuthService {}

void main() {
  late MockAuthService authService;
  late MockFirebaseStorage storage;

  const userId = 'userId';

  setUpAll(() async {
    authService = MockAuthService();
    storage = MockFirebaseStorage();

    await GetIt.I.reset();
    GetIt.I.registerLazySingleton<IAuthService>(() => authService);
    GetIt.I.registerLazySingleton<FirebaseStorage>(() => storage);
  });

  group('profilePhotoReference', () {
    test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.', () {
      // Arrange
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
