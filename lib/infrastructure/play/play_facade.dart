import 'package:dart_client/dart_client.dart' as dc;
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/friend/friend.dart';
import 'package:dart_counter/domain/play/game.dart';
import 'package:dart_counter/domain/play/i_play_facade.dart';
import 'package:dart_counter/domain/play/play_failure.dart';
import 'package:dart_counter/domain/play/player.dart';
import 'package:dart_counter/domain/play/throw.dart';
import 'package:dart_counter/infrastructure/play/throw_dto.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_game/dart_game.dart' as dart;
import 'package:dartz/dartz.dart';
import 'package:faker/faker.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import 'game_dto.dart';

@Environment(Environment.test)
@Environment(Environment.prod)
@LazySingleton(as: IPlayFacade)
class PlayFacade implements IPlayFacade {
  final BehaviorSubject<Either<PlayFailure, Game>> _gameStreamController =
      BehaviorSubject();

  final dc.AbstractDartClient _dartClient;

  dart.Game? _game;
  bool? _online;
  DateTime? _createdAt;

  PlayFacade(this._dartClient);

  @override
  Future<Either<PlayFailure, Unit>> addDartBot() async {
    if (_online != null) {
      if (!_online!) {
        final gameExisting = _game != null;

        if (gameExisting) {
          _game!.addDartBot();
          _gameStreamController.add(
            right(
              GameDto.fromExternal(_game!).toDomain().copyWith(
                    online: _online!,
                    createdAt: _createdAt!,
                  ),
            ),
          );
          return right(unit);
        }
      }
    }

    return left(const PlayFailure.error());
  }

  @override
  Future<Either<PlayFailure, Unit>> addPlayer() async {
    if (_online != null) {
      if (_online!) {
        // TODO add player if game host else ignore
        throw UnimplementedError();
      } else {
        final gameExisting = _game != null;

        if (gameExisting) {
          final bool playerAdded = _game!.addPlayer();
          // TODO maybe return playfailure if adding failed
          _gameStreamController.add(
            right(
              GameDto.fromExternal(_game!).toDomain().copyWith(
                    online: _online!,
                    createdAt: _createdAt!,
                  ),
            ),
          );
          return right(unit);
        }
      }
    }

    return left(const PlayFailure.error());
  }

  @override
  Future<Either<PlayFailure, Unit>> cancelGame() async {
    if (_online != null) {
      if (_online!) {
        _dartClient.cancelGame();
        await _dartClient.disconnect();
        return right(unit);
      } else {
        final gameExisting = _game != null;

        if (gameExisting) {
          _game!.cancel();
          _gameStreamController.add(
            right(
              GameDto.fromExternal(_game!).toDomain().copyWith(
                    online: _online!,
                    createdAt: _createdAt!,
                  ),
            ),
          );
          _game = null;
          return right(unit);
        }
      }
    }

    return left(const PlayFailure.error());
  }

  @override
  Future<Either<PlayFailure, Unit>> createGame({
    required bool online,
  }) async {
    _online = online;
    _createdAt = DateTime.now();
    if (_online != null) {
      if (_online!) {
        final success = await _dartClient.connect();
        if (success) {
          _dartClient.received
              .where((packet) =>
                  packet is dc.SnapshotPacket ||
                  packet is dc.CreateGameResponsePacket)
              .map(
            (packet) {
              if (packet is dc.SnapshotPacket) {
                return _fromGameSnapshot(packet.gameSnapshot);
              } else {
                return _fromGameSnapshot(
                    (packet as dc.CreateGameResponsePacket).snapshot);
              }
            },
          ).listen((game) => _gameStreamController.add(right(game)));
          _dartClient.createGame();
          return right(unit);
        } else {
          // TODO couldnt connect to server
          return left(const PlayFailure.error());
        }
      } else {
        final gameNotExisting = _game == null;

        if (gameNotExisting) {
          _game = dart.Game();
          _gameStreamController.add(
            right(
              GameDto.fromExternal(_game!).toDomain().copyWith(
                    online: _online!,
                    createdAt: _createdAt!,
                  ),
            ),
          );
          return right(unit);
        } else {
          if (_game!.status == dart.Status.finished) {
            _game = dart.Game();
            _gameStreamController.add(
              right(
                GameDto.fromExternal(_game!).toDomain().copyWith(
                      online: _online!,
                      createdAt: _createdAt!,
                    ),
              ),
            );
            return right(unit);
          }
        }
      }
    }

    return left(const PlayFailure.error());
  }

  @override
  Future<Either<PlayFailure, Unit>> inviteFriend({
    required Friend friend,
  }) async {
    if (_online != null) {
      if (_online!) {
        // TODO inviteFriend to online game
        throw UnimplementedError();
      }
    }

    return left(const PlayFailure.error());
  }

  @override
  Future<Either<PlayFailure, Unit>> joinGame({
    required int gameCode,
  }) async {
    if (_online != null) {
      if (_online!) {
        _dartClient.joinGame(gameCode);
        return right(unit);
      }
    }

    return left(const PlayFailure.error());
  }

  @override
  Future<Either<PlayFailure, Unit>> performThrow({
    required Throw t,
  }) async {
    if (_online != null) {
      if (_online!) {
        _dartClient.performThrow(t.points, t.dartsThrown, t.dartsOnDouble);
        return right(unit);
      } else {
        final gameExisting = _game != null;

        if (gameExisting) {
          _game!.performThrow(
            ThrowDto.fromDomain(t).toExternal(),
          );

          _gameStreamController.add(
            right(
              GameDto.fromExternal(_game!).toDomain(),
            ),
          );
          return right(unit);
        }
      }
    }

    return left(const PlayFailure.error());
  }

  @override
  Future<Either<PlayFailure, Unit>> removeDartBot() async {
    if (_online != null) {
      if (!_online!) {
        final gameExisting = _game != null;

        if (gameExisting) {
          _game!.removeDartBot();

          _gameStreamController.add(
            right(
              GameDto.fromExternal(_game!).toDomain(),
            ),
          );
          return right(unit);
        }
      }
    }

    return left(const PlayFailure.error());
  }

  @override
  Future<Either<PlayFailure, Unit>> removePlayer({
    required int index,
  }) async {
    if (_online != null) {
      if (_online!) {
        _dartClient.removePlayer(index);
        return right(unit);
      } else {
        final gameExisting = _game != null;

        if (gameExisting) {
          _game!.removePlayer(index);

          _gameStreamController.add(
            right(
              GameDto.fromExternal(_game!).toDomain(),
            ),
          );
          return right(unit);
        }
      }
    }

    return left(const PlayFailure.error());
  }

  @override
  Future<Either<PlayFailure, Unit>> reorderPlayer({
    required int oldIndex,
    required int newIndex,
  }) async {
    if (_online != null) {
      if (_online!) {
        _dartClient.reorderPlayer(oldIndex, newIndex);
        return right(unit);
      } else {
        final gameExisting = _game != null;

        if (gameExisting) {
          _game!.reorderPlayer(oldIndex, newIndex);

          _gameStreamController.add(
            right(
              GameDto.fromExternal(_game!).toDomain(),
            ),
          );
          return right(unit);
        }
      }
    }

    return left(const PlayFailure.error());
  }

  @override
  Future<Either<PlayFailure, Unit>> setDartBotTargetAverage({
    required int targetAverage,
  }) async {
    if (_online != null) {
      if (!_online!) {
        final gameExisting = _game != null;

        if (gameExisting) {
          _game!.setDartBotTargetAverage(targetAverage);

          _gameStreamController.add(
            right(
              GameDto.fromExternal(_game!).toDomain(),
            ),
          );
          return right(unit);
        }
      }
    }

    return left(const PlayFailure.error());
  }

  @override
  Future<Either<PlayFailure, Unit>> setMode({
    required Mode mode,
  }) async {
    if (_online != null) {
      if (_online!) {
        _dartClient
            .setMode(mode == Mode.firstTo ? dc.Mode.firstTo : dc.Mode.bestOf);
        return right(unit);
      } else {
        final gameExisting = _game != null;

        if (gameExisting) {
          _game!.setMode(
              mode == Mode.firstTo ? dart.Mode.firstTo : dart.Mode.bestOf);

          _gameStreamController.add(
            right(
              GameDto.fromExternal(_game!).toDomain(),
            ),
          );
          return right(unit);
        }
      }
    }

    return left(const PlayFailure.error());
  }

