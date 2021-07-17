import 'dart:async';

import 'package:dart_counter/domain/play/game.dart';
import 'package:dart_counter/domain/friend/friend.dart';
import 'package:dart_counter/domain/play/i_play_facade.dart';
import 'package:dart_counter/infrastructure/play/game_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:dart_counter/domain/play/throw.dart';
import 'package:dart_counter/domain/play/play_failure.dart';
import 'package:injectable/injectable.dart';
import 'package:dart_game/dart_game.dart' as dart;
import 'package:rxdart/rxdart.dart';

@Environment(Environment.dev)
@LazySingleton(as: IPlayFacade)
class MockedPlayFacade implements IPlayFacade {
  bool fail = false; // toggle to simulate working / notworking endpoint

  final BehaviorSubject<Either<PlayFailure, Game>> _gameStreamController =
      BehaviorSubject();

  dart.Game? _game;
  bool? _online;
  DateTime? _createdAt;

  @override
  Future<Either<PlayFailure, Unit>> addDartBot() {
    if (fail || _online == null) {
      return Future.value(left(const PlayFailure.error()));
    } else {
      if (!_online!) {
        if (_game != null) {
          _game!.addDartBot();
          _gameStreamController.add(
            right(
              GameDto.fromExternal(_game!).toDomain().copyWith(
                    online: _online!,
                    createdAt: _createdAt!,
                  ),
            ),
          );
          return Future.value(right(unit));
        } else {
          return Future.value(left(const PlayFailure.error()));
        }
      } else {
        return Future.value(left(const PlayFailure.error()));
      }
    }
  }

  @override
  Future<Either<PlayFailure, Unit>> addPlayer() {
    if (fail || _online == null) {
      return Future.value(left(const PlayFailure.error()));
    } else {
      if (_game != null) {
        _game!.addPlayer();
        _gameStreamController.add(
          right(
            GameDto.fromExternal(_game!).toDomain().copyWith(
                  online: _online!,
                  createdAt: _createdAt!,
                ),
          ),
        );
        return Future.value(right(unit));
      } else {
        return Future.value(left(const PlayFailure.error()));
      }
    }
  }

  @override
  Future<Either<PlayFailure, Unit>> cancelGame() {
    if (fail || _game == null) {
      return Future.value(left(const PlayFailure.error()));
    } else {
      if (_game != null) {
        _game!.cancel();
        _gameStreamController.add(
          right(
            GameDto.fromExternal(_game!).toDomain().copyWith(
                  online: _online!,
                  createdAt: _createdAt!,
                ),
          ),
        );
        return Future.value(right(unit));
        // TODO maybe set all to null after here
      } else {
        return Future.value(left(const PlayFailure.error()));
      }
    }
  }

  @override
  Future<Either<PlayFailure, Unit>> createGame({required bool online}) {
    if (fail) {
      return Future.value(left(const PlayFailure.error()));
    } else {
      _online = online;
      _createdAt = DateTime.now();
      _game = dart.Game();
      _gameStreamController.add(
        right(
          GameDto.fromExternal(_game!).toDomain().copyWith(
                online: _online!,
                createdAt: _createdAt!,
              ),
        ),
      );
      return Future.value(right(unit));
    }
  }

  @override
  Future<Either<PlayFailure, Unit>> inviteFriend({
    required Friend friend,
  }) {
    // TODO: implement inviteFriend
    throw UnimplementedError();
  }

  @override
  Future<Either<PlayFailure, Unit>> joinGame({
    required int gameCode,
  }) {
    // TODO: implement joinGame
    throw UnimplementedError();
  }

  @override
  Future<Either<PlayFailure, Unit>> performThrow({required Throw t}) {
    if (fail || _online == null) {
      return Future.value(left(const PlayFailure.error()));
    } else {
      if (_game != null) {
        _game!.performThrow(_toExternalThrow(t));
        _gameStreamController.add(
          right(
            GameDto.fromExternal(_game!).toDomain().copyWith(
                  online: _online!,
                  createdAt: _createdAt!,
                ),
          ),
        );
        return Future.value(right(unit));
      } else {
        return Future.value(left(const PlayFailure.error()));
      }
    }
  }

