import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'stats_event.dart';
part 'stats_state.dart';
part 'stats_bloc.freezed.dart';

// TODO
@lazySingleton
class StatsBloc extends Bloc<StatsEvent, StatsState>
    with AutoResetLazySingleton {
  StatsBloc()
      : super(
          const StatsState.initial(),
        );

  @override
  Stream<StatsState> mapEventToState(
    StatsEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }

  @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<StatsBloc>()) {
      getIt.resetLazySingleton<StatsBloc>();
    }

    return super.close();
  }
}
