import 'package:dart_counter/infrastructure/user/user_service.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:firebase_storage_mocks/firebase_storage_mocks.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:social_client/social_client.dart';

class MockSocialClient extends Mock implements SocialClient {}

void main() {
  late FakeFirebaseFirestore firestore;
  late MockFirebaseStorage storage;
  late MockSocialClient mockSocialClient;

  late UserService underTest;

  setUp(() {
    firestore = FakeFirebaseFirestore();
    storage = MockFirebaseStorage();
    mockSocialClient = MockSocialClient();

    underTest = UserService(
      firestore,
      storage,
      mockSocialClient,
    );
  });

  group('#Methods#', () {
    // TODO implement tests
    group('#deleteProfilePhoto#', () {
      setUp(() {
       
      });

      test('', () {
        // Arrange

        // Act

        // Assert
      });
    });

    group('#getUser#', () {});

    group('#updateEmailAddress#', () {});

    group('#updateProfilePhoto#', () {});

    group('#updateUsername#', () {});

    group('#watchUser#', () {});
  });
}
