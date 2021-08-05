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

import 'game_snapshot_dto.dart';
import 'throw_dto.dart';

@Environment(Environment.test)
@Environment(Environment.prod)
@LazySingleton(as: IPlayOfflineFacade)
class PlayOfflineFacade implements IPlayOfflineFacade {
  ex.Game? _game;

  final StreamController<Either<PlayFailure, OfflineGameSnapshot>>
      _gameStreamController = StreamController.broadcast();

  DateTime? _createdAt; // TODO needed

  @override
  Future<Either<PlayFailure, Unit>> addDartBot() {
    if (_game != null) {
      _game!.addDartBot();
      _gameStreamController.add(
        right(
          OfflineGameSnapshotDto.fromExternal(_game!).toDomain(),
        ),
      );
      return Future.value(right(unit));
    } else {
      // TODO specify error
      return Future.value(
        left(const PlayFailure.error()),
      );
    }
  }

  @override
  Future<Either<PlayFailure, Unit>> addPlayer() {
    if (_game != null) {
      _game!.addPlayer();
      _gameStreamController.add(
        right(
          OfflineGameSnapshotDto.fromExternal(_game!).toDomain(),
        ),
      );
      return Future.value(right(unit));
    } else {
      // TODO specify error
      return Future.value(
        left(const PlayFailure.error()),
      );
    }
  }

  @override
  Future<Either<PlayFailure, Unit>> cancelGame() {
    if (_game != null) {
      _game!.cancel();
      _gameStreamController.add(
        right(
          OfflineGameSnapshotDto.fromExternal(_game!).toDomain(),
        ),
      );
      return Future.value(right(unit));
    } else {
      // TODO specify error
      return Future.value(
        left(const PlayFailure.error()),
      );
    }
  }

  @override
  Future<Either<PlayFailure, Unit>> createGame() {
    _game = _game = ex.Game();
    _gameStreamController.add(
      right(
        OfflineGameSnapshotDto.fromExternal(_game!).toDomain(),
      ),
    );
    return Future.value(right(unit));
  }

  @override
  Future<Either<PlayFailure, Unit>> performThrow({
    required Throw t,
  }) {
    if (_game != null) {
      _game!.performThrow(ThrowDto.fromDomain(t).toExternal());
      _gameStreamController.add(
        right(
          OfflineGameSnapshotDto.fromExternal(_game!).toDomain(),
        ),
      );
      return Future.value(right(unit));
    } else {
      // TODO specify error
      return Future.value(
        left(const PlayFailure.error()),
      );
    }
  }

  @override
  Future<Either<PlayFailure, Unit>> removeDartBot() {
    if (_game != null) {
      _game!.removeDartBot();
      _gameStreamController.add(
        right(
          OfflineGameSnapshotDto.fromExternal(_game!).toDomain(),
        ),
      );
      return Future.value(right(unit));
    } else {
      // TODO specify error
      return Future.value(
        left(const PlayFailure.error()),
      );
    }
  }

  @override
  Future<Either<PlayFailure, Unit>> removePlayer({
    required int index,
  }) {
    if (_game != null) {
      _game!.removePlayer(index);
      _gameStreamController.add(
        right(
          OfflineGameSnapshotDto.fromExternal(_game!).toDomain(),
        ),
      );
      return Future.value(right(unit));
    } else {
      // TODO specify error
      return Future.value(
        left(const PlayFailure.error()),
      );
    }
  }

  @override
  Future<Either<PlayFailure, Unit>> reorderPlayer({
    required int oldIndex,
    required int newIndex,
  }) {
    if (_game != null) {
      _game!.reorderPlayer(oldIndex, newIndex);
      _gameStreamController.add(
        right(
          OfflineGameSnapshotDto.fromExternal(_game!).toDomain(),
        ),
      );
      return Future.value(right(unit));
    } else {
      // TODO specify error
      return Future.value(
        left(const PlayFailure.error()),
      );
    }
  }

