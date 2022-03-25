import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/authenticated/core/user/user_cubit.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/domain/play/advanced_settings.dart';
import 'package:dart_counter/domain/play/i_advanced_settings_service.dart';
import 'package:dart_counter/domain/play/offline/i_play_offline_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:dartz/dartz.dart';
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
  final UserCubit _userCubit;

  CreateOfflineGameCubit(
    this._playOfflineService,
    this._advancedSettingsService,
    this._userCubit,
  ) : super(
          // Set initial state
          const CreateOfflineGameState.initial(),
        );

  /// Returns instance registered inside getIt.
  factory CreateOfflineGameCubit.getIt(
    UserCubit userCubit,
  ) =>
      getIt<CreateOfflineGameCubit>(param1: [userCubit]);

  /// Constructor only for injectable.
  ///
  /// [otherDependencies] must containg in following order:
  ///
  /// 1. Instance of `UserCubit`
  @factoryMethod
  factory CreateOfflineGameCubit.injectable(
    IPlayOfflineService playOfflineService,
    IAdvancedSettingsService advancedSettingsService,
    @factoryParam List<Object> otherDependencies,
  ) =>
      CreateOfflineGameCubit(
        playOfflineService,
        advancedSettingsService,
        otherDependencies[0] as UserCubit,
      );

  Future<void> createGame() async {
    final owner = _userCubit.state.user;
    // create the offline game
    final initialSnapshot = _playOfflineService.createGame(
      owner: owner,
    );

    final ownerPlayerId = initialSnapshot.players.iter.first.id;

    // try to fetch the advanced settings of the app user
    final failureOrOwnerAdvancedSettings =
        await _advancedSettingsService.fetch();

    // the advanced settings of the app user
    final ownerAdvancedSettings = failureOrOwnerAdvancedSettings.fold(
      // which will be default advanced settings when fetch failed
      (failure) => AdvancedSettings.initial(),
      // or the fetched advanced settings when fetch succeeded
      id,
    );

    emit(
      CreateOfflineGameState.success(
        initialSnapshot: initialSnapshot,
        initialAdvancedSettings:
            KtMap.from({ownerPlayerId: ownerAdvancedSettings}),
      ),
    );
  }
}
