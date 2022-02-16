import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation_failure.dart';
import 'package:dart_counter/domain/game_invitation/i_game_invitation_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

part 'game_invitations_cubit.freezed.dart';
part 'game_invitations_state.dart';

// TODO rename watcher
@injectable
class GameInvitationsCubit extends Cubit<GameInvitationsState> {
  final IGameInvitationService _gameInvitationService;

  late StreamSubscription _subscription;

  GameInvitationsCubit(this._gameInvitationService)
      : super(
          // Set initial state
          const GameInvitationsState.loadInProgress(),
        ) {
    _subscription = CombineLatestStream<
        Either<GameInvitationFailure, KtList<GameInvitation>>,
        GameInvitationsState>(
      [
        _gameInvitationService.watchReceivedGameInvitations(),
        _gameInvitationService.watchSentInvitations(),
      ],
      (list) {
        final receivedGameInvitations = list[0];
        final sentGameInvitations = list[1];

        return receivedGameInvitations.fold(
          (failure) => GameInvitationsState.loadFailure(failure: failure),
          (receivedGameInvitations) => sentGameInvitations.fold(
            (failure) => GameInvitationsState.loadFailure(failure: failure),
            (sentGameInvitations) => GameInvitationsState.loadSuccess(
              receivedGameInvitations: receivedGameInvitations,
              sentGameInvitations: sentGameInvitations,
            ),
          ),
        );
      },
    ).listen(emit);
  }

  /// Returns instance registered inside getIt.
  factory GameInvitationsCubit.getIt() => getIt<GameInvitationsCubit>();

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}
