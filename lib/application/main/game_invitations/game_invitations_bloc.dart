import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dart_counter/application/core/application_error.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation_failure.dart';
import 'package:dart_counter/domain/game_invitation/i_game_invitation_service.dart';
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:dart_counter/domain/play/play_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'game_invitations_bloc.freezed.dart';
part 'game_invitations_event.dart';
part 'game_invitations_state.dart';

@injectable
class GameInvitationsBloc
    extends Bloc<GameInvitationsEvent, GameInvitationsState> {
  final IPlayOnlineService _playOnlineService;
  final IGameInvitationService _gameInvitationService;

  GameInvitationsBloc(
    this._playOnlineService,
    this._gameInvitationService,
  ) : super(
          // Set inital state
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
    // Register event handlers
    on<_Started>(
      (_, emit) async => _handleStarted(emit),
      transformer: restartable(),
    );
    on<_InvitationAccepted>(
      (event, emit) async => _handleInvitationAccepted(event, emit),
    );
    on<_InvitationDeclined>(
      (event, _) => _handleInvitationDeclined(event),
    );
  }

  /// Handle incoming [_Started] event.
  Future<void> _handleStarted(
    Emitter<GameInvitationsState> emit,
  ) async {
    // TODO is this the correct location ?
    // TODO does this belong to application or infra atm its infra
    _gameInvitationService.markReceivedInvitationsAsRead();

    // TODO test if this gets canceld on first error occurence
    await Future.wait(
      [
        emit.forEach(
          _gameInvitationService.watchReceivedGameInvitations(),
          onData: (
            Either<GameInvitationFailure, KtList<GameInvitation>>
                failureOrReceivedGameInvitations,
          ) =>
              state.copyWith(
            receivedGameInvitations: failureOrReceivedGameInvitations.getOrElse(
              () => throw ApplicationError
                  .unexpectedMissingData(), // TODO no dev error its a failure so handle it
            ),
          ),
        ),
        emit.forEach(
          _gameInvitationService.watchSentInvitations(),
          onData: (
            Either<GameInvitationFailure, KtList<GameInvitation>>
                failureOrSentGameInvitations,
          ) =>
              state.copyWith(
            sentGameInvitations: failureOrSentGameInvitations.getOrElse(
              () => throw ApplicationError
                  .unexpectedMissingData(), // TODO no dev error its a failure so handle it
            ),
          ),
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

  /// Handle incoming [_InvitationAccepted] event.
  Future<void> _handleInvitationAccepted(
    _InvitationAccepted event,
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

  /// Handle incoming [_InvitationDeclined] event.
  void _handleInvitationDeclined(
    _InvitationDeclined event,
  ) {
    // TODO await result ???
    _gameInvitationService.decline(invitation: event.gameInvitation);
  }

  /**
  *  @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<GameInvitationsBloc>()) {
      getIt.resetLazySingleton<GameInvitationsBloc>();
    }

    return super.close();
  }
  */
}
