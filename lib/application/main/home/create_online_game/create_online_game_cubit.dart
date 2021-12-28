import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:dart_counter/domain/play/play_failure.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_online_game_state.dart';
part 'create_online_game_cubit.freezed.dart';

// TODO understand and maybe replace if better option is available

@lazySingleton
class CreateOnlineGameCubit extends Cubit<CreateOnlineGameState> {
  final IPlayOnlineService _playOnlineService;

  CreateOnlineGameCubit(
    this._playOnlineService,
  ) : super(const CreateOnlineGameState.initial());

  Future<void> createGame() async {
    final failureOrGameSnapshot = await _playOnlineService.createGame();

    failureOrGameSnapshot.fold(
      (failure) => emit(CreateOnlineGameState.failure(failure: failure)),
      (gameSnapshot) => emit(const CreateOnlineGameState.success()),
    );
  }

  @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<CreateOnlineGameCubit>()) {
      getIt.resetLazySingleton<CreateOnlineGameCubit>();
    }

    return super.close();
  }
}
