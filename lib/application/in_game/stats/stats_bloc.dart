import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/core/play/play_bloc.dart';
import 'package:dart_counter/domain/play/game_snapshot.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'stats_bloc.freezed.dart';
part 'stats_event.dart';
part 'stats_state.dart';

// TODO is this bloc rly needed or can this just be provided in a simpler way
@lazySingleton
class StatsBloc extends Bloc<StatsEvent, StatsState>
    with AutoResetLazySingleton {
  final PlayBloc _playBloc;

  StatsBloc(
    this._playBloc,
  ) : super(
          _playBloc.state.maybeMap(
            gameInProgress: (gameInProgress) => StatsState.initial(
              gameSnapshot: gameInProgress.gameSnapshot,
            ),
            orElse: () => throw Error(), // TODO name better
          ),
        );

  @override
  Stream<StatsState> mapEventToState(
    StatsEvent event,
  ) async* {}

  @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<StatsBloc>()) {
      getIt.resetLazySingleton<StatsBloc>();
    }

    return super.close();
  }
}
