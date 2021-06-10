import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/play/game.dart';
import 'package:dart_counter/domain/play/i_play_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_game_event.dart';
part 'create_game_state.dart';
part 'create_game_bloc.freezed.dart';

@injectable
class CreateGameBloc extends Bloc<CreateGameEvent, CreateGameState> {
  final IPlayFacade _playFacade;

  CreateGameBloc(this._playFacade)
      : super(const CreateGameState(loading: true, isOnline: false));

  StreamSubscription<Game>? _gameStreamSubscription;

  @override
  Stream<CreateGameState> mapEventToState(
    CreateGameEvent event,
  ) async* {
    yield* event.map(
      gameCreated: (e) async* {
        yield state.copyWith(isOnline: e.online);
        _gameStreamSubscription = Stream<Game>.periodic(
          const Duration(seconds: 5),
          (number) => Game.dummy(),
        ).listen(
          (game) => add(
            CreateGameEvent.gameReceived(game: game),
          ),
        );
      },
      gameReceived: (e) async* {
        yield state.copyWith(loading: false, game: e.game);
      },
    );
  }

  @override
  Future<void> close() async {
    await _gameStreamSubscription?.cancel();
    return super.close();
  }
}
