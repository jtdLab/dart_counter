import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/training/abstract_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/bobs_twenty_seven_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/i_bobs_twenty_seven_service.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/mode.dart'
    as bobs27;
import 'package:dart_counter/domain/training/double/double_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/double/i_double_training_service.dart';
import 'package:dart_counter/domain/training/mode.dart';
import 'package:dart_counter/domain/training/score/i_score_training_service.dart';
import 'package:dart_counter/domain/training/score/score_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/single/i_single_training_service.dart';
import 'package:dart_counter/domain/training/single/single_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/type.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_training_bloc.freezed.dart';
part 'create_training_event.dart';

class CreateTrainingBloc
    extends Bloc<CreateTrainingEvent, AbstractTrainingGameSnapshot> {
  final ISingleTrainingService _singleTrainingService;
  final IDoubleTrainingService _doubleTrainingService;
  final IScoreTrainingService _scoreTrainingService;
  final IBobsTwentySevenService _bobsTwentySevenService;
  final IUserService _userService;

  late StreamSubscription _snapshotsSubscription;

  CreateTrainingBloc(
    this._singleTrainingService,
    this._doubleTrainingService,
    this._scoreTrainingService,
    this._bobsTwentySevenService,
    this._userService,
  ) : super(
          // set initial state
          SingleTrainingGameSnapshot.initial(
            username: _userService
                .getUser()
                .getOrElse(() => throw Error())
                .profile
                .name
                .getOrCrash(),
          ),
        ) {
    // register event handlers
    on<_Created>((event, emit) async => _mapCreatedToState(event, emit));
    on<_PlayerAdded>((event, emit) => _mapPlayerAddedToState(event, emit));
    on<_PlayerRemoved>((event, emit) => _mapPlayerRemovedToState(event, emit));
    on<_PlayerReordered>(
      (event, emit) => _mapPlayerReorderedToState(event, emit),
    );
    on<_PlayerNameUpdated>(
      (event, emit) => _mapPlayerNameUpdatedToState(event, emit),
    );
    on<_TypeChanged>(
      (event, emit) async => _mapTypeChangedToState(event, emit),
    );
    on<_Started>((event, emit) => _mapStartedToState(event, emit));
    on<_Canceled>((event, emit) => _mapCanceledToState(event, emit));
    on<_SnapshotReceived>(
      (event, emit) => _mapSnapshotReceivedToState(event, emit),
    );
  }

  Future<void> _mapCreatedToState(
    _Created event,
    Emitter<AbstractTrainingGameSnapshot> emit,
  ) async {
    final user = _userService.getUser().fold(
          (failure) => null,
          (user) => user,
        );

    if (user != null) {
      _singleTrainingService.createGame(owner: user);

      final gameSnapshots = _singleTrainingService.watchGame();
      _snapshotsSubscription = gameSnapshots.listen((gameSnapshot) {
        add(
          CreateTrainingEvent.snapshotReceived(gameSnapshot: gameSnapshot),
        );
      });

      final gameSnapshot = await gameSnapshots.first;

      emit(gameSnapshot);
    }
  }

  void _mapPlayerAddedToState(
    _PlayerAdded event,
    Emitter<AbstractTrainingGameSnapshot> emit,
  ) {
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

  void _mapPlayerRemovedToState(
    _PlayerRemoved event,
    Emitter<AbstractTrainingGameSnapshot> emit,
  ) {
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

  void _mapPlayerReorderedToState(
    _PlayerReordered event,
    Emitter<AbstractTrainingGameSnapshot> emit,
  ) {
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

  void _mapPlayerNameUpdatedToState(
    _PlayerNameUpdated event,
    Emitter<AbstractTrainingGameSnapshot> emit,
  ) {
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

  Future<void> _mapTypeChangedToState(
    _TypeChanged event,
    Emitter<AbstractTrainingGameSnapshot> emit,
  ) async {
    final user = _userService.getUser().fold(
          (failure) => null,
          (user) => user,
        );

    if (user != null) {
      await _snapshotsSubscription.cancel();

      final currentType = state.type;
      final newType = event.newType;
      final gameSnapshot = state.gameSnapshot;

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

      final players = gameSnapshot.players
          .asList()
          .where((player) => player != gameSnapshot.owner)
          .map((player) => player.name)
          .toList();

      switch (newType) {
        case Type.single:
          _snapshotsSubscription =
              _singleTrainingService.watchGame().listen((gameSnapshot) {
            add(
              CreateTrainingEvent.snapshotReceived(
                gameSnapshot: gameSnapshot,
              ),
            );
          });

          _singleTrainingService.createGame(
            owner: user,
            players: players,
          );
          break;
        case Type.double:
          _snapshotsSubscription =
              _doubleTrainingService.watchGame().listen((gameSnapshot) {
            add(
              CreateTrainingEvent.snapshotReceived(
                gameSnapshot: gameSnapshot,
              ),
            );
          });
          _doubleTrainingService.createGame(
            owner: user,
            players: players,
          );
          break;
        case Type.score:
          _snapshotsSubscription =
              _scoreTrainingService.watchGame().listen((gameSnapshot) {
            add(
              CreateTrainingEvent.snapshotReceived(
                gameSnapshot: gameSnapshot,
              ),
            );
          });
          _scoreTrainingService.createGame(
            owner: user,
            players: players,
          );
          break;
        case Type.bobs27:
          _snapshotsSubscription =
              _bobsTwentySevenService.watchGame().listen((gameSnapshot) {
            add(
              CreateTrainingEvent.snapshotReceived(
                gameSnapshot: gameSnapshot,
              ),
            );
          });
          _bobsTwentySevenService.createGame(
            owner: user,
            players: players,
          );
          break;
      }

      emit(state.copyWith(type: newType));
    }
  }

  void _mapStartedToState(
    _Started event,
    Emitter<AbstractTrainingGameSnapshot> emit,
  ) {
    final type = state.type;

    switch (type) {
      case Type.single:
        _singleTrainingService.start();
        break;
      case Type.double:
        _doubleTrainingService.start();
        break;
      case Type.score:
        _scoreTrainingService.start();
        break;
      case Type.bobs27:
        _bobsTwentySevenService.start();
        break;
    }
  }

  void _mapCanceledToState(
    _Canceled event,
    Emitter<AbstractTrainingGameSnapshot> emit,
  ) {
    final type = state.type;

    switch (type) {
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
  }

  void _mapSnapshotReceivedToState(
    _SnapshotReceived event,
    Emitter<AbstractTrainingGameSnapshot> emit,
  ) {
    final gameSnapshot = event.gameSnapshot;

    // TODO remove
    /**
      *  if (gameSnapshot is score.GameSnapshot) {
        print('score');
      }

      if (gameSnapshot is single.GameSnapshot) {
        print('single');
      }

      if (gameSnapshot is bobs27.GameSnapshot) {
        print('bobs27');
      }

      if (gameSnapshot is double.GameSnapshot) {
        print('double');
      }
      */

    emit(state.copyWith(gameSnapshot: gameSnapshot));
  }

  @override
  Future<void> close() {
    _snapshotsSubscription.cancel();

    return super.close();
  }
}
