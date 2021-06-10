import 'dart:async';

import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/play/game.dart';
import 'package:dart_counter/domain/friend/friend.dart';
import 'package:dart_counter/domain/play/i_play_facade.dart';
import 'package:dart_counter/domain/play/leg.dart';
import 'package:dart_counter/domain/play/player.dart';
import 'package:dart_counter/domain/play/set.dart';
import 'package:dart_counter/domain/play/stats.dart';
import 'package:dartz/dartz.dart';
import 'package:dart_counter/domain/play/throw.dart';
import 'package:dart_counter/domain/play/play_failure.dart';
import 'package:injectable/injectable.dart';
import 'package:dart_game/dart_game.dart' as dart;
import 'package:kt_dart/kt.dart';
import 'package:uuid/uuid.dart';

@Environment(Environment.dev)
@LazySingleton(as: IPlayFacade)
class MockedPlayFacade implements IPlayFacade {
  bool fail = false; // toggle to simulate working / notworking endpoint

  final StreamController<Game> _gameStramController =
      StreamController.broadcast();

  dart.Game? game;
  bool? _online;

  @override
  Future<Either<PlayFailure, Unit>> addDartBot() {
    if (fail || _online == null) {
      return Future.value(left(const PlayFailure.error()));
    } else {
      if (!_online!) {
        if (game != null) {
          game!.addDartBot();
          _gameStramController.add(_fromExternalGame(game!));
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
      if (game != null) {
        game!.addPlayer();
        _gameStramController.add(_fromExternalGame(game!));
        return Future.value(right(unit));
      } else {
        return Future.value(left(const PlayFailure.error()));
      }
    }
  }

  @override
  Future<Either<PlayFailure, Unit>> cancelGame() {
    if (fail || game == null) {
      return Future.value(left(const PlayFailure.error()));
    } else {
      if (game != null) {
        game!.cancel();
        _gameStramController.add(_fromExternalGame(game!));
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
      game = dart.Game();
      _gameStramController.add(_fromExternalGame(game!));
      return Future.value(right(unit));
    }
  }

  @override
  Future<Either<PlayFailure, Unit>> inviteFriend(Friend friend) {
    // TODO: implement inviteFriend
    throw UnimplementedError();
  }

  @override
  Future<Either<PlayFailure, Unit>> joinGame(int gameCode) {
    // TODO: implement joinGame
    throw UnimplementedError();
  }

  @override
  Future<Either<PlayFailure, Unit>> performThrow({required Throw t}) {
    if (fail || _online == null) {
      return Future.value(left(const PlayFailure.error()));
    } else {
      if (game != null) {
        game!.performThrow(_toExternalThrow(t));
        _gameStramController.add(_fromExternalGame(game!));
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
        if (game != null) {
          game!.removeDartBot();
          _gameStramController.add(_fromExternalGame(game!));
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
      if (game != null) {
        game!.removePlayer(index);
        _gameStramController.add(_fromExternalGame(game!));
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
      if (game != null) {
        game!.reorderPlayer(oldIndex, newIndex);
        _gameStramController.add(_fromExternalGame(game!));
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
        if (game != null) {
          game!.setDartBotTargetAverage(targetAverage);
          _gameStramController.add(_fromExternalGame(game!));
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
      if (game != null) {
        game!.setMode(_toExternalMode(mode));
        _gameStramController.add(_fromExternalGame(game!));
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
      if (game != null) {
        game!.setSize(size);
        _gameStramController.add(_fromExternalGame(game!));
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
      if (game != null) {
        game!.setStartingPoints(startingPoints);
        _gameStramController.add(_fromExternalGame(game!));
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
      if (game != null) {
        game!.setType(_toExternalType(type));
        _gameStramController.add(_fromExternalGame(game!));
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
      if (game != null) {
        game!.start();
        _gameStramController.add(_fromExternalGame(game!));
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
      if (game != null) {
        game!.undoThrow();
        _gameStramController.add(_fromExternalGame(game!));
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
        if (game != null) {
          final player = game!.players[index];
          player.name =
              newName; // TODO expose update name methode in package dart!
          _gameStramController.add(_fromExternalGame(game!));
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
  Stream<Game> watchGame() {
    return _gameStramController.stream;
  }

// TODO desereialzation etc somewhere else
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

  Game _fromExternalGame(dart.Game game) {
    return Game(
      id: UniqueId.fromUniqueString('dummyGameId'),
      status: _fromExternalStatus(game.status),
      mode: _fromExternalMode(game.config.mode),
      size: game.config.size,
      type: _fromExternalType(game.config.type),
      startingPoints: game.config.startingPoints,
      players: _fromExternalPlayers(game.players),
    );
  }

  Status _fromExternalStatus(dart.Status status) {
    if (status == dart.Status.pending) {
      return Status.pending;
    } else if (status == dart.Status.running) {
      return Status.running;
    } else if (status == dart.Status.canceled) {
      return Status.canceled;
    } else {
      return Status.finished;
    }
  }

  Mode _fromExternalMode(dart.Mode mode) {
    if (mode == dart.Mode.firstTo) {
      return Mode.firstTo;
    } else {
      return Mode.bestOf;
    }
  }

  Type _fromExternalType(dart.Type type) {
    if (type == dart.Type.legs) {
      return Type.legs;
    } else {
      return Type.sets;
    }
  }

  KtList<Player> _fromExternalPlayers(List<dart.Player> players) {
    final List<Player> ps = [];

    for (final dart.Player player in players) {
      ps.add(_fromExternalPlayer(player));
    }

    return KtList.from(ps);
  }

  Player _fromExternalPlayer(dart.Player player) {
    return Player(
      name: player.name,
      isCurrentTurn: player.isCurrentTurn,
      won: player.won,
      wonSets: player.wonSets,
      wonLegsCurrentSet: player.wonLegsCurrentSet,
      pointsLeft: player.pointsLeft,
      finishRecommendation: player.finishRecommendation != null
          ? KtList.from(player.finishRecommendation!)
          : null,
      lastPoints: player.lastPoints,
      dartsThrownCurrentLeg: player.dartsThrownCurrentLeg,
      stats: _fromExternalStats(player.stats),
      sets: _fromExternalSets(player.sets),
      isDartBot: player is dart.DartBot,
    );
  }

  Stats _fromExternalStats(dart.Stats stats) {
    return Stats(
      average: stats.average,
      checkoutPercentage: stats.checkoutPercentage,
      firstNineAverage: stats.firstNineAverage,
      bestLegDartsThrown: stats.bestLegDartsThrown,
      bestLegAverage: stats.bestLegAverage,
      worstLegDartsThrown: stats.worstLegDartsThrown,
      worstLegAverage: stats.worstLegAverage,
      averageDartsPerLeg: stats.averageDartsPerLeg,
      highestFinish: stats.highestFinish,
      fourtyPlus: stats.fourtyPlus,
      sixtyPlus: stats.sixtyPlus,
      eightyPlus: stats.eightyPlus,
      hundredPlus: stats.hundredPlus,
      hundredTwentyPlus: stats.hundredTwentyPlus,
      hundredFourtyPlus: stats.hundredFourtyPlus,
      hundredSixtyPlus: stats.hundredSixtyPlus,
      hundredEighty: stats.hundredEighty,
    );
  }

  KtList<Set> _fromExternalSets(List<dart.Set> sets) {
    final List<Set> ss = [];

    for (final dart.Set set in sets) {
      ss.add(_fromExternalSet(set));
    }

    return KtList.from(ss);
  }

  Set _fromExternalSet(dart.Set set) {
    return Set(
      id: UniqueId.fromUniqueString(const Uuid().v4()),
      legs: _fromExternalLegs(set.legs),
    );
  }

  KtList<Leg> _fromExternalLegs(List<dart.Leg> legs) {
    final List<Leg> ls = [];

    for (final dart.Leg leg in legs) {
      ls.add(_fromExternalLeg(leg));
    }

    return KtList.from(ls);
  }

  Leg _fromExternalLeg(dart.Leg leg) {
    return Leg(
      id: UniqueId.fromUniqueString(const Uuid().v4()),
      throws: _fromExternalThrows(leg.throws),
    );
  }

  KtList<Throw> _fromExternalThrows(List<dart.Throw> throws) {
    final List<Throw> ts = [];

    for (final dart.Throw t in throws) {
      ts.add(_fromExternalThrow(t));
    }

    return KtList.from(ts);
  }

  Throw _fromExternalThrow(dart.Throw t) {
    return Throw(
        id: UniqueId.fromUniqueString(const Uuid().v4()),
        points: t.points,
        dartsThrown: t.dartsThrown,
        dartsOnDouble: t.dartsOnDouble);
  }
}
