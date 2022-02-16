import 'package:dart_counter/application/main/play/shared/in_game/in_game_bloc.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:injectable/injectable.dart';

export 'package:dart_counter/application/main/play/shared/in_game/in_game_event.dart';
export 'package:dart_counter/application/main/play/shared/in_game/in_game_state.dart';

@injectable
class InOnlineGameBloc extends InGameBloc {
  InOnlineGameBloc(
    IPlayOnlineService playOnlineService,
  ) : super(playOnlineService);

  /// Returns instance registered inside getIt.
  factory InOnlineGameBloc.getIt() => getIt<InOnlineGameBloc>();
}
