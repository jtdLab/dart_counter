import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/core/errors.dart';
import 'package:dart_counter/application/core/invitations/invitations_bloc.dart'
    as ib;
import 'package:dart_counter/application/core/play/play_bloc.dart';
import 'package:dart_counter/domain/connectivity/i_connectivity_facade.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
import 'package:dart_counter/domain/game_invitation/i_game_invitation_facade.dart';
import 'package:dart_counter/domain/play/game_snapshot.dart';
import 'package:dart_counter/domain/play/i_play_online_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'invitations_event.dart';
part 'invitations_state.dart';
part 'invitations_bloc.freezed.dart';

@injectable
class InvitationsBloc extends Bloc<InvitationsEvent, InvitationsState> {
  final IGameInvitationFacade _gameInvitationFacade; // TODO rly needed
  final IPlayOnlineFacade _playOnlineFacade;
  final PlayBloc _playBloc;
  final ib.InvitationsBloc _invitationsBloc;

  StreamSubscription<KtList<GameInvitation>>?
      _receivedGameInvitationsSubscription;

  StreamSubscription<KtList<GameInvitation>>? _sentGameInvitationsSubscription;

  StreamSubscription<GameSnapshot?>? _gameSubscription;

  InvitationsBloc(
    this._gameInvitationFacade,
    this._playOnlineFacade,
    this._playBloc,
    this._invitationsBloc,
  ) : super(
          InvitationsState(
            receivedGameInvitations: _invitationsBloc.state.map(
              loadInProgress: (_) => throw UnexpectedStateError(), // TODO
              loadSuccess: (success) => success.receivedInvitations,
              loadFailure: (_) => throw UnexpectedStateError(), // TODO
            ),
            sentGameInvitations: _invitationsBloc.state.map(
              loadInProgress: (_) => throw UnexpectedStateError(), // TODO
              loadSuccess: (success) => success.sentInvitations,
              loadFailure: (_) => throw UnexpectedStateError(), // TODO
            ),
          ),
        ) {
    _receivedGameInvitationsSubscription = _invitationsBloc.stream.map((state) {
      return state.map(
        loadInProgress: (_) => throw UnexpectedStateError(), // TODO
        loadSuccess: (success) => success.receivedInvitations,
        loadFailure: (_) => throw UnexpectedStateError(), // TODO
      );
    }).listen((invitations) {
      add(
        InvitationsEvent.receivedGameInvitationsReceived(
          gameInvitations: invitations,
        ),
      );
    });

    _sentGameInvitationsSubscription = _invitationsBloc.stream.map((state) {
      return state.map(
        loadInProgress: (_) => throw UnexpectedStateError(), // TODO
        loadSuccess: (success) => success.sentInvitations,
        loadFailure: (_) => throw UnexpectedStateError(), // TODO
      );
    }).listen((invitations) {
      add(
        InvitationsEvent.sentGameInvitationsReceived(
          gameInvitations: invitations,
        ),
      );
    });

    _gameSubscription = _playBloc.stream.map((state) {
      return state.map(
        loading: (_) => null,
        success: (success) => success.game,
      );
    }).listen((game) {
      if (game != null) {
        add(InvitationsEvent.gameReceived(game: game));
      }
    });
  }

  @override
  Stream<InvitationsState> mapEventToState(
    InvitationsEvent event,
  ) async* {
    yield* event.map(
      receivedGameInvitationsReceived: (event) =>
          _mapReceivedGameInvitationsReceivedToState(event),
      sentGameInvitationsReceived: (event) =>
          _mapSentGameInvitationsReceivedToState(event),
      gameReceived: (event) => _mapGameReceivedToState(event),
      accepted: (event) => _mapAcceptedToState(event),
      declined: (event) => _mapDeclinedToState(event),
      newInvitationsRead: (_) => _mapNewInvitationsReadToState(),
    );
  }

  // TODO rly needed to call facade for other or just use state
  Stream<InvitationsState> _mapReceivedGameInvitationsReceivedToState(
    ReceivedGameInvitationsReceived event,
  ) async* {
    final invitations = event.gameInvitations;

    yield state.copyWith(receivedGameInvitations: invitations);

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
    SentGameInvitationsReceived event,
  ) async* {
    final invitations = event.gameInvitations;

    yield state.copyWith(sentGameInvitations: invitations);
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

  Stream<InvitationsState> _mapGameReceivedToState(
    GameReceived event,
  ) async* {
    yield state.copyWith(game: event.game);
  }

  Stream<InvitationsState> _mapAcceptedToState(
    Accepted event,
  ) async* {
    final gameId = event.gameInvitation.gameId;
    _playBloc.add(PlayEvent.gameJoined(gameId: gameId));
    await _gameInvitationFacade.accept(invitation: event.gameInvitation);
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
