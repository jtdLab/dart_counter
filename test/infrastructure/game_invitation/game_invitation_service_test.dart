import 'package:dart_client/dart_client.dart';
import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
import 'package:dart_counter/infrastructure/game_invitation/game_invitation_service.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:social_client/social_client.dart';

class MockAuthService extends Mock implements IAuthService {}

class MockSocialClient extends Mock implements SocialClient {}

class MockDartClient extends Mock implements DartClient {}

void main() {
  group('#Methods#', () {
    late MockAuthService mockAuthService;
    late FakeFirebaseFirestore firestore;
    late MockSocialClient mockSocialClient;
    late MockDartClient mockDartClient;

    late GameInvitationService underTest;

    setUp(() {
      mockAuthService = MockAuthService();
      firestore = FakeFirebaseFirestore();
      mockSocialClient = MockSocialClient();
      mockDartClient = MockDartClient();

      underTest = GameInvitationService(
        mockAuthService,
        firestore,
        mockSocialClient,
        mockDartClient,
      );
    });

    group('accept', () {
      final acceptedInvitation = GameInvitation.dummy();
      // TODO implement tests
    });

    group('cancel', () {
      final canceledInvitation = GameInvitation.dummy();
      // TODO implement tests
    });

    group('decline', () {
      final declinedInvitation = GameInvitation.dummy();
      // TODO implement tests
    });

    group('getReceivedGameInvitations', () {
      // TODO implement tests
    });

    group('getSentGameInvitations', () {
      // TODO implement tests
    });

    group('markReceivedInvitationsAsRead', () {
      // TODO implement tests
    });

    group('sendGameInvitation', () {
      final gameId = UniqueId.fromUniqueString('gameId');
      final toId = UniqueId.fromUniqueString('toId');

      // TODO implement tests
    });

    group('watchReceivedGameInvitations', () {
      // TODO implement tests
    });

    group('watchSentInvitations', () {
      // TODO implement tests
    });
  });
}
