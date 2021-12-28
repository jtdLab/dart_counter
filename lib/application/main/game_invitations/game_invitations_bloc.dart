import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation_failure.dart';
import 'package:dart_counter/domain/game_invitation/i_game_invitation_service.dart';
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:dart_counter/domain/play/play_failure.dart';
import 'package:dart_counter/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

part 'game_invitations_bloc.freezed.dart';
part 'game_invitations_event.dart';
part 'game_invitations_state.dart';

// TODO transform to bloc v.8.0.0

@lazySingleton
class GameInvitationsBloc
    extends Bloc<GameInvitationsEvent, GameInvitationsState>
    with AutoResetLazySingleton {
  final IPlayOnlineService _playOnlineService;
  final IGameInvitationService _gameInvitationService;

  StreamSubscription? _dataSubscription;
  StreamSubscription? _gameSnapshotsSubscription;

  GameInvitationsBloc(
    this._playOnlineService,
    this._gameInvitationService,
  ) : super(
          GameInvitationsState.initial(
            receivedGameInvitations: _gameInvitationService
                .getReceivedGameInvitations()
                .toOption()
                .toNullable()!,
            sentGameInvitations: _gameInvitationService
                .getSentGameInvitations()
                .toOption()
                .toNullable()!,
            loading: false,
          ),
        ) {
    final dataStream = CombineLatestStream(
      [
        _gameInvitationService.watchReceivedGameInvitations(),
        _gameInvitationService.watchSentInvitations(),
      ],
      (events) => events,
    );

    _dataSubscription = dataStream.listen((data) async {
      final failureOrReceivedGameInvitations =
          data[0]! as Either<GameInvitationFailure, KtList<GameInvitation>>;
      final failureOrSentGameInvitations =
          data[1]! as Either<GameInvitationFailure, KtList<GameInvitation>>;

      if (failureOrReceivedGameInvitations.isLeft()) {
        // yield load failure state
      } else if (failureOrSentGameInvitations.isLeft()) {
        // yield load failure state
      } else {
        // TODO load photos

        add(
          GameInvitationsEvent.dataReceived(
            receivedGameInvitations:
                failureOrReceivedGameInvitations.toOption().toNullable()!,
            sentGameInvitations:
                failureOrSentGameInvitations.toOption().toNullable()!,
          ),
        );
      }
    });

    // TODO
    /**
   *   _gameSnapshotsSubscription = _playBloc.stream.listen((playState) {
      if (playState is PlayGameInProgress) {
        final gameSnapshot = playState.gameSnapshot;
        add(GameInvitationsEvent.gameReceived(gameSnapshot: gameSnapshot));
      }
    });

   */
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
    final failureOrUnit = await _playOnlineService.joinGame(gameId: gameId);
    yield* failureOrUnit.fold(
      (failure) async* {
        yield state.copyWith(loading: false, failure: failure);
      },
      (_) async* {
       // _playBloc.add(const PlayEvent.gameJoined()); // TODO
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
    _dataSubscription?.cancel();
    _gameSnapshotsSubscription?.cancel();

    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<GameInvitationsBloc>()) {
      getIt.resetLazySingleton<GameInvitationsBloc>();
    }

    return super.close();
  }
}
