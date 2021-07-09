import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation_failure.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
import 'package:dart_counter/domain/game_invitation/i_game_invitation_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:dart_counter/infrastructure/core/firestore_helpers.dart';
import 'package:rxdart/rxdart.dart';

import 'game_invitation_dto.dart';

@Environment(Environment.test)
@Environment(Environment.prod)
@LazySingleton(as: IGameInvitationFacade)
class GameInvitationFacade implements IGameInvitationFacade {
  final FirebaseFirestore _firestore;

  GameInvitationFacade(this._firestore)
      : _receivedInvitationsController = BehaviorSubject(),
        _unreadInvitationsController = BehaviorSubject(),
        _sentInvitationsController = BehaviorSubject() {
    _receivedInvitationsController.addStream(_watchReceivedInvitations());
    _unreadInvitationsController.addStream(_watchUnreadInvitations());
    _sentInvitationsController.addStream(_watchSentInvitations());
  }

  final BehaviorSubject<Either<GameInvitationFailure, KtList<GameInvitation>>>
      _receivedInvitationsController;

  final BehaviorSubject<Either<GameInvitationFailure, int>>
      _unreadInvitationsController;

  final BehaviorSubject<Either<GameInvitationFailure, KtList<GameInvitation>>>
      _sentInvitationsController;

  @override
  Future<Either<GameInvitationFailure, Unit>> accept(
      GameInvitation invitation) {
    // TODO: implement accept
    throw UnimplementedError();
  }

  @override
  Future<Either<GameInvitationFailure, Unit>> decline(
      GameInvitation invitation) {
    // TODO: implement decline
    throw UnimplementedError();
  }

  @override
  Future<Either<GameInvitationFailure, Unit>> send(GameInvitation invitation) {
    // TODO: implement send
    throw UnimplementedError();
  }

  @override
  ValueStream<Either<GameInvitationFailure, KtList<GameInvitation>>>
      watchReceivedInvitations() {
    return _receivedInvitationsController.stream;
  }

  @override
  ValueStream<Either<GameInvitationFailure, KtList<GameInvitation>>>
      watchSentInvitations() {
    return _sentInvitationsController.stream;
  }

  @override
  ValueStream<Either<GameInvitationFailure, int>> watchUnreadInvitations() {
    return _unreadInvitationsController.stream;
  }

  @override
  void markGameInvitationsAsRead() {}

  Stream<Either<GameInvitationFailure, KtList<GameInvitation>>>
      _watchReceivedInvitations() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.gameInvitationsCollection
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<GameInvitationFailure, KtList<GameInvitation>>(
            snapshot.docs
                .map((doc) => GameInvitationDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e) {
      return left(const GameInvitationFailure.unexpected());
    });
  }

  Stream<Either<GameInvitationFailure, int>> _watchUnreadInvitations() {
    return watchReceivedInvitations().map(
      (failureOrInvitations) => failureOrInvitations.fold(
        (failure) => left(const GameInvitationFailure.unexpected()),
        (invitations) =>
            right(invitations.filter((invitation) => !invitation.read).size),
      ),
    );
  }

  Stream<Either<GameInvitationFailure, KtList<GameInvitation>>>
      _watchSentInvitations() async* {
        // TODO sent invitations not received
    final userDoc = await _firestore.userDocument();
    yield* userDoc.gameInvitationsCollection
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<GameInvitationFailure, KtList<GameInvitation>>(
            snapshot.docs
                .map((doc) => GameInvitationDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e) {
      return left(const GameInvitationFailure.unexpected());
    });
  }
}
