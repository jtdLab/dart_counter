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

  InvitationsBloc(this._gameInvitationFacade)
      : super(
          const InvitationsState.loading(),
        );

  StreamSubscription<Either<GameInvitationFailure, KtList<GameInvitation>>>?
      _receivedInvitationsStreamSubscription;

  StreamSubscription<Either<GameInvitationFailure, KtList<GameInvitation>>>?
      _sentInvitationsStreamSubscription;

  StreamSubscription<Either<GameInvitationFailure, int>>?
      _unreadInvitationsStreamSubscription;

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
      unreadInvitationsReceived: (event) =>
          _mapUnreadInvitationsReceivedToState(event),
      failureReceived: (event) => _mapFailureReceivedToState(event),
    );
  }

  Stream<InvitationsState> _mapWatchStartedToState() async* {
    _receivedInvitationsStreamSubscription = _gameInvitationFacade
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

    _sentInvitationsStreamSubscription = _gameInvitationFacade
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

    _unreadInvitationsStreamSubscription = _gameInvitationFacade
        .watchUnreadInvitations()
        .listen((failureOrUnreadInvitations) {
      failureOrUnreadInvitations.fold(
        (failure) => add(
          InvitationsEvent.failureReceived(
            failure: failure,
          ),
        ),
        (unreadInvitations) => add(
          InvitationsEvent.unreadInvitationsReceived(
            unreadInvitations: unreadInvitations,
          ),
        ),
      );
    });
  }

  Stream<InvitationsState> _mapReceivedInvitationsReceivedToState(
    ReceivedInvitationsReceived event,
  ) async* {
    yield state.map(
      loading: (loading) {
        final allReceived = loading.sentInvitations != null &&
            loading.unreadInvitations != null;
        if (allReceived) {
          return InvitationsState.success(
            receivedInvitations: event.invitations,
            sentInvitations: loading.sentInvitations!,
            unreadInvitations: loading.unreadInvitations!,
          );
        } else {
          return loading.copyWith(
            receivedInvitations: event.invitations,
          );
        }
      },
      success: (success) => success.copyWith(
        receivedInvitations: event.invitations,
      ),
    );
  }

  Stream<InvitationsState> _mapSentInvitationsReceivedToState(
    SentInvitationsReceived event,
  ) async* {
    yield state.map(
      loading: (loading) {
        final allReceived = loading.receivedInvitations != null &&
            loading.unreadInvitations != null;
        if (allReceived) {
          return InvitationsState.success(
            receivedInvitations: loading.receivedInvitations!,
            sentInvitations: event.invitations,
            unreadInvitations: loading.unreadInvitations!,
          );
        } else {
          return loading.copyWith(
            sentInvitations: event.invitations,
          );
        }
      },
      success: (success) => success.copyWith(
        sentInvitations: event.invitations,
      ),
    );
  }

  Stream<InvitationsState> _mapUnreadInvitationsReceivedToState(
    UnreadInvitationsReceived event,
  ) async* {
    yield state.map(
      loading: (loading) {
        final allReceived = loading.receivedInvitations != null &&
            loading.sentInvitations != null;
        if (allReceived) {
          return InvitationsState.success(
            receivedInvitations: loading.receivedInvitations!,
            sentInvitations: loading.sentInvitations!,
            unreadInvitations: event.unreadInvitations,
          );
        } else {
          return loading.copyWith(
            unreadInvitations: event.unreadInvitations,
          );
        }
      },
      success: (success) => success.copyWith(
        unreadInvitations: event.unreadInvitations,
      ),
    );
  }

  Stream<InvitationsState> _mapFailureReceivedToState(
    FailureReceived event,
  ) async* {
    // TODO implement
    // switch over failure types
  }

  @override
  Future<void> close() {
    _receivedInvitationsStreamSubscription?.cancel();
    _sentInvitationsStreamSubscription?.cancel();
    _unreadInvitationsStreamSubscription?.cancel();
    return super.close();
  }
}
