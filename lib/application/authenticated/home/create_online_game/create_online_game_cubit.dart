import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:dart_counter/domain/play/online/online_game_snapshot.dart';
import 'package:dart_counter/domain/play/play_failure.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_online_game_cubit.freezed.dart';
part 'create_online_game_state.dart';

// TODO understand and maybe replace if better option is available
// TODO convert to bloc ??

@injectable
class CreateOnlineGameCubit extends Cubit<CreateOnlineGameState> {
  final IPlayOnlineService _playOnlineService;

  CreateOnlineGameCubit(
    this._playOnlineService,
  ) : super(
          // Set initial state
          const CreateOnlineGameState.initial(),
        );

  /// Returns instance registered inside getIt.
  factory CreateOnlineGameCubit.getIt() => getIt<CreateOnlineGameCubit>();

  Future<void> createGame() async {
    final failureOrGameSnapshot = await _playOnlineService.createGame();

    failureOrGameSnapshot.fold(
      (failure) => emit(CreateOnlineGameState.failure(failure: failure)),
      (initialSnapshot) => emit(
        CreateOnlineGameState.success(initialSnapshot: initialSnapshot),
      ),
    );
  }

  /**
  *  @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<CreateOnlineGameCubit>()) {
      getIt.resetLazySingleton<CreateOnlineGameCubit>();
    }

    return super.close();
  }
  */
}
