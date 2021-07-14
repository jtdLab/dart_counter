import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/play/i_play_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'stats_event.dart';
part 'stats_state.dart';
part 'stats_bloc.freezed.dart';

@lazySingleton
class StatsBloc extends Bloc<StatsEvent, StatsState>
    with AutoResetLazySingleton {
  final IPlayFacade _playFacade;

  StatsBloc(
    this._playFacade,
  ) : super(
          const StatsState.initial(),
        );

  @override
  Stream<StatsState> mapEventToState(
    StatsEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
