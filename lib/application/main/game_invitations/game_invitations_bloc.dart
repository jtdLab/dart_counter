import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/core/application_error.dart';
import 'package:dart_counter/application/main/core/game_invitations/game_invitations_cubit.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
import 'package:dart_counter/domain/game_invitation/i_game_invitation_service.dart';
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:dart_counter/domain/play/play_failure.dart';
import 'package:dart_counter/injection.dart';
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
    GameInvitationsCubit gameInvitationsCubit,
  ) : super(
          // Set inital state
          gameInvitationsCubit.state.maybeWhen(
            loadSuccess: (receivedGameInvitations, sentGameInvitations) =>
                GameInvitationsState.initial(
              receivedGameInvitations: receivedGameInvitations,
              sentGameInvitations: sentGameInvitations,
            ),
            orElse: () => throw ApplicationError.unexpectedMissingData(),
          ),
        ) {
    // Register event handlers
    on<_Started>((_, emit) async => _handleStarted(emit));
    on<_InvitationAccepted>(
      (event, emit) async => _handleInvitationAccepted(event, emit),
    );
    on<_InvitationDeclined>((event, _) => _handleInvitationDeclined(event));
  }

  /// Returns instance registered inside getIt.
  factory GameInvitationsBloc.getIt(
    GameInvitationsCubit gameInvitationsCubit,
  ) =>
      getIt<GameInvitationsBloc>(param1: [gameInvitationsCubit]);

  /// Constructor only for injectable.
  ///
  /// [otherDependencies] must containg in following order:
  ///
  /// 1. Instance of [GameInvitationsCubit].
  @factoryMethod
  factory GameInvitationsBloc.injectable(
    IPlayOnlineService playOnlineService,
    IGameInvitationService gameInvitationService,
    @factoryParam List<Object>? otherDependencies,
  ) =>
      GameInvitationsBloc(
        playOnlineService,
        gameInvitationService,
        otherDependencies![0] as GameInvitationsCubit,
      );

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
    final gameId = event.gameInvitation.gameId;

    emit(const GameInvitationsState.loadInProgress());
    await Future.delayed(const Duration(milliseconds: 500));
    final failureOrUnit = await _playOnlineService.joinGame(gameId: gameId);

    failureOrUnit.fold(
      (failure) => emit(GameInvitationsState.failure(failure: failure)),
      (_) async {
        // TODO await response ???
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
