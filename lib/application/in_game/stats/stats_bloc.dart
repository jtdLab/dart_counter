import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stats_event.dart';
part 'stats_state.dart';
part 'stats_bloc.freezed.dart';

class StatsBloc extends Bloc<StatsEvent, StatsState> {
  StatsBloc() : super(_Initial());

  @override
  Stream<StatsState> mapEventToState(
    StatsEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
