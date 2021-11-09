import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/core/data_watcher/data_watcher_bloc.dart';
import 'package:dart_counter/application/core/play/play_bloc.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
import 'package:dart_counter/domain/game_invitation/i_game_invitation_service.dart';
import 'package:dart_counter/domain/play/game_snapshot.dart';
import 'package:dart_counter/domain/play/i_play_online_service.dart';
import 'package:dart_counter/domain/play/play_failure.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'game_invitations_bloc.freezed.dart';
part 'game_invitations_event.dart';
part 'game_invitations_state.dart';

@lazySingleton
class GameInvitationsBloc extends Bloc<GameInvitationsEvent, GameInvitationsState> with AutoResetLazySingleton{
  final IPlayOnlineService _playOnlineFacade;
  final IGameInvitationService _gameInvitationService;

  final DataWatcherBloc _dataWatcherBloc;
  final PlayBloc _playBloc;

  StreamSubscription? _dataWatcherSubscription;
  StreamSubscription? _gameSnapshotsSubscription;

  GameInvitationsBloc(
    this._playOnlineFacade,
    this._gameInvitationService,
    this._dataWatcherBloc,
    this._playBloc,
  ) : super(
          _dataWatcherBloc.state.maybeMap(
            loadSuccess: (loadSuccess) => GameInvitationsState.initial(
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
          GameInvitationsEvent.dataReceived(
            receivedGameInvitations: dataWatcherState.receivedGameInvitations,
            sentGameInvitations: dataWatcherState.sentGameInvitations,
          ),
        );
      }
    });

    _gameSnapshotsSubscription = _playBloc.stream.listen((playState) {
      if (playState is PlayGameInProgress) {
        final gameSnapshot = playState.gameSnapshot;
        add(GameInvitationsEvent.gameReceived(gameSnapshot: gameSnapshot));
      }
    });

    _gameInvitationService.markReceivedInvitationsAsRead();
  }

  @override
  Stream<GameInvitationsState> mapEventToState(
    GameInvitationsEvent event,
  ) async* {
    yield* event.map(
      dataReceived: (event) => _mapDataReceivedToState(event),
      invitationAccepted: (event) => _mapInvitationAcceptedToState(event),
      invitationDeclined: (event) => _mapInvitationDeclinedToState(event),
      gameReceived: (event) => _mapGameReceivedToState(event),
    );
  }

  Stream<GameInvitationsState> _mapDataReceivedToState(
    GameInvitationsDataReceived event,
  ) async* {
    yield state.copyWith(
      receivedGameInvitations: event.receivedGameInvitations,
      sentGameInvitations: event.sentGameInvitations,
    );
  }

  Stream<GameInvitationsState> _mapInvitationAcceptedToState(
    GameInvitationsInvitationAccepted event,
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
        await _gameInvitationService.accept(invitation: event.gameInvitation);
      },
    );
  }

  Stream<GameInvitationsState> _mapInvitationDeclinedToState(
    GameInvitationsInvitationDeclined event,
  ) async* {
    _gameInvitationService.decline(invitation: event.gameInvitation);
  }

  Stream<GameInvitationsState> _mapGameReceivedToState(
    GameInvitationsGameReceived event,
  ) async* {
    yield state.copyWith(gameSnapshot: event.gameSnapshot);
  }

  @override
  Future<void> close() {
    _dataWatcherSubscription?.cancel();
    _gameSnapshotsSubscription?.cancel();

    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<GameInvitationsBloc>()) {
      getIt.resetLazySingleton<GameInvitationsBloc>();
    }
    
    return super.close();
  }
}
