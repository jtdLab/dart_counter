import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

abstract class IGameInvitationFacade {
  Future<Either<GameInvitationFailure, Unit>> accept(GameInvitation invitation);
  Future<Either<GameInvitationFailure, Unit>> decline(GameInvitation invitation);
  Future<Either<GameInvitationFailure, Unit>> send(GameInvitation invitation);
  ValueStream<Either<GameInvitationFailure, KtList<GameInvitation>>> watchReceivedInvitations();
  ValueStream<Either<GameInvitationFailure, KtList<GameInvitation>>> watchSentInvitations();
  ValueStream<Either<GameInvitationFailure, int>> watchUnreadInvitations();
  void markGameInvitationsAsRead();
}