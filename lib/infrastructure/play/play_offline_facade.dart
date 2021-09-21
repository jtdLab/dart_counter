import 'dart:async';

import 'package:dart_counter/domain/play/game_snapshot.dart';
import 'package:dart_counter/domain/play/i_play_offline_facade.dart';
import 'package:dart_counter/domain/play/mode.dart';
import 'package:dart_counter/domain/play/play_failure.dart';
import 'package:dart_counter/domain/play/throw.dart';
import 'package:dart_counter/domain/play/type.dart';
import 'package:dart_game/dart_game.dart' as ex;
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import 'game_snapshot_dto.dart';
import 'throw_dto.dart';

@Environment(Environment.dev)
@Environment(Environment.test)
@Environment(Environment.prod)
@LazySingleton(as: IPlayOfflineFacade)
class PlayOfflineFacade implements IPlayOfflineFacade {
  final BehaviorSubject<Either<PlayFailure, OfflineGameSnapshot>>
      _gameController;

  ex.Game? _game;
  DateTime? _createdAt; // TODO needed

  // TODO maybe use behaivor subj with ex.Game? and map this to watchGameStream

  PlayOfflineFacade() : _gameController = BehaviorSubject();

  @override
  Either<PlayFailure, Unit> addDartBot() {
    return _tryPerform(
      action: () => _game!.addDartBot(),
    );
  }

  @override
  Either<PlayFailure, Unit> addPlayer() {
    return _tryPerform(
      action: () => _game!.addPlayer(),
    );
  }

  @override
  Either<PlayFailure, Unit> cancelGame() {
    return _tryPerform(
      action: () => _game!.cancel(),
    );
  }

  @override
  Either<PlayFailure, Unit> createGame() {
    return _tryPerform(
      action: () => _game = _game = ex.Game(),
    );
  }

  @override
  Either<PlayFailure, Unit> performThrow({
    required Throw t,
  }) {
    return _tryPerform(
      action: () => _game!.performThrow(
        t: ThrowDto.fromDomain(t).toExternal(),
      ),
    );
  }

  @override
  Either<PlayFailure, Unit> removeDartBot() {
    return _tryPerform(
      action: () => _game!.removeDartBot(),
    );
  }

  @override
  Either<PlayFailure, Unit> removePlayer({
    required int index,
  }) {
    return _tryPerform(
      action: () => _game!.removePlayer(index: index),
    );
  }

  @override
  Either<PlayFailure, Unit> reorderPlayer({
    required int oldIndex,
    required int newIndex,
  }) {
    return _tryPerform(
      action: () => _game!.reorderPlayer(
        oldIndex: oldIndex,
        newIndex: newIndex,
      ),
    );
  }

  @override
  Either<PlayFailure, Unit> setDartBotTargetAverage({
    required int targetAverage,
  }) {
    return _tryPerform(
      action: () => _game!.dartBotTargetAverage = targetAverage,
    );
  }

  @override
  Either<PlayFailure, Unit> setMode({
    required Mode mode,
  }) {
    return _tryPerform(
      action: () =>
          _game!.mode = mode == Mode.firstTo ? ex.Mode.firstTo : ex.Mode.bestOf,
    );
  }

  @override
  Either<PlayFailure, Unit> setSize({
    required int size,
  }) {
    return _tryPerform(
      action: () => _game!.size = size,
    );
  }

  @override
  Either<PlayFailure, Unit> setStartingPoints({
    required int startingPoints,
  }) {
    return _tryPerform(
      action: () => _game!.startingPoints = startingPoints,
    );
  }

  @override
  Either<PlayFailure, Unit> setType({
    required Type type,
  }) {
    return _tryPerform(
      action: () =>
          _game!.type = type == Type.legs ? ex.Type.legs : ex.Type.sets,
    );
  }

  @override
  Either<PlayFailure, Unit> startGame() {
    return _tryPerform(
      action: () => _game!.start(),
    );
  }

  @override
  Either<PlayFailure, Unit> undoThrow() {
    return _tryPerform(
      action: () => _game!.undoThrow(),
    );
  }

  @override
  Either<PlayFailure, Unit> updateName({
    required int index,
    required String newName,
  }) {
    return _tryPerform(
      action: () => _game!.players[index].name = newName,
    );
  }

  @override
  Stream<Either<PlayFailure, OfflineGameSnapshot>> watchGame() {
    return _gameController.stream;
  }

  // TODO involve return type bool of action instead of void
  /// Trys to Perform [action].
  Either<PlayFailure, Unit> _tryPerform({
    required void Function() action,
  }) {
    if (_game != null) {
      action();
      _gameController.add(
        right(
          OfflineGameSnapshotDto.fromExternal(_game!).toDomain(),
        ),
      );
      return right(unit);
    }

    return left(const PlayFailure.error()); // TODO name better
  }
}