  @override
  Future<Either<PlayFailure, Unit>> removeDartBot() {
    if (fail || _online == null) {
      return Future.value(left(const PlayFailure.error()));
    } else {
      if (!_online!) {
        if (_game != null) {
          _game!.removeDartBot();
          _gameStreamController.add(
            right(
              GameDto.fromExternal(_game!).toDomain().copyWith(
                    online: _online!,
                    createdAt: _createdAt!,
                  ),
            ),
          );
          return Future.value(right(unit));
        } else {
          return Future.value(left(const PlayFailure.error()));
        }
      } else {
        return Future.value(left(const PlayFailure.error()));
      }
    }
  }

  @override
  Future<Either<PlayFailure, Unit>> removePlayer({required int index}) {
    if (fail || _online == null) {
      return Future.value(left(const PlayFailure.error()));
    } else {
      if (_game != null) {
        _game!.removePlayer(index);
        _gameStreamController.add(
          right(
            GameDto.fromExternal(_game!).toDomain().copyWith(
                  online: _online!,
                  createdAt: _createdAt!,
                ),
          ),
        );
        return Future.value(right(unit));
      } else {
        return Future.value(left(const PlayFailure.error()));
      }
    }
  }

  @override
  Future<Either<PlayFailure, Unit>> reorderPlayer(
      {required int oldIndex, required int newIndex}) {
    if (fail || _online == null) {
      return Future.value(left(const PlayFailure.error()));
    } else {
      if (_game != null) {
        _game!.reorderPlayer(oldIndex, newIndex);
        _gameStreamController.add(
          right(
            GameDto.fromExternal(_game!).toDomain().copyWith(
                  online: _online!,
                  createdAt: _createdAt!,
                ),
          ),
        );
        return Future.value(right(unit));
      } else {
        return Future.value(left(const PlayFailure.error()));
      }
    }
  }

  @override
  Future<Either<PlayFailure, Unit>> setDartBotTargetAverage(
      {required int targetAverage}) {
    if (fail || _online == null) {
      return Future.value(left(const PlayFailure.error()));
    } else {
      if (!_online!) {
        if (_game != null) {
          _game!.setDartBotTargetAverage(targetAverage);
          _gameStreamController.add(
            right(
              GameDto.fromExternal(_game!).toDomain().copyWith(
                    online: _online!,
                    createdAt: _createdAt!,
                  ),
            ),
          );
          return Future.value(right(unit));
        } else {
          return Future.value(left(const PlayFailure.error()));
        }
      } else {
        return Future.value(left(const PlayFailure.error()));
      }
    }
  }

  @override
  Future<Either<PlayFailure, Unit>> setMode({required Mode mode}) {
    if (fail || _online == null) {
      return Future.value(left(const PlayFailure.error()));
    } else {
      if (_game != null) {
        _game!.setMode(_toExternalMode(mode));
        _gameStreamController.add(
          right(
            GameDto.fromExternal(_game!).toDomain().copyWith(
                  online: _online!,
                  createdAt: _createdAt!,
                ),
          ),
        );
        return Future.value(right(unit));
      } else {
        return Future.value(left(const PlayFailure.error()));
      }
    }
  }

  @override
  Future<Either<PlayFailure, Unit>> setSize({required int size}) {
    if (fail || _online == null) {
      return Future.value(left(const PlayFailure.error()));
    } else {
      if (_game != null) {
        _game!.setSize(size);
        _gameStreamController.add(
          right(
            GameDto.fromExternal(_game!).toDomain().copyWith(
                  online: _online!,
                  createdAt: _createdAt!,
                ),
          ),
        );
        return Future.value(right(unit));
      } else {
        return Future.value(left(const PlayFailure.error()));
      }
    }
  }

  @override
  Future<Either<PlayFailure, Unit>> setStartingPoints(
      {required int startingPoints}) {
    if (fail || _online == null) {
      return Future.value(left(const PlayFailure.error()));
    } else {
      if (_game != null) {
        _game!.setStartingPoints(startingPoints);
        _gameStreamController.add(
          right(
            GameDto.fromExternal(_game!).toDomain().copyWith(
                  online: _online!,
                  createdAt: _createdAt!,
                ),
          ),
        );
        return Future.value(right(unit));
      } else {
        return Future.value(left(const PlayFailure.error()));
      }
    }
  }

