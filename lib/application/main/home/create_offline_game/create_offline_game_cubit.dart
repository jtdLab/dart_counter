import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/domain/play/offline/i_play_offline_service.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_offline_game_cubit.freezed.dart';
part 'create_offline_game_state.dart';

// TODO understand and maybe replace if better option is available
// TODO convert to bloc ??

@injectable
class CreateOfflineGameCubit extends Cubit<CreateOfflineGameState> {
  final IPlayOfflineService _playOfflineService;

  CreateOfflineGameCubit(
    this._playOfflineService,
  ) : super(
          // Set initial state
          const CreateOfflineGameState.initial(),
        );

  void createGame() {
    final initialSnapshot = _playOfflineService.createGame(
      owner: User.dummy(),
    ); // TODO owner no dummy

    emit(CreateOfflineGameState.success(initialSnapshot: initialSnapshot));
  }

  /// Returns instance registered inside getIt.
  factory CreateOfflineGameCubit.getIt() => getIt<CreateOfflineGameCubit>();
}
