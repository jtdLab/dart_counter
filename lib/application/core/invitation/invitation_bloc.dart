import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation_failure.dart';
import 'package:dart_counter/domain/game_invitation/i_game_invitation_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'invitation_event.dart';
part 'invitation_state.dart';
part 'invitation_bloc.freezed.dart';

@injectable
class InvitationBloc extends Bloc<InvitationEvent, InvitationState> {
  final IGameInvitationFacade _gameInvitationFacade;

  InvitationBloc(this._gameInvitationFacade)
      : super(const InvitationState.loadInProgress());

  StreamSubscription<Either<GameInvitationFailure, KtList<GameInvitation>>>?
      _gameInvitationsStreamSubscription;

  @override
  Stream<InvitationState> mapEventToState(
    InvitationEvent event,
  ) async* {
    yield* event.map(
      watchStarted: (_) => _mapWatchStartedToEvent(),
      gameInvitationsReceived: (event) =>
          _mapGameInvitationsReceivedToEvent(event),
      failureReceived: (_) => _mapFailureReceivedToEvent(),
    );
  }

  Stream<InvitationState> _mapWatchStartedToEvent() async* {
    _gameInvitationFacade
        .watchReceivedInvitations()
        .listen((failureOrGameInvitations) {
      failureOrGameInvitations.fold(
        (failure) => add(const InvitationEvent.failureReceived()),
        (gameInvitations) => add(
          InvitationEvent.gameInvitationsReceived(
            gameInvitations: gameInvitations,
          ),
        ),
      );
    });
  }

  Stream<InvitationState> _mapGameInvitationsReceivedToEvent(
      GameInvitationsReceived event) async* {
    yield InvitationState.loadSuccess(gameInvitations: event.gameInvitations);
  }

  Stream<InvitationState> _mapFailureReceivedToEvent() async* {
    yield const InvitationState.loadFailure();
  }

  @override
  Future<void> close() {
    _gameInvitationsStreamSubscription?.cancel();
    return super.close();
  }
}