  @override
  Future<Either<PlayFailure, Unit>> setSize({
    required int size,
  }) async {
    if (_online != null) {
      if (_online!) {
        _dartClient.setSize(size);
        return right(unit);
      } else {
        final gameExisting = _game != null;

        if (gameExisting) {
          _game!.setSize(size);

          _gameStreamController.add(
            right(
              GameDto.fromExternal(_game!).toDomain(),
            ),
          );
          return right(unit);
        }
      }
    }

    return left(const PlayFailure.error());
  }

  @override
  Future<Either<PlayFailure, Unit>> setStartingPoints({
    required int startingPoints,
  }) async {
    if (_online != null) {
      if (_online!) {
        _dartClient.setStartingPoints(startingPoints);
        return right(unit);
      } else {
        final gameExisting = _game != null;

        if (gameExisting) {
          _game!.setStartingPoints(startingPoints);

          _gameStreamController.add(
            right(
              GameDto.fromExternal(_game!).toDomain(),
            ),
          );
          return right(unit);
        }
      }
    }

    return left(const PlayFailure.error());
  }

  @override
  Future<Either<PlayFailure, Unit>> setType({
    required Type type,
  }) async {
    if (_online != null) {
      if (_online!) {
        _dartClient.setType(type == Type.legs ? dc.Type.legs : dc.Type.sets);
        return right(unit);
      } else {
        final gameExisting = _game != null;

        if (gameExisting) {
          _game!.setType(type == Type.legs ? dart.Type.legs : dart.Type.sets);

          _gameStreamController.add(
            right(
              GameDto.fromExternal(_game!).toDomain(),
            ),
          );
          return right(unit);
        }
      }
    }

    return left(const PlayFailure.error());
  }

  @override
  Future<Either<PlayFailure, Unit>> startGame() async {
    if (_online != null) {
      if (_online!) {
        _dartClient.startGame();
        return right(unit);
      } else {
        final gameExisting = _game != null;

        if (gameExisting) {
          _game!.start();

          _gameStreamController.add(
            right(
              GameDto.fromExternal(_game!).toDomain(),
            ),
          );
          return right(unit);
        }
      }
    }

    return left(const PlayFailure.error());
  }

  @override
  Future<Either<PlayFailure, Unit>> undoThrow() async {
    if (_online != null) {
      if (_online!) {
        // TODO undoThrow if game host else ignore and only ur throw can be undone
        _dartClient.undoThrow();
        return right(unit);
      } else {
        final gameExisting = _game != null;

        if (gameExisting) {
          _game!.undoThrow();

          _gameStreamController.add(
            right(
              GameDto.fromExternal(_game!).toDomain(),
            ),
          );
          return right(unit);
        }
      }
    }

    return left(const PlayFailure.error());
  }

  @override
  Future<Either<PlayFailure, Unit>> updateName({
    required int index,
    required String newName,
  }) async {
    if (_online != null) {
      if (_online!) {
        // TODO updateName only if offline players can be added to online game maybe later feature
        throw UnimplementedError();
      } else {
        final gameExisting = _game != null;

        if (gameExisting) {
          _game!.players[index].name = newName;

          return right(unit);
        }
      }
    }

    return left(const PlayFailure.error());
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

  Game _fromGameSnapshot(dc.GameSnapshot gameSnapshot) {
    return Game(
      id: UniqueId.fromUniqueString('dummyId'),
      createdAt: DateTime.now(),
      online: true,
      status: gameSnapshot.status == dc.Status.pending
          ? Status.pending
          : gameSnapshot.status == dc.Status.running
              ? Status.running
              : gameSnapshot.status == dc.Status.canceled
                  ? Status.canceled
                  : Status.finished,
      mode: gameSnapshot.config.mode == dc.Mode.firstTo
          ? Mode.firstTo
          : Mode.bestOf,
      size: gameSnapshot.config.size,
      type: gameSnapshot.config.type == dc.Type.legs ? Type.legs : Type.sets,
      startingPoints: gameSnapshot.config.startingPoints,
      players: KtList.from(
        gameSnapshot.players.map(
          (player) => _fromPlayerSnapshot(player),
        ),
      ),
    );
  }

  Player _fromPlayerSnapshot(dc.PlayerSnapshot playerSnapshot) {
    return OnlinePlayer(
      id: UniqueId.fromUniqueString(
        faker.randomGenerator.string(20, min: 20),
      ),
      name: playerSnapshot.name,
      userId: UniqueId.fromUniqueString(
        faker.randomGenerator.string(20, min: 20),
      ),
    ) as Player;
  }
}
