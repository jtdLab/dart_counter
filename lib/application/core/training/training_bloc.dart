import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/training/type.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/i_bobs_twenty_seven_service.dart';
import 'package:dart_counter/domain/training/double/i_double_training_service.dart';
import 'package:dart_counter/domain/training/score/i_score_training_service.dart';
import 'package:dart_counter/domain/training/single/i_single_training_service.dart';
import 'package:dart_counter/domain/training/training_game_snapshot.dart';
import 'package:dart_counter/domain/user/i_user_facade.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'training_bloc.freezed.dart';
part 'training_event.dart';
part 'training_state.dart';

@lazySingleton
class TrainingBloc extends Bloc<TrainingEvent, TrainingState>
    with AutoResetLazySingleton {
  final ISingleTrainingService _singleTrainingService;
  final IDoubleTrainingService _doubleTrainingService;
  final IScoreTrainingService _scoreTrainingService;
  final IBobsTwentySevenService _bobsTwentySevenService;

  final IUserFacade _userFacade;

  StreamSubscription? _gameSnapshotsSubscription;

  TrainingBloc(
    this._singleTrainingService,
    this._doubleTrainingService,
    this._scoreTrainingService,
    this._bobsTwentySevenService,
    this._userFacade,
  ) : super(const TrainingState.initial()) {
    on<TrainingCreated>((event, emit) async {
      if (state is TrainingInitial) {
        final gameSnapshots = _singleTrainingService.watchGame();
        _gameSnapshotsSubscription = gameSnapshots.listen((gameSnapshot) {
          add(TrainingEvent.gameSnapshotReceived(gameSnapshot: gameSnapshot));
        });

        final user = _userFacade.getUser()?.fold(
              (failure) => null,
              (user) => user,
            );

        if (user != null) {
          _singleTrainingService.createGame(owner: user, users: List.empty());

          final gameSnapshot = await gameSnapshots.first;

          emit(
            TrainingState.gameInProgress(
              type: Type.single,
              gameSnapshot: gameSnapshot,
            ),
          );
        }
      }
    });
    on<TrainingPlayerAdded>((event, emit) {
      final state = this.state;

      if (state is TrainingInProgress) {
        final type = state.type;

        switch (type) {
          case Type.single:
            _singleTrainingService.addPlayer();
            break;
          case Type.double:
            _doubleTrainingService.addPlayer();
            break;
          case Type.score:
            _scoreTrainingService.addPlayer();
            break;
          case Type.bobs27:
            _bobsTwentySevenService.addPlayer();
            break;
        }
      }
    });
    on<TrainingPlayerRemoved>((event, emit) {
      final state = this.state;

      if (state is TrainingInProgress) {
        final type = state.type;
        final index = event.index;

        switch (type) {
          case Type.single:
            _singleTrainingService.removePlayer(index: index);
            break;
          case Type.double:
            _doubleTrainingService.removePlayer(index: index);
            break;
          case Type.score:
            _scoreTrainingService.removePlayer(index: index);
            break;
          case Type.bobs27:
            _bobsTwentySevenService.removePlayer(index: index);
            break;
        }
      }
    });
    on<TrainingPlayerReordered>((event, emit) {
      final state = this.state;

      if (state is TrainingInProgress) {
        final type = state.type;
        final oldIndex = event.oldIndex;
        final newIndex = event.newIndex;

        switch (type) {
          case Type.single:
            _singleTrainingService.reorderPlayer(
              oldIndex: oldIndex,
              newIndex: newIndex,
            );
            break;
          case Type.double:
            _doubleTrainingService.reorderPlayer(
              oldIndex: oldIndex,
              newIndex: newIndex,
            );
            break;
          case Type.score:
            _scoreTrainingService.reorderPlayer(
              oldIndex: oldIndex,
              newIndex: newIndex,
            );
            break;
          case Type.bobs27:
            _bobsTwentySevenService.reorderPlayer(
              oldIndex: oldIndex,
              newIndex: newIndex,
            );
            break;
        }
      }
    });
    on<TrainingPlayerNameUpdated>((event, emit) {
      final state = this.state;

      if (state is TrainingInProgress) {
        final type = state.type;
        final index = event.index;
        final newName = event.newName;

        switch (type) {
          case Type.single:
            _singleTrainingService.updateName(
              index: index,
              newName: newName,
            );
            break;
          case Type.double:
            _doubleTrainingService.updateName(
              index: index,
              newName: newName,
            );
            break;
          case Type.score:
            _scoreTrainingService.updateName(
              index: index,
              newName: newName,
            );
            break;
          case Type.bobs27:
            _bobsTwentySevenService.updateName(
              index: index,
              newName: newName,
            );
            break;
        }
      }
    });
    on<TrainingTypeChanged>((event, emit) {
      final state = this.state;

      if (state is TrainingInProgress) {
        _gameSnapshotsSubscription?.cancel();

        final currentType = state.type;
        final newType = event.newType;

        final user = _userFacade.getUser()?.fold(
              (failure) => null,
              (user) => user,
            );

        switch (currentType) {
          case Type.single:
            _singleTrainingService.cancel();
            break;
          case Type.double:
            _doubleTrainingService.cancel();
            break;
          case Type.score:
            _scoreTrainingService.cancel();
            break;
          case Type.bobs27:
            _bobsTwentySevenService.cancel();
            break;
        }

        if (user != null) {
          switch (newType) {
            case Type.single:
              _gameSnapshotsSubscription =
                  _singleTrainingService.watchGame().listen((gameSnapshot) {
                add(
                  TrainingEvent.gameSnapshotReceived(
                    gameSnapshot: gameSnapshot,
                  ),
                );
              });
              _singleTrainingService.createGame(
                owner: user,
                users: List.empty(),
              ); // TODO real users
              break;
            case Type.double:
              _gameSnapshotsSubscription =
                  _doubleTrainingService.watchGame().listen((gameSnapshot) {
                add(
                  TrainingEvent.gameSnapshotReceived(
                    gameSnapshot: gameSnapshot,
                  ),
                );
              });
              _doubleTrainingService.createGame(
                owner: user,
                users: List.empty(),
              ); // TODO real users
              break;
            case Type.score:
              _gameSnapshotsSubscription =
                  _scoreTrainingService.watchGame().listen((gameSnapshot) {
                add(
                  TrainingEvent.gameSnapshotReceived(
                    gameSnapshot: gameSnapshot,
                  ),
                );
              });
              _scoreTrainingService.createGame(
                owner: user,
                users: List.empty(),
              ); // TODO real users
              break;
            case Type.bobs27:
              _gameSnapshotsSubscription =
                  _bobsTwentySevenService.watchGame().listen((gameSnapshot) {
                add(
                  TrainingEvent.gameSnapshotReceived(
                    gameSnapshot: gameSnapshot,
                  ),
                );
              });
              _bobsTwentySevenService.createGame(
                owner: user,
                users: List.empty(),
              ); // TODO real users
              break;
          }
        }

        state.copyWith(type: newType);
      }
    });
    on<TrainingGameSnapshotReceived>((event, emit) {
      final gameSnapshot = event.gameSnapshot;

      emit(
        state.map(
          initial: (_) => throw Error(),
          gameInProgress: (gameInProgress) =>
              gameInProgress.copyWith(gameSnapshot: gameSnapshot),
        ),
      );
    });
  }

  @override
  Future<void> close() {
    _gameSnapshotsSubscription?.cancel();

    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<TrainingBloc>()) {
      getIt.resetLazySingleton<TrainingBloc>();
    }

    return super.close();
  }
}
