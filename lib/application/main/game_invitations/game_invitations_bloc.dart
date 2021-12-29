import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dart_counter/application/application_error.dart';
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

  GameInvitationsBloc(
    this._playOnlineService,
    this._gameInvitationService,
  ) : super(
          GameInvitationsState.initial(
            receivedGameInvitations:
                _gameInvitationService.getReceivedGameInvitations().getOrElse(
                      () => throw ApplicationError.unexpectedMissingData(),
                    ),
            sentGameInvitations:
                _gameInvitationService.getSentGameInvitations().getOrElse(
                      () => throw ApplicationError.unexpectedMissingData(),
                    ),
            loading: false,
          ),
        ) {
    on<Started>(
      (_, emit) async => _mapStartedToState(emit),
      transformer: restartable(),
    );
    on<InvitationAccepted>(
      (event, emit) async => _mapInvitationAcceptedToState(event, emit),
    );
    on<InvitationDeclined>(
      (event, _) => _mapInvitationDeclinedToState(event),
    );
  }

  Future<void> _mapStartedToState(
    Emitter<GameInvitationsState> emit,
  ) async {
    // TODO is this the correct location ?
    // TODO does this belong to application or infra atm its infra
    _gameInvitationService.markReceivedInvitationsAsRead();

    final dataStream = CombineLatestStream(
      [
        _gameInvitationService.watchReceivedGameInvitations(),
        _gameInvitationService.watchSentInvitations(),
      ],
      (events) => events,
    );

    // TODO test if this gets canceld on first error occurence
    await Future.wait(
      [
        emit.forEach(
          dataStream,
          onData: (List data) {
            final failureOrReceivedGameInvitations = data[0]!
                as Either<GameInvitationFailure, KtList<GameInvitation>>;
            final failureOrSentGameInvitations = data[1]!
                as Either<GameInvitationFailure, KtList<GameInvitation>>;

            return state.copyWith(
              receivedGameInvitations:
                  failureOrReceivedGameInvitations.getOrElse(
                      () => throw ApplicationError.unexpectedMissingData()),
              sentGameInvitations: failureOrSentGameInvitations.getOrElse(
                  () => throw ApplicationError.unexpectedMissingData()),
            );
          },
        ),
        emit.forEach(
          _playOnlineService.watchGame(),
          onData: (OnlineGameSnapshot gameSnapshot) =>
              state.copyWith(gameSnapshot: gameSnapshot),
        ),
      ],
      eagerError: true,
    );
  }

  Future<void> _mapInvitationAcceptedToState(
    InvitationAccepted event,
    Emitter<GameInvitationsState> emit,
  ) async {
    final gameId = event.gameInvitation.gameId;

    emit(state.copyWith(loading: true));
    await Future.delayed(const Duration(milliseconds: 500));
    final failureOrUnit = await _playOnlineService.joinGame(gameId: gameId);

    failureOrUnit.fold(
      (failure) => emit(state.copyWith(loading: false, failure: failure)),
      (_) async {
        // TODO await response ???
        await _playOnlineService.joinGame(gameId: gameId);
        await _gameInvitationService.accept(invitation: event.gameInvitation);
      },
    );
  }

  void _mapInvitationDeclinedToState(
    InvitationDeclined event,
  ) {
    // TODO await result ???
    _gameInvitationService.decline(invitation: event.gameInvitation);
  }

  @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<GameInvitationsBloc>()) {
      getIt.resetLazySingleton<GameInvitationsBloc>();
    }

    return super.close();
  }
}
