import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/core/errors.dart';
import 'package:dart_counter/application/core/invitations/invitations_bloc.dart'
    as ib;
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
import 'package:dart_counter/domain/game_invitation/i_game_invitation_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'invitations_event.dart';
part 'invitations_state.dart';
part 'invitations_bloc.freezed.dart';

@injectable
class InvitationsBloc extends Bloc<InvitationsEvent, InvitationsState> {
  final IGameInvitationFacade _gameInvitationFacade; // TODO rly needed

  final ib.InvitationsBloc _invitationsBloc;

  InvitationsBloc(
    this._gameInvitationFacade,
    this._invitationsBloc,
  ) : super(
          InvitationsState(
            receivedGameInvitations: _invitationsBloc.state.map(
              loading: (_) => throw UnexpectedStateError(),
              success: (success) => success.receivedInvitations,
            ),
            sentGameInvitations: _invitationsBloc.state.map(
              loading: (_) => throw UnexpectedStateError(),
              success: (success) => success.sentInvitations,
            ),
          ),
        ) {
    _receivedGameInvitationsSubscription = _invitationsBloc.stream.map((state) {
      return state.map(
        loading: (_) => throw UnexpectedStateError(),
        success: (success) => success.receivedInvitations,
      );
    }).listen((invitations) {
      add(InvitationsEvent.receivedGameInvitationsReceived(
          gameInvitations: invitations));
    });

    _sentGameInvitationsSubscription = _invitationsBloc.stream.map((state) {
      return state.map(
        loading: (_) => throw UnexpectedStateError(),
        success: (success) => success.sentInvitations,
      );
    }).listen((invitations) {
      add(InvitationsEvent.sentGameInvitationsReceived(
          gameInvitations: invitations));
    });
  }

  StreamSubscription<KtList<GameInvitation>>?
      _receivedGameInvitationsSubscription;

  StreamSubscription<KtList<GameInvitation>>? _sentGameInvitationsSubscription;

  @override
  Stream<InvitationsState> mapEventToState(
    InvitationsEvent event,
  ) async* {
    yield* event.map(
      receivedGameInvitationsReceived: (event) =>
          _mapReceivedGameInvitationsReceivedToState(event),
      sentGameInvitationsReceived: (event) =>
          _mapSentGameInvitationsReceivedToState(event),
      accepted: (event) => _mapAcceptedToState(event),
      declined: (event) => _mapDeclinedToState(event),
      newInvitationsRead: (_) => _mapNewInvitationsReadToState(),
    );
  }

  // TODO rly needed to call facade for other or just use state
  Stream<InvitationsState> _mapReceivedGameInvitationsReceivedToState(
      ReceivedGameInvitationsReceived event) async* {
    // TODO implement
    throw UnimplementedError();
    /**
    *  final wrapper = _gameInvitationFacade.watchSentInvitations().valueWrapper;
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
    */
  }

  // TODO rly needed to call facade for other or just use state
  Stream<InvitationsState> _mapSentGameInvitationsReceivedToState(
      SentGameInvitationsReceived event) async* {
    // TODO implement
    throw UnimplementedError();
    /**
    *  final wrapper =
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
    */
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
    _receivedGameInvitationsSubscription?.cancel();
    _sentGameInvitationsSubscription?.cancel();
    return super.close();
  }
}
