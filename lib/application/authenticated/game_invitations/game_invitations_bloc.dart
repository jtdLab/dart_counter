import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
import 'package:dart_counter/domain/game_invitation/i_game_invitation_service.dart';
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:dart_counter/domain/play/play_failure.dart';
import 'package:dart_counter/core/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'game_invitations_bloc.freezed.dart';
part 'game_invitations_event.dart';
part 'game_invitations_state.dart';

// TODO join game logic into seperated join game bloc like create game bloc in home session

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
          const GameInvitationsState.initial(),
        ) {
    // Register event handlers
    on<_Started>((_, emit) async => _handleStarted(emit));
    on<_InvitationAccepted>(
      (event, emit) async => _handleInvitationAccepted(event, emit),
    );
    on<_InvitationDeclined>((event, _) => _handleInvitationDeclined(event));
  }

  /// Returns instance registered inside getIt.
  factory GameInvitationsBloc.getIt() => getIt<GameInvitationsBloc>();

  /// Handle incoming [_Started] event.
  void _handleStarted(
    Emitter<GameInvitationsState> emit,
  ) {
    // TODO is this the correct location ?
    // TODO does this belong to application or infra atm its infra
    _gameInvitationService.markReceivedInvitationsAsRead();
  }

  /// Handle incoming [_InvitationAccepted] event.
  Future<void> _handleInvitationAccepted(
    _InvitationAccepted event,
    Emitter<GameInvitationsState> emit,
  ) async {
    emit(const GameInvitationsState.loadInProgress());
    await Future.delayed(const Duration(milliseconds: 500));

    final gameInvitation = event.gameInvitation;
    final gameId = gameInvitation.gameId;
    final failureOrUnit = await _playOnlineService.joinGame(gameId: gameId);

    failureOrUnit.fold(
      (failure) => emit(GameInvitationsState.failure(failure: failure)),
      (_) async {
        // TODO await response ???
        await _gameInvitationService.accept(invitation: gameInvitation);
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
