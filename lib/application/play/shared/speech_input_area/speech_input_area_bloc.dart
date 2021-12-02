import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/domain/play/abstract_i_play_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../in_game_event.dart';
import '../in_game_state.dart';

part 'speech_input_area_event.dart';
part 'speech_input_area_state.dart';
part 'speech_input_area_bloc.freezed.dart';

// TODO design + implement
@injectable
class SpeechInputAreaBloc
    extends Bloc<SpeechInputAreaEvent, SpeechInputAreaState>
    with AutoResetLazySingleton {
  final Cubit<AbstractGameSnapshot> _playWatcherCubit;
  final Bloc<InGameEvent, InGameState> _inGameBloc;

  SpeechInputAreaBloc(
    // TODO has to be nullable because of getIt maybe find better solutation
    @factoryParam Cubit<AbstractGameSnapshot>? playWatcherCubit,
    @factoryParam Bloc<InGameEvent, InGameState>? inGameBloc,
  )   : _playWatcherCubit = playWatcherCubit!,
        _inGameBloc = inGameBloc!,
        super(const SpeechInputAreaState.initial());
}