  @override
  Future<Either<PlayFailure, Unit>> setType({required Type type}) {
    if (fail || _online == null) {
      return Future.value(left(const PlayFailure.error()));
    } else {
      if (_game != null) {
        _game!.setType(_toExternalType(type));
        _gameStreamController.add(
          right(
            GameDto.fromExternal(_game!).toDomain().copyWith(
                  online: _online!,
                  createdAt: _createdAt!,
                ),
          ),
        );
        return Future.value(right(unit));
      } else {
        return Future.value(left(const PlayFailure.error()));
      }
    }
  }

  @override
  Future<Either<PlayFailure, Unit>> startGame() {
    if (fail || _online == null) {
      return Future.value(left(const PlayFailure.error()));
    } else {
      if (_game != null) {
        _game!.start();
        _gameStreamController.add(
          right(
            GameDto.fromExternal(_game!).toDomain().copyWith(
                  online: _online!,
                  createdAt: _createdAt!,
                ),
          ),
        );
        return Future.value(right(unit));
      } else {
        return Future.value(left(const PlayFailure.error()));
      }
    }
  }

  @override
  Future<Either<PlayFailure, Unit>> undoThrow() {
    if (fail || _online == null) {
      return Future.value(left(const PlayFailure.error()));
    } else {
      if (_game != null) {
        _game!.undoThrow();
        _gameStreamController.add(
          right(
            GameDto.fromExternal(_game!).toDomain().copyWith(
                  online: _online!,
                  createdAt: _createdAt!,
                ),
          ),
        );
        return Future.value(right(unit));
      } else {
        return Future.value(left(const PlayFailure.error()));
      }
    }
  }

  @override
  Future<Either<PlayFailure, Unit>> updateName(
      {required int index, required String newName}) {
    if (fail || _online == null) {
      return Future.value(left(const PlayFailure.error()));
    } else {
      if (!_online!) {
        if (_game != null) {
          final player = _game!.players[index];
          player.name =
              newName; // TODO expose update name methode in package dart!
          /*
          _gameStreamController.add(GameDto.fromExternal(_game!)
              .toDomain()
              .copyWith(online: _online!));
         */
          return Future.value(right(unit));
        } else {
          return Future.value(left(const PlayFailure.error()));
        }
      } else {
        return Future.value(left(const PlayFailure.error()));
      }
    }
  }

  @override
  int minDartsThrown({required int points, required int pointsLeft}) {
    return dart.ThrowValidator.minDartsThrown(
      points: points,
      pointsLeft: pointsLeft,
    );
  }

  @override
  int maxDartsThrown({required int points, required int pointsLeft}) {
    return dart.ThrowValidator.maxDartsThrown(
      points: points,
      pointsLeft: pointsLeft,
    );
  }

  @override
  int minDartsOnDouble({required int points, required int pointsLeft}) {
    return dart.ThrowValidator.minDartsOnDouble(
      points: points,
      pointsLeft: pointsLeft,
    );
  }

  @override
  int maxDartsOnDouble({required int points, required int pointsLeft}) {
    return dart.ThrowValidator.maxDartsOnDouble(
      points: points,
      pointsLeft: pointsLeft,
    );
  }

  @override
  Stream<Either<PlayFailure, Game>> watchGame() {
    return _gameStreamController.stream;
  }

  dart.Throw _toExternalThrow(Throw t) => dart.Throw(
        t.points,
        dartsThrown: t.dartsThrown,
        dartsOnDouble: t.dartsOnDouble,
      );

  dart.Mode _toExternalMode(Mode mode) {
    if (mode == Mode.bestOf) {
      return dart.Mode.bestOf;
    } else {
      return dart.Mode.firstTo;
    }
  }

  dart.Type _toExternalType(Type type) {
    if (type == Type.legs) {
      return dart.Type.legs;
    } else {
      return dart.Type.sets;
    }
  }
}
