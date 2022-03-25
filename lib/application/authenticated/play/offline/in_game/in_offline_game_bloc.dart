import 'package:dart_counter/application/authenticated/play/shared/in_game/in_game_bloc.dart';
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/domain/play/offline/i_play_offline_service.dart';
import 'package:dart_counter/core/injection.dart';
import 'package:injectable/injectable.dart';

export 'package:dart_counter/application/authenticated/play/shared/in_game/in_game_bloc.dart';

@injectable
class InOfflineGameBloc extends InGameBloc<OfflineGameSnapshot> {
  InOfflineGameBloc(
    IPlayOfflineService playOfflineService,
    OfflineGameSnapshot initialSnapshot,
  ) : super(playOfflineService, initialSnapshot);

  /// Returns instance registered inside getIt.
  factory InOfflineGameBloc.getIt(
    OfflineGameSnapshot initialSnapshot,
  ) =>
      getIt<InOfflineGameBloc>(param1: [initialSnapshot]);

  /// Constructor only for injectable.
  ///
  /// [otherDependencies] must containg in following order:
  ///
  /// 1. Instance of `OfflineGameSnapshot`
  @factoryMethod
  factory InOfflineGameBloc.injectable(
    IPlayOfflineService playOfflineService,
    @factoryParam List<Object> otherDependencies,
  ) =>
      InOfflineGameBloc(
        playOfflineService,
        otherDependencies[0] as OfflineGameSnapshot,
      );
}
