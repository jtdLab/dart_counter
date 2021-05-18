import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation_failure.dart';
import 'package:dart_counter/domain/game_invitation/i_game_invitation_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'game_invitation_button_event.dart';
part 'game_invitation_button_state.dart';
part 'game_invitation_button_bloc.freezed.dart';

@injectable
class GameInvitationButtonBloc
    extends Bloc<GameInvitationButtonEvent, GameInvitationButtonState> {
  final IGameInvitationFacade _gameInvitationFacade;

  GameInvitationButtonBloc(this._gameInvitationFacade)
      : super(const GameInvitationButtonState.noData());

  StreamSubscription<Either<GameInvitationFailure, KtList<GameInvitation>>>?
      _invitationStreamSubscription;

  @override
  Stream<GameInvitationButtonState> mapEventToState(
    GameInvitationButtonEvent event,
  ) async* {
    yield* event.map(
      watchDataStarted: (e) async* {
        _invitationStreamSubscription = _gameInvitationFacade
            .watchReceivedInvitations()
            .listen(
              (failureOrInvitations) => add(
                  GameInvitationButtonEvent.dataReceived(failureOrInvitations)),
            );
      },
      dataReceived: (e) async* {
        yield e.failureOrInvitations.fold(
          (f) => const GameInvitationButtonState.noData(),
          (invitations) => GameInvitationButtonState.data(
            newGameInvitations: invitations.size, // TODO only new
          ),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _invitationStreamSubscription?.cancel();
    return super.close();
  }
}
