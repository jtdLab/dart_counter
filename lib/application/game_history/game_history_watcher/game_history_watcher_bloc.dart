import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'game_history_watcher_event.dart';
part 'game_history_watcher_state.dart';
part 'game_history_watcher_bloc.freezed.dart';

@injectable
class GameHistoryWatcherBloc extends Bloc<GameHistoryWatcherEvent, GameHistoryWatcherState> {
  GameHistoryWatcherBloc() : super(_Initial());

  @override
  Stream<GameHistoryWatcherState> mapEventToState(
    GameHistoryWatcherEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
