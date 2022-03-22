import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/main/core/shared/play/play_state.dart';
import 'package:dart_counter/application/main/core/user/user_cubit.dart';
import 'package:dart_counter/domain/play/offline/i_play_offline_service.dart';
import 'package:dart_counter/domain/play/offline/offline_game_snapshot.dart';
import 'package:dart_counter/injection.dart';
import 'package:injectable/injectable.dart';

export 'package:dart_counter/application/main/core/shared/play/play_state.dart';

@injectable
class PlayOfflineCubit extends Cubit<PlayState<OfflineGameSnapshot>> {
  final IPlayOfflineService _playOfflineService;
  final UserCubit _userCubit;

  late StreamSubscription _subscription;

  PlayOfflineCubit(this._playOfflineService, this._userCubit)
      : super(
          // Set initial state
          const PlayState.inactive(),
        );

  /// Returns instance registered inside getIt.
  factory PlayOfflineCubit.getIt(
    UserCubit userCubit,
  ) =>
      getIt<PlayOfflineCubit>(param1: [userCubit]);

  /// Constructor only for injectable.
  ///
  /// [otherDependencies] must containg in following order:
  ///
  /// 1. Instance of `UserCubit`
  @factoryMethod
  factory PlayOfflineCubit.injectable(
    IPlayOfflineService playOfflineService,
    @factoryParam List<Object> otherDependencies,
  ) =>
      PlayOfflineCubit(
        playOfflineService,
        otherDependencies[0] as UserCubit,
      );

  void create() {
    final user = _userCubit.state.user;
    final initialSnapshot = _playOfflineService.createGame(owner: user);
    emit(PlayState.active(gameSnapshot: initialSnapshot));
    _subscription = _playOfflineService
        .watchGame()
        .listen((snapshot) => emit(PlayState.active(gameSnapshot: snapshot)));
  }

  void finish() {
    _subscription.cancel();
    emit(const PlayState.inactive());
  }

  @override
  Future<void> close() {
    _subscription.cancel();

    return super.close();
  }
}
