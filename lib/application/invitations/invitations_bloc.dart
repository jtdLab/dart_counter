import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/core/play/play_bloc.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
import 'package:dart_counter/domain/game_invitation/i_game_invitation_facade.dart';
import 'package:dart_counter/domain/play/game_snapshot.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'invitations_bloc.freezed.dart';
part 'invitations_event.dart';
part 'invitations_state.dart';


@injectable
class InvitationsBloc extends Bloc<InvitationsEvent, InvitationsState> {
  final IGameInvitationFacade _gameInvitationFacade;

  final PlayBloc _playBloc;

  StreamSubscription? _receivedGameInvitationsSubscription;
  StreamSubscription? _sentGameInvitationsSubscription;
  StreamSubscription? _gameSubscription;

  InvitationsBloc(
    this._gameInvitationFacade,
    this._playBloc,
  ) : super(
          InvitationsState(
            receivedGameInvitations:
                _gameInvitationFacade.getReceivedGameInvitations()?.fold(
                          (failure) {}, // TODO log here
                          (invitations) => invitations,
                        ) ??
                    (throw Error()),
            sentGameInvitations:
                _gameInvitationFacade.getSentGameInvitations()?.fold(
                          (failure) {}, // TODO log here
                          (invitations) => invitations,
                        ) ??
                    (throw Error()),
          ),
        ) {
    _receivedGameInvitationsSubscription =
        _gameInvitationFacade.watchReceivedInvitations().listen(
      (failureOrInvitations) {
        failureOrInvitations.fold(
          (failure) {}, // TODO log here
          (invitations) => add(
            InvitationsEvent.receivedGameInvitationsReceived(
              gameInvitations: invitations,
            ),
          ),
        );
      },
    );

    _sentGameInvitationsSubscription =
        _gameInvitationFacade.watchSentInvitations().listen(
      (failureOrInvitations) {
        failureOrInvitations.fold(
          (failure) {}, // TODO log here
          (invitations) => add(
            InvitationsEvent.sentGameInvitationsReceived(
              gameInvitations: invitations,
            ),
          ),
        );
      },
    );

    _gameSubscription = _playBloc.stream.listen((playState) {
      playState.map(
        loading:
            (_) {}, // could be done nicer if playfacade doesnt have this state
        success: (success) => add(
          InvitationsEvent.gameReceived(game: success.game),
        ),
      );
    });

    _gameInvitationFacade.markReceivedInvitationsAsRead();
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
    );
  }

  Stream<InvitationsState> _mapReceivedGameInvitationsReceivedToState(
    ReceivedGameInvitationsReceived event,
  ) async* {
    yield state.copyWith(receivedGameInvitations: event.gameInvitations);
  }

  Stream<InvitationsState> _mapSentGameInvitationsReceivedToState(
    SentGameInvitationsReceived event,
  ) async* {
    yield state.copyWith(sentGameInvitations: event.gameInvitations);
  }

  Stream<InvitationsState> _mapGameReceivedToState(
    GameReceived event,
  ) async* {
    yield state.copyWith(game: event.game);
  }

  Stream<InvitationsState> _mapAcceptedToState(
    Accepted event,
  ) async* {
    _playBloc.add(PlayEvent.gameJoined(gameId: event.gameInvitation.gameId));
    await _gameInvitationFacade.accept(invitation: event.gameInvitation);
  }

  Stream<InvitationsState> _mapDeclinedToState(
    Declined event,
  ) async* {
    _gameInvitationFacade.decline(invitation: event.gameInvitation);
  }

  @override
  Future<void> close() {
    _receivedGameInvitationsSubscription?.cancel();
    _sentGameInvitationsSubscription?.cancel();
    _gameSubscription?.cancel();
    return super.close();
  }
}
