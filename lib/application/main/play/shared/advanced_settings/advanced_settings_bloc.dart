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

class AdvancedSettingsBloc
    extends Bloc<AdvancedSettingsEvent, AdvancedSettingsState> {
  final Cubit<AbstractGameSnapshot> _playWatcherCubit;

  AdvancedSettingsBloc(
    this._playWatcherCubit,
  ) : super(
          // TODO load initial advanced settings of user in offline game / dont know in online game ???
          AdvancedSettingsState.createGame(
            advancedSettings: [
              AdvancedSettings(
                playerId: _playWatcherCubit.state.players.first().id,
                showAverage: true,
                showCheckoutPercentage: true,
                smartKeyBoardActivated: false,
              ),
            ].toImmutableList(),
          ),
        ) {
    on<_Started>(
      (_, emit) async => _mapStartedToState(emit),
      transformer: restartable(),
    );
    on<_ShowAverageToggled>(
      (event, emit) => _mapShowAverageToggledToState(event, emit),
    );
    on<_ShowCheckoutToggled>(
      (event, emit) => _mapShowCheckoutToggledToState(event, emit),
    );
    on<_SmartKeyBoardActiveToggled>(
      (event, emit) => _mapSmartKeyBoardActiveToggledToState(event, emit),
    );
  }

  Future<void> _mapStartedToState(
    Emitter<AdvancedSettingsState> emit,
  ) async {
    //_onGameSnapshot(_playWatcherCubit.state, emit); // TODO
    await _playWatcherCubit.stream.forEach(
      (gameSnapshot) => _onGameSnapshot(gameSnapshot, emit),
    );
  }

  void _mapShowAverageToggledToState(
    _ShowAverageToggled event,
    Emitter<AdvancedSettingsState> emit,
  ) {
    final int index = event.index;
    final current = state.advancedSettings.get(index);
    final newAdvancedSettings = state.advancedSettings.toMutableList();
    newAdvancedSettings.set(
      index,
      current.copyWith(showAverage: !current.showAverage),
    );
    emit(state.copyWith(advancedSettings: newAdvancedSettings));
  }

  void _mapShowCheckoutToggledToState(
    _ShowCheckoutToggled event,
    Emitter<AdvancedSettingsState> emit,
  ) {
    final int index = event.index;
    final current = state.advancedSettings.get(index);
    final newAdvancedSettings = state.advancedSettings.toMutableList();
    newAdvancedSettings.set(
      index,
      current.copyWith(showCheckoutPercentage: !current.showCheckoutPercentage),
    );
    emit(state.copyWith(advancedSettings: newAdvancedSettings));
  }

  void _mapSmartKeyBoardActiveToggledToState(
    _SmartKeyBoardActiveToggled event,
    Emitter<AdvancedSettingsState> emit,
  ) {
    final int index = event.index;
    final current = state.advancedSettings.get(index);
    final newAdvancedSettings = state.advancedSettings.toMutableList();
    newAdvancedSettings.set(
      index,
      current.copyWith(smartKeyBoardActivated: !current.smartKeyBoardActivated),
    );
    emit(state.copyWith(advancedSettings: newAdvancedSettings));
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
                    showCheckoutPercentage: true,
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
