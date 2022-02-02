import 'package:dart_counter/application/main/game_invitations/game_invitations_bloc.dart';
import 'package:dart_counter/domain/game_invitation/i_game_invitation_service.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockPlayOnlineService extends Mock implements IPlayOnlineService {}

class MockGameInvitationService extends Mock implements IGameInvitationService {
}

void main() {
  late MockPlayOnlineService mockPlayOnlineService;
  late MockGameInvitationService mockGameInvitationService;

  setUp(() {
    mockPlayOnlineService = MockPlayOnlineService();
    mockGameInvitationService = MockGameInvitationService();
  });

  // TODO impl
  /**
   * test('initial state is TODO', () {
    // Arrange & Act
    final underTest = GameInvitationsBloc(
      mockPlayOnlineService,
      mockGameInvitationService,
    );

    // Assert
    expect(
      underTest.state,
      null, // TODO
    );
  });
   */

  group('Started', () {
    // TODO implement tests
  });

  group('InvitationAccepted', () {
    // TODO implement tests
  });

  group('InvitationDeclined', () {
    // TODO implement tests
  });
}
