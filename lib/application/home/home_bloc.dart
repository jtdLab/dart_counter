import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/core/data_watcher/data_watcher_bloc.dart';
import 'package:dart_counter/application/core/play/play_bloc.dart';
import 'package:dart_counter/domain/play/game_snapshot.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@lazySingleton
class HomeBloc extends Bloc<HomeEvent, HomeState> with AutoResetLazySingleton {
  final DataWatcherBloc _dataWatcherBloc;
  final PlayBloc _playBloc;

  StreamSubscription? _dataWatcherSubscription;

  HomeBloc(
    this._dataWatcherBloc,
    this._playBloc,
  ) : super(
          _dataWatcherBloc.state.maybeMap(
            loadSuccess: (loadSuccess) => HomeState.initial(
              user: loadSuccess.user,
              unreadInvitations: loadSuccess.receivedGameInvitations.iter
                  .where((element) => !element.read)
                  .length,
              unreadFriendRequests: loadSuccess.receivedFriendRequests.iter
                  .where((element) => !element.read)
                  .length,
            ),
            orElse: () => throw Error(), // TODO name better
          ),
        ) {
    _dataWatcherSubscription =
        _dataWatcherBloc.stream.listen((dataWatcherState) {
      if (dataWatcherState is DataWatcherLoadSuccess) {
        add(
          HomeEvent.dataReceived(
            user: dataWatcherState.user,
            unreadInvitations: dataWatcherState.receivedGameInvitations.iter
                .where((element) => !element.read)
                .length,
            unreadFriendRequests: dataWatcherState.receivedFriendRequests.iter
                .where((element) => !element.read)
                .length,
          ),
        );
      }
    });
  }

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    yield* event.map(
      createOnlineGamePressed: (_) => _mapCreateOnlineGamePressedToState(),
      createOfflineGamePressed: (_) => _mapCreateOfflineGamePressedToState(),
      dataReceived: (event) => _mapDataReceivedToState(event),
      gameReceived: (event) => _mapGameReceivedToState(event),
    );
  }

  Stream<HomeState> _mapCreateOnlineGamePressedToState() async* {
    _playBloc.add(
      const PlayEvent.gameCreated(online: true),
    );

    final failureOrGame = (await _playBloc.stream.firstWhere(
      (element) => element is PlayGameInProgress,
    ) as PlayGameInProgress)
        .game;
  }

  Stream<HomeState> _mapCreateOfflineGamePressedToState() async* {
    _playBloc.add(
      const PlayEvent.gameCreated(online: false),
    );
  }

  Stream<HomeState> _mapDataReceivedToState(
    DataReceived event,
  ) async* {
    yield state.copyWith(
      user: event.user,
      unreadInvitations: event.unreadInvitations,
      unreadFriendRequests: event.unreadFriendRequests,
    );
  }

  Stream<HomeState> _mapGameReceivedToState(
    GameReceived event,
  ) async* {
    // TODO playing impl it better with super bloc or not ?
    throw UnimplementedError();
  }

  @override
  Future<void> close() {
    _dataWatcherSubscription?.cancel();
    return super.close();
  }
}
