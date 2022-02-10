import 'package:dart_counter/application/main/play/shared/in_game/in_game_bloc.dart';
import 'package:dart_counter/domain/play/offline/i_play_offline_service.dart';
import 'package:injectable/injectable.dart';

export 'package:dart_counter/application/main/play/shared/in_game/in_game_bloc.dart';

@injectable
class InOfflineGameBloc extends InGameBloc {
  InOfflineGameBloc(
    IPlayOfflineService playOfflineService,
  ) : super(playOfflineService);
}
