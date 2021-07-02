import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/user/i_user_facade.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'game_history_event.dart';
part 'game_history_state.dart';
part 'game_history_bloc.freezed.dart';

@injectable
class GameHistoryBloc extends Bloc<GameHistoryEvent, GameHistoryState> {
  final IUserFacade _userFacade;

  GameHistoryBloc(this._userFacade)
      : super(
          GameHistoryState(
            user: _userFacade
                .watchCurrentUser()
                .valueWrapper! // TODO
                .value
                .fold(
                  (failure) => throw Error(), // TODO
                  (user) => user,
                ),
          ),
        );

  StreamSubscription<Either<UserFailure, User>>? _userStreamSubscription;

  @override
  Stream<GameHistoryState> mapEventToState(
    GameHistoryEvent event,
  ) async* {
    event.map(
      watchStarted: (_) => _mapWatchStartedToState(),
      userReceived: (event) => _mapWatchUserReceivedToState(event),
    );
  }

  Stream<GameHistoryState> _mapWatchStartedToState() async* {
    _userStreamSubscription =
        _userFacade.watchCurrentUser().listen((failureOrUser) {
      failureOrUser.fold(
        (failure) => throw Error(), // TODO
        (user) => add(
          GameHistoryEvent.userReceived(
            user: user,
          ),
        ),
      );
    });
  }

  Stream<GameHistoryState> _mapWatchUserReceivedToState(
      UserReceived event) async* {
    yield GameHistoryState(user: event.user);
  }

  @override
  Future<void> close() {
    _userStreamSubscription?.cancel();
    return super.close();
  }
}
