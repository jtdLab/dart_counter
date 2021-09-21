import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation_failure.dart';
import 'package:dart_counter/domain/game_invitation/i_game_invitation_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'invitations_event.dart';
part 'invitations_state.dart';
part 'invitations_bloc.freezed.dart';

@lazySingleton
class InvitationsBloc extends Bloc<InvitationsEvent, InvitationsState>
    with AutoResetLazySingleton {
  final IGameInvitationFacade _gameInvitationFacade;

  StreamSubscription<Either<GameInvitationFailure, KtList<GameInvitation>>>?
      _receivedInvitationsSubscription;

  StreamSubscription<Either<GameInvitationFailure, KtList<GameInvitation>>>?
      _sentInvitationsSubscription;

  InvitationsBloc(
    this._gameInvitationFacade,
  ) : super(
          const InvitationsState.loadInProgress(),
        ) {
    add(
      const InvitationsEvent.watchStarted(),
    );
  }

  @override
  Stream<InvitationsState> mapEventToState(
    InvitationsEvent event,
  ) async* {
    yield* event.map(
      watchStarted: (_) => _mapWatchStartedToState(),
      receivedInvitationsReceived: (event) =>
          _mapReceivedInvitationsReceivedToState(event),
      sentInvitationsReceived: (event) =>
          _mapSentInvitationsReceivedToState(event),
      failureReceived: (event) => _mapFailureReceivedToState(event),
    );
  }

  Stream<InvitationsState> _mapWatchStartedToState() async* {
    _receivedInvitationsSubscription = _gameInvitationFacade
        .watchReceivedInvitations()
        .listen((failureOrReceivedInvitations) {
      failureOrReceivedInvitations.fold(
        (failure) => add(
          InvitationsEvent.failureReceived(
            failure: failure,
          ),
        ),
        (receivedInvitations) => add(
          InvitationsEvent.receivedInvitationsReceived(
            invitations: receivedInvitations,
          ),
        ),
      );
    });

    _sentInvitationsSubscription = _gameInvitationFacade
        .watchSentInvitations()
        .listen((failureOrSentInvitations) {
      failureOrSentInvitations.fold(
        (failure) => add(
          InvitationsEvent.failureReceived(
            failure: failure,
          ),
        ),
        (sentInvitations) => add(
          InvitationsEvent.sentInvitationsReceived(
            invitations: sentInvitations,
          ),
        ),
      );
    });
  }

  Stream<InvitationsState> _mapReceivedInvitationsReceivedToState(
    ReceivedInvitationsReceived event,
  ) async* {
    final receivedInvitations = event.invitations;

    yield state.map(
      loadInProgress: (loadInProgress) {
        final sentInvitations = loadInProgress.sentInvitations;
        if (sentInvitations != null) {
          return InvitationsState.loadSuccess(
            receivedInvitations: receivedInvitations,
            sentInvitations: sentInvitations,
            unreadInvitations: receivedInvitations.iter
                .where((element) => !element.read)
                .length,
          );
        }

        return loadInProgress.copyWith(
          receivedInvitations: receivedInvitations,
        );
      },
      loadSuccess: (success) => success.copyWith(
        receivedInvitations: receivedInvitations,
      ),
      loadFailure: (loadFailure) => loadFailure, // TODO is that good solution
    );
  }

  Stream<InvitationsState> _mapSentInvitationsReceivedToState(
    SentInvitationsReceived event,
  ) async* {
    final sentInvitations = event.invitations;

    yield state.map(
      loadInProgress: (loadInProgress) {
        final receivedInvitations = loadInProgress.receivedInvitations;
        if (receivedInvitations != null) {
          return InvitationsState.loadSuccess(
            receivedInvitations: receivedInvitations,
            sentInvitations: sentInvitations,
            unreadInvitations: receivedInvitations.iter
                .where((element) => !element.read)
                .length,
          );
        }

        return loadInProgress.copyWith(
          sentInvitations: sentInvitations,
        );
      },
      loadSuccess: (success) => success.copyWith(
        sentInvitations: sentInvitations,
      ),
      loadFailure: (loadFailure) => loadFailure, // TODO is that good solution
    );
  }

  Stream<InvitationsState> _mapFailureReceivedToState(
    FailureReceived event,
  ) async* {
    yield InvitationsState.loadFailure(failure: event.failure);
  }

  @override
  Future<void> close() {
    _receivedInvitationsSubscription?.cancel();
    _sentInvitationsSubscription?.cancel();
    return super.close();
  }
}
