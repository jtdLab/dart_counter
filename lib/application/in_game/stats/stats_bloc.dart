import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/play/game.dart';
import 'package:dart_counter/domain/play/i_play_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'stats_event.dart';
part 'stats_state.dart';
part 'stats_bloc.freezed.dart';

@injectable
class StatsBloc extends Bloc<StatsEvent, StatsState> {
  final IPlayFacade _playFacade;

  StatsBloc(this._playFacade)
      : super(
          StatsState(
            game: _playFacade
                .watchGame()
                .valueWrapper! // TODO
                .value,
          ),
        );

  @override
  Stream<StatsState> mapEventToState(
    StatsEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
