import 'package:dart_counter/application/authenticated/play/shared/in_game/in_game_bloc.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:dart_counter/domain/play/online/online_game_snapshot.dart';
import 'package:dart_counter/core/injection.dart';
import 'package:injectable/injectable.dart';

export 'package:dart_counter/application/authenticated/play/shared/in_game/in_game_event.dart';
export 'package:dart_counter/application/authenticated/play/shared/in_game/in_game_state.dart';

@injectable
class InOnlineGameBloc extends InGameBloc<OnlineGameSnapshot> {
  InOnlineGameBloc(
    IPlayOnlineService playOnlineService,
    OnlineGameSnapshot initialSnapshot,
  ) : super(playOnlineService, initialSnapshot);

  /// Returns instance registered inside getIt.
  factory InOnlineGameBloc.getIt(
    OnlineGameSnapshot initialSnapshot,
  ) =>
      getIt<InOnlineGameBloc>(param1: [initialSnapshot]);

  /// Constructor only for injectable.
  ///
  /// [otherDependencies] must containg in following order:
  ///
  /// 1. Instance of `OnlineGameSnapshot`
  @factoryMethod
  factory InOnlineGameBloc.injectable(
    IPlayOnlineService playOnlineService,
    @factoryParam List<Object> otherDependencies,
  ) =>
      InOnlineGameBloc(
        playOnlineService,
        otherDependencies[0] as OnlineGameSnapshot,
      );
}
