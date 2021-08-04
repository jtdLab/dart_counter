import 'dart:async';
import 'package:dart_counter/domain/play/game_snapshot.dart';
import 'package:dart_counter/infrastructure/play/game_snapshot_dto.dart';
import 'package:dart_counter/infrastructure/play/throw_dto.dart';
import 'package:dart_game/dart_game.dart' as ex;
import 'package:dart_counter/domain/play/i_play_offline_facade.dart';
import 'package:dart_counter/domain/user/i_user_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:dart_counter/domain/play/type.dart';
import 'package:dart_counter/domain/play/throw.dart';
import 'package:dart_counter/domain/play/play_failure.dart';
import 'package:dart_counter/domain/play/mode.dart';
import 'package:injectable/injectable.dart';

@Environment(Environment.dev)
@LazySingleton(as: IPlayOfflineFacade)
class MockedPlayOfflineFacade implements IPlayOfflineFacade {
  bool fail = false; // toggle to simulate working / not working endpoint

  final StreamController<Either<PlayFailure, OfflineGameSnapshot>>
      _gameStreamController = StreamController.broadcast();

  final IUserFacade _userFacade; // TODO use or remove

  ex.Game? _game;

  MockedPlayOfflineFacade(
    this._userFacade,
  );

  @override
  Future<Either<PlayFailure, Unit>> addDartBot() {
    if (fail) {
      // TODO specify error
      return Future.value(
        left(const PlayFailure.error()),
      );
    } else {
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
  }

  @override
  Future<Either<PlayFailure, Unit>> addPlayer() {
    if (fail) {
      // TODO specify error
      return Future.value(
        left(const PlayFailure.error()),
      );
    } else {
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
  }

  @override
  Future<Either<PlayFailure, Unit>> cancelGame() {
    if (fail) {
      // TODO specify error
      return Future.value(
        left(const PlayFailure.error()),
      );
    } else {
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
  }

  @override
  Future<Either<PlayFailure, Unit>> createGame() {
    if (fail) {
      // TODO specify error
      return Future.value(
        left(const PlayFailure.error()),
      );
    } else {
      if (_game != null) {
        _game = _game = ex.Game();
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
  }

  @override
  Future<Either<PlayFailure, Unit>> performThrow({
    required Throw t,
  }) {
    if (fail) {
      // TODO specify error
      return Future.value(
        left(const PlayFailure.error()),
      );
    } else {
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
  }

  @override
  Future<Either<PlayFailure, Unit>> removeDartBot() {
    if (fail) {
      // TODO specify error
      return Future.value(
        left(const PlayFailure.error()),
      );
    } else {
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
  }

  @override
  Future<Either<PlayFailure, Unit>> removePlayer({
    required int index,
  }) {
    if (fail) {
      // TODO specify error
      return Future.value(
        left(const PlayFailure.error()),
      );
    } else {
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
  }

  @override
  Future<Either<PlayFailure, Unit>> reorderPlayer({
    required int oldIndex,
    required int newIndex,
  }) {
    if (fail) {
      // TODO specify error
      return Future.value(
        left(const PlayFailure.error()),
      );
    } else {
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
  }

  @override
  Future<Either<PlayFailure, Unit>> setDartBotTargetAverage({
    required int targetAverage,
  }) {
    if (fail) {
      // TODO specify error
      return Future.value(
        left(const PlayFailure.error()),
      );
    } else {
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
  }

  @override
  Future<Either<PlayFailure, Unit>> setMode({
    required Mode mode,
  }) {
    if (fail) {
      // TODO specify error
      return Future.value(
        left(const PlayFailure.error()),
      );
    } else {
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
  }

  @override
  Future<Either<PlayFailure, Unit>> setSize({
    required int size,
  }) {
    if (fail) {
      // TODO specify error
      return Future.value(
        left(const PlayFailure.error()),
      );
    } else {
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
  }

  @override
  Future<Either<PlayFailure, Unit>> setStartingPoints({
    required int startingPoints,
  }) {
    if (fail) {
      // TODO specify error
      return Future.value(
        left(const PlayFailure.error()),
      );
    } else {
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
  }

  @override
  Future<Either<PlayFailure, Unit>> setType({
    required Type type,
  }) {
    if (fail) {
      // TODO specify error
      return Future.value(
        left(const PlayFailure.error()),
      );
    } else {
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
  }

  @override
  Future<Either<PlayFailure, Unit>> startGame() {
    if (fail) {
      // TODO specify error
      return Future.value(
        left(const PlayFailure.error()),
      );
    } else {
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
  }

  @override
  Future<Either<PlayFailure, Unit>> undoThrow() {
    if (fail) {
      // TODO specify error
      return Future.value(
        left(const PlayFailure.error()),
      );
    } else {
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
  }

  @override
  Future<Either<PlayFailure, Unit>> updateName({
    required int index,
    required String newName,
  }) {
    if (fail) {
      // TODO specify error
      return Future.value(
        left(const PlayFailure.error()),
      );
    } else {
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
  }

  @override
  Stream<Either<PlayFailure, OfflineGameSnapshot>> watchGame() {
    return _gameStreamController.stream;
  }
}
