import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/domain/play/advanced_settings.dart';
import 'package:dart_counter/domain/play/i_advanced_settings_service.dart';
import 'package:dart_counter/domain/play/offline/i_play_offline_service.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'create_offline_game_cubit.freezed.dart';
part 'create_offline_game_state.dart';

// TODO understand and maybe replace if better option is available
// TODO convert to bloc ??

@injectable
class CreateOfflineGameCubit extends Cubit<CreateOfflineGameState> {
  final IPlayOfflineService _playOfflineService;
  final IAdvancedSettingsService _advancedSettingsService;

  CreateOfflineGameCubit(
    this._playOfflineService,
    this._advancedSettingsService,
  ) : super(
          // Set initial state
          const CreateOfflineGameState.initial(),
        );

  /// Returns instance registered inside getIt.
  factory CreateOfflineGameCubit.getIt() => getIt<CreateOfflineGameCubit>();

  void createGame() {
    final initialSnapshot = _playOfflineService.createGame(
      owner: User.dummy(),
    ); // TODO owner no dummy

    final ownerPlayerId = initialSnapshot.players.iter.first.id;
    _advancedSettingsService.fetch();

    emit(
      CreateOfflineGameState.success(
        initialSnapshot: initialSnapshot,
        initialAdvancedSettings: KtMap.from(
          {ownerPlayerId: AdvancedSettings.initial()},
        ),
      ),
    );
  }
}