  @override
  Future<Either<PlayFailure, Unit>> setDartBotTargetAverage({
    required int targetAverage,
  }) {
    if (_game != null) {
      _game!.setDartBotTargetAverage(targetAverage);
      _gameStreamController.add(
        right(
          OfflineGameSnapshotDto.fromExternal(_game!).toDomain(),
        ),
      );
      return Future.value(right(unit));
    } else {
      // TODO specify error
      return Future.value(
        left(const PlayFailure.error()),
      );
    }
  }

  @override
  Future<Either<PlayFailure, Unit>> setMode({
    required Mode mode,
  }) {
    if (_game != null) {
      _game!.setMode(mode == Mode.firstTo
          ? ex.Mode.firstTo
          : ex.Mode.bestOf); // TODO this should be done in enum Mode
      _gameStreamController.add(
        right(
          OfflineGameSnapshotDto.fromExternal(_game!).toDomain(),
        ),
      );
      return Future.value(right(unit));
    } else {
      // TODO specify error
      return Future.value(
        left(const PlayFailure.error()),
      );
    }
  }

  @override
  Future<Either<PlayFailure, Unit>> setSize({
    required int size,
  }) {
    if (_game != null) {
      _game!.setSize(size);
      _gameStreamController.add(
        right(
          OfflineGameSnapshotDto.fromExternal(_game!).toDomain(),
        ),
      );
      return Future.value(right(unit));
    } else {
      // TODO specify error
      return Future.value(
        left(const PlayFailure.error()),
      );
    }
  }

  @override
  Future<Either<PlayFailure, Unit>> setStartingPoints({
    required int startingPoints,
  }) {
    if (_game != null) {
      _game!.setStartingPoints(startingPoints);
      _gameStreamController.add(
        right(
          OfflineGameSnapshotDto.fromExternal(_game!).toDomain(),
        ),
      );
      return Future.value(right(unit));
    } else {
      // TODO specify error
      return Future.value(
        left(const PlayFailure.error()),
      );
    }
  }

  @override
  Future<Either<PlayFailure, Unit>> setType({
    required Type type,
  }) {
    if (_game != null) {
      _game!.setType(type == Type.legs
          ? ex.Type.legs
          : ex.Type.sets); // TODO should be done in enum Type
      _gameStreamController.add(
        right(
          OfflineGameSnapshotDto.fromExternal(_game!).toDomain(),
        ),
      );
      return Future.value(right(unit));
    } else {
      // TODO specify error
      return Future.value(
        left(const PlayFailure.error()),
      );
    }
  }

  @override
  Future<Either<PlayFailure, Unit>> startGame() {
    if (_game != null) {
      _game!.start();
      _gameStreamController.add(
        right(
          OfflineGameSnapshotDto.fromExternal(_game!).toDomain(),
        ),
      );
      return Future.value(right(unit));
    } else {
      // TODO specify error
      return Future.value(
        left(const PlayFailure.error()),
      );
    }
  }

  @override
  Future<Either<PlayFailure, Unit>> undoThrow() {
    if (_game != null) {
      _game!.undoThrow();
      _gameStreamController.add(
        right(
          OfflineGameSnapshotDto.fromExternal(_game!).toDomain(),
        ),
      );
      return Future.value(right(unit));
    } else {
      // TODO specify error
      return Future.value(
        left(const PlayFailure.error()),
      );
    }
  }

  @override
  Future<Either<PlayFailure, Unit>> updateName({
    required int index,
    required String newName,
  }) {
    if (_game != null) {
      _game!.players[index].name = newName;
      return Future.value(right(unit));
    } else {
      // TODO specify error
      return Future.value(
        left(const PlayFailure.error()),
      );
    }
  }

  @override
  Stream<Either<PlayFailure, OfflineGameSnapshot>> watchGame() {
    return _gameStreamController.stream;
  }
}
