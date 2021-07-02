import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation_failure.dart';
import 'package:dart_counter/domain/game_invitation/i_game_invitation_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'invitations_event.dart';
part 'invitations_state.dart';
part 'invitations_bloc.freezed.dart';

@injectable
class InvitationsBloc extends Bloc<InvitationsEvent, InvitationsState> {
  final IGameInvitationFacade _gameInvitationFacade;

  InvitationsBloc(this._gameInvitationFacade)
      : super(
          InvitationsState(
            receivedGameInvitations: _gameInvitationFacade
                .watchReceivedInvitations()
                .valueWrapper! // TODO
                .value
                .fold(
                  (failure) => throw Error(), // TODO
                  (receivedInvitations) => receivedInvitations,
                ),
            sentGameInvitations: _gameInvitationFacade
                .watchSentInvitations()
                .valueWrapper! // TODO
                .value
                .fold(
                  (failure) => throw Error(), // TODO
                  (sentInvitations) => sentInvitations,
                ),
          ),
        );

  StreamSubscription<Either<GameInvitationFailure, KtList<GameInvitation>>>?
      _receivedGameInvitationsStreamSubscription;

  StreamSubscription<Either<GameInvitationFailure, KtList<GameInvitation>>>?
      _sentGameInvitationsStreamSubscription;

  @override
  Stream<InvitationsState> mapEventToState(
    InvitationsEvent event,
  ) async* {
    yield* event.map(
      watchStarted: (_) => _mapWatchStartedToState(),
      receivedGameInvitationsReceived: (event) =>
          _mapReceivedGameInvitationsReceivedToState(event),
      sentGameInvitationsReceived: (event) =>
          _mapSentGameInvitationsReceivedToState(event),
      failureReceived: (_) => _mapFailureReceivedToState(),
      accepted: (event) => _mapAcceptedToState(event),
      declined: (event) => _mapDeclinedToState(event),
      newInvitationsRead: (_) => _mapNewInvitationsReadToState(),
    );
  }

  Stream<InvitationsState> _mapWatchStartedToState() async* {
    _receivedGameInvitationsStreamSubscription = _gameInvitationFacade
        .watchReceivedInvitations()
        .listen((failureOrGameInvitations) {
      failureOrGameInvitations.fold(
        (failure) => add(const InvitationsEvent.failureReceived()),
        (gameInvitations) => add(
          InvitationsEvent.receivedGameInvitationsReceived(
            gameInvitations: gameInvitations,
          ),
        ),
      );
    });
    _sentGameInvitationsStreamSubscription = _gameInvitationFacade
        .watchSentInvitations()
        .listen((failureOrGameInvitations) {
      failureOrGameInvitations.fold(
        (failure) => add(const InvitationsEvent.failureReceived()),
        (gameInvitations) => add(
          InvitationsEvent.sentGameInvitationsReceived(
            gameInvitations: gameInvitations,
          ),
        ),
      );
    });
  }

  // TODO rly needed to call facade for other or just use state
  Stream<InvitationsState> _mapReceivedGameInvitationsReceivedToState(
      ReceivedGameInvitationsReceived event) async* {
    final wrapper = _gameInvitationFacade.watchSentInvitations().valueWrapper;
    if (wrapper != null) {
      final failureOrSentGameInvitations = wrapper.value;
      yield failureOrSentGameInvitations.fold(
        (failure) => throw Error(), // TODO
        (sentGameInvitations) {
          final receivedGameInvitations = event.gameInvitations;
          return InvitationsState(
            receivedGameInvitations: receivedGameInvitations,
            sentGameInvitations: sentGameInvitations,
          );
        },
      );
    }
  }

  // TODO rly needed to call facade for other or just use state
  Stream<InvitationsState> _mapSentGameInvitationsReceivedToState(
      SentGameInvitationsReceived event) async* {
    final wrapper =
        _gameInvitationFacade.watchReceivedInvitations().valueWrapper;
    if (wrapper != null) {
      final failureOrReceivedGameInvitations = wrapper.value;
      yield failureOrReceivedGameInvitations.fold(
        (failure) => throw Error(), // TODO
        (receivedGameInvitations) {
          final sentGameInvitations = event.gameInvitations;
          return InvitationsState(
            receivedGameInvitations: receivedGameInvitations,
            sentGameInvitations: sentGameInvitations,
          );
        },
      );
    }
  }

  Stream<InvitationsState> _mapFailureReceivedToState() async* {
    throw Error(); // TODO
  }

  Stream<InvitationsState> _mapAcceptedToState(Accepted event) async* {
    // TODO implement
    throw UnimplementedError();
  }

  Stream<InvitationsState> _mapDeclinedToState(Declined event) async* {
    // TODO implement
    throw UnimplementedError();
  }

  Stream<InvitationsState> _mapNewInvitationsReadToState() async* {
    /*
    final mutableInvitations =
        (state as LoadSuccess).gameInvitations.toMutableList();
    final List<GameInvitation> invitations = [];

    mutableInvitations.forEach((invitation) {
      invitations.add(invitation.copyWith(read: true));
    });

    yield InvitationState.loadSuccess(
      gameInvitations: KtList.from(invitations),
    );
    */
  }

  @override
  Future<void> close() {
    _receivedGameInvitationsStreamSubscription?.cancel();
    _sentGameInvitationsStreamSubscription?.cancel();
    return super.close();
  }
}
