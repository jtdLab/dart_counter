import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/core/data_watcher/data_watcher_bloc.dart';
import 'package:dart_counter/application/core/play/play_bloc.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
import 'package:dart_counter/domain/game_invitation/i_game_invitation_facade.dart';
import 'package:dart_counter/domain/play/game_snapshot.dart';
import 'package:dart_counter/domain/play/i_play_online_facade.dart';
import 'package:dart_counter/domain/play/play_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'invitations_bloc.freezed.dart';
part 'invitations_event.dart';
part 'invitations_state.dart';

@injectable
class InvitationsBloc extends Bloc<InvitationsEvent, InvitationsState> {
  final IPlayOnlineFacade _playOnlineFacade;
  final IGameInvitationFacade _gameInvitationFacade;

  final DataWatcherBloc _dataWatcherBloc;
  final PlayBloc _playBloc;

  StreamSubscription? _dataWatcherSubscription;
  StreamSubscription? _gameSnapshotsSubscription;

  InvitationsBloc(
    this._playOnlineFacade,
    this._gameInvitationFacade,
    this._dataWatcherBloc,
    this._playBloc,
  ) : super(
          _dataWatcherBloc.state.maybeMap(
            loadSuccess: (loadSuccess) => InvitationsState.initial(
              receivedGameInvitations: loadSuccess.receivedGameInvitations,
              sentGameInvitations: loadSuccess.sentGameInvitations,
              loading: false,
            ),
            orElse: () => throw Error(), // TODO name better
          ),
        ) {
    _dataWatcherSubscription =
        _dataWatcherBloc.stream.listen((dataWatcherState) {
      if (dataWatcherState is DataWatcherLoadSuccess) {
        add(
          InvitationsEvent.dataReceived(
            receivedGameInvitations: dataWatcherState.receivedGameInvitations,
            sentGameInvitations: dataWatcherState.sentGameInvitations,
          ),
        );
      }
    });

    _gameSnapshotsSubscription = _playBloc.stream.listen((playState) {
      if (playState is PlayGameInProgress) {
        final gameSnapshot = playState.gameSnapshot;
        add(InvitationsEvent.gameReceived(gameSnapshot: gameSnapshot));
      }
    });

    _gameInvitationFacade.markReceivedInvitationsAsRead();
  }

  @override
  Stream<InvitationsState> mapEventToState(
    InvitationsEvent event,
  ) async* {
    yield* event.map(
      dataReceived: (event) => _mapDataReceivedToState(event),
      invitationAccepted: (event) => _mapInvitationAcceptedToState(event),
      invitationDeclined: (event) => _mapInvitationDeclinedToState(event),
      gameReceived: (event) => _mapGameReceivedToState(event),
    );
  }

  Stream<InvitationsState> _mapDataReceivedToState(
    InvitationsDataReceived event,
  ) async* {
    yield state.copyWith(
      receivedGameInvitations: event.receivedGameInvitations,
      sentGameInvitations: event.sentGameInvitations,
    );
  }

  Stream<InvitationsState> _mapInvitationAcceptedToState(
    InvitationsInvitationAccepted event,
  ) async* {
    final gameId = event.gameInvitation.gameId;

    yield state.copyWith(loading: true);
    await Future.delayed(const Duration(milliseconds: 500));
    final failureOrUnit = await _playOnlineFacade.joinGame(gameId: gameId);
    yield* failureOrUnit.fold(
      (failure) async* {
        yield state.copyWith(loading: false, failure: failure);
      },
      (_) async* {
        _playBloc.add(const PlayEvent.gameJoined());
        await _gameInvitationFacade.accept(invitation: event.gameInvitation);
      },
    );
  }

  Stream<InvitationsState> _mapInvitationDeclinedToState(
    InvitationsInvitationDeclined event,
  ) async* {
    _gameInvitationFacade.decline(invitation: event.gameInvitation);
  }

  Stream<InvitationsState> _mapGameReceivedToState(
    InvitationsGameReceived event,
  ) async* {
    yield state.copyWith(gameSnapshot: event.gameSnapshot);
  }

  @override
  Future<void> close() {
    _dataWatcherSubscription?.cancel();
    _gameSnapshotsSubscription?.cancel();
    return super.close();
  }
}
