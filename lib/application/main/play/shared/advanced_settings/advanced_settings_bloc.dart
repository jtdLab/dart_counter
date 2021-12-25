import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/domain/play/advanced_settings.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'advanced_settings_event.dart';
part 'advanced_settings_state.dart';
part 'advanced_settings_bloc.freezed.dart';

// TODO implement this

// toto remove later
final initialTestSettings =
    AdvancedSettings.dummy().copyWith(smartKeyBoardActivated: true);

class AdvancedSettingsBloc
    extends Bloc<AdvancedSettingsEvent, AdvancedSettingsState> {
  final Cubit<AbstractGameSnapshot> _playWatcherCubit;

  AdvancedSettingsBloc(
    this._playWatcherCubit,
  ) : super(
          // TODO just for tesing should be empty
          AdvancedSettingsState.inGame(
            advancedSettings: [initialTestSettings].toImmutableList(),
            currentTurnAdvancedSettings: initialTestSettings,
          ),
        ) {
    on<_Started>(
      (_, emit) async => _mapStartedToState(emit),
      transformer: restartable(),
    );
  }

  Future<void> _mapStartedToState(
    Emitter<AdvancedSettingsState> emit,
  ) async {
    await _playWatcherCubit.stream.forEach(
      (gameSnapshot) => _onGameSnapshot(gameSnapshot, emit),
    );
  }

  void _onGameSnapshot(
    AbstractGameSnapshot gameSnapshot,
    Emitter<AdvancedSettingsState> emit,
  ) {
    state.map(
      createGame: (createGame) {
        if (gameSnapshot.status == Status.pending) {
          final advancedSettings = createGame.advancedSettings;
          final advancedSettingsIds = advancedSettings.map((e) => e.playerId);
          final playerIds = gameSnapshot.players.map((e) => e.id);

          if (advancedSettingsIds != playerIds) {
            final newAdvancedSettings = KtMutableList<AdvancedSettings>.empty();
            for (int i = 0; i < playerIds.size; i++) {
              final playerId = playerIds[i];
              if (advancedSettingsIds.contains(playerId)) {
                newAdvancedSettings.add(advancedSettings[i]);
              } else {
                newAdvancedSettings.add(
                  AdvancedSettings(
                    playerId: playerId,
                    showAverage: true,
                    checkoutPercentage: true,
                    smartKeyBoardActivated: false,
                  ),
                );
              }
            }
            emit(
              AdvancedSettingsState.createGame(
                advancedSettings: newAdvancedSettings,
              ),
            );
          }
        } else if (gameSnapshot.status == Status.running) {
          final advancedSettings = createGame.advancedSettings;
          emit(
            AdvancedSettingsState.inGame(
              advancedSettings: advancedSettings,
              currentTurnAdvancedSettings: advancedSettings.get(0),
            ),
          );
        }
      },
      inGame: (inGame) {
        final newAdvancedSettings = inGame.advancedSettings.get(
          gameSnapshot.players.indexOf(gameSnapshot.currentTurn()),
        );
        emit(inGame.copyWith(currentTurnAdvancedSettings: newAdvancedSettings));
      },
    );
  }
}
