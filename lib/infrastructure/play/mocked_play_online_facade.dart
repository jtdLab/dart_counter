import 'dart:async';

import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/friend/friend.dart';
import 'package:dart_counter/domain/play/game_snapshot.dart';
import 'package:dart_counter/domain/play/i_play_online_facade.dart';
import 'package:dart_counter/domain/play/mode.dart';
import 'package:dart_counter/domain/play/play_failure.dart';
import 'package:dart_counter/domain/play/player_snapshot.dart';
import 'package:dart_counter/domain/play/stats.dart';
import 'package:dart_counter/domain/play/status.dart';
import 'package:dart_counter/domain/play/throw.dart';
import 'package:dart_counter/domain/play/type.dart';
import 'package:dart_counter/domain/user/i_user_facade.dart';
import 'package:dart_counter/infrastructure/play/stats_dto.dart';
import 'package:dart_counter/infrastructure/play/throw_dto.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_game/dart_game.dart' as ex;
import 'package:dartz/dartz.dart';
import 'package:faker/faker.dart';
import 'package:injectable/injectable.dart';

@Environment(Environment.dev)
@LazySingleton(as: IPlayOnlineFacade)
class MockedPlayOnlineFacade implements IPlayOnlineFacade {
  bool fail = false; // toggle to simulate working / not working endpoint

  final StreamController<Either<PlayFailure, OnlineGameSnapshot>>
      _gameStreamController = StreamController.broadcast();

  final IUserFacade _userFacade; // TODO use or remove

  ex.Game? _game;

  MockedPlayOnlineFacade(
    this._userFacade,
  );

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
            _toOnlineGameSnapshot(_game!),
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
      _game = _game = ex.Game();
      _gameStreamController.add(
        right(
          _toOnlineGameSnapshot(_game!),
        ),
      );
      return Future.value(right(unit));
    }
  }

  Future<Either<PlayFailure, Unit>> joinGame({
    required String gameCode,
  }) {
    // TODO implement
    throw UnimplementedError();
  }

  @override
  Future<Either<PlayFailure, Unit>> inviteFriend({
    required Friend friend,
  }) {
    // TODO implement
    throw UnimplementedError();
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
        _game!.performThrow(t: ThrowDto.fromDomain(t).toExternal());
        _gameStreamController.add(
          right(
            _toOnlineGameSnapshot(_game!),
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
        _game!.removePlayer(index: index);
        _gameStreamController.add(
          right(
            _toOnlineGameSnapshot(_game!),
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
        _game!.reorderPlayer(oldIndex: oldIndex, newIndex: newIndex);
        _gameStreamController.add(
          right(
            _toOnlineGameSnapshot(_game!),
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
        _game!.mode = mode == Mode.firstTo
            ? ex.Mode.firstTo
            : ex.Mode.bestOf; // TODO this should be done in enum Mode
        _gameStreamController.add(
          right(
            _toOnlineGameSnapshot(_game!),
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
        _game!.size = size;
        _gameStreamController.add(
          right(
            _toOnlineGameSnapshot(_game!),
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
        _game!.startingPoints = startingPoints;
        _gameStreamController.add(
          right(
            _toOnlineGameSnapshot(_game!),
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
        _game!.type = type == Type.legs
            ? ex.Type.legs
            : ex.Type.sets; // TODO should be done in enum Type
        _gameStreamController.add(
          right(
            _toOnlineGameSnapshot(_game!),
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
            _toOnlineGameSnapshot(_game!),
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
            _toOnlineGameSnapshot(_game!),
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
  Stream<Either<PlayFailure, OnlineGameSnapshot>> watchGame() {
    return _gameStreamController.stream;
  }

  OnlineGameSnapshot _toOnlineGameSnapshot(ex.Game game) {
    return OnlineGameSnapshot(
      status: game.status == ex.Status.pending
          ? Status.pending
          : game.status == ex.Status.running
              ? Status.running
              : game.status == ex.Status.canceled
                  ? Status.canceled
                  : Status.finished,
      mode: game.mode == ex.Mode.firstTo ? Mode.firstTo : Mode.bestOf,
      size: game.size,
      type: game.type == ex.Type.legs ? Type.legs : Type.sets,
      startingPoints: game.startingPoints,
      players: KtList.from(
        game.players.map(
          (player) => _toOnlinePlayerSnapshot(player),
        ),
      ),
    );
  }

  OnlinePlayerSnapshot _toOnlinePlayerSnapshot(ex.Player player) {
    return OnlinePlayerSnapshot(
      id: UniqueId.fromUniqueString(player.id),
      name: player.name ?? 'Player N', // TODO
      isCurrentTurn: player.isCurrentTurn ?? false, // TODO
      won: player.won ?? false, // TODO
      wonSets: player.wonSets,
      wonLegsCurrentSet: player.wonLegsCurrentSet ?? 0,
      pointsLeft: player.pointsLeft ?? 1,
      finishRecommendation: player.finishRecommendation == null
          ? null
          : KtList.from(player.finishRecommendation!),
      lastPoints: player.lastPoints,
      dartsThrownCurrentLeg: player.dartsThrownCurrentLeg ?? 0,
      stats: PlayerStats(
        average: player.average ?? 0,
        checkoutPercentage: player.checkoutPercentage ?? 0,
        firstNineAverage: player.firstNineAverage ?? 0,
        bestLegDartsThrown: player.bestLegDartsThrown,
        bestLegAverage: player.bestLegAverage,
        worstLegDartsThrown: player.worstLegDartsThrown,
        worstLegAverage: player.worstLegAverage,
        averageDartsPerLeg: player.averageDartsPerLeg,
        firstDartAverage: player.firstDartAverage,
        secondDartAverage: player.secondDartAverage,
        thirdDartAverage: player.thirdDartAverage,
        highestFinish: player.highestFinish,
        fourtyPlus: player.fourtyPlus ?? 0,
        sixtyPlus: player.sixtyPlus ?? 0,
        eightyPlus: player.eightyPlus ?? 0,
        hundredPlus: player.hundredPlus ?? 0,
        hundredTwentyPlus: player.hundredTwentyPlus ?? 0,
        hundredFourtyPlus: player.hundredFourtyPlus ?? 0,
        hundredSixtyPlus: player.hundredSixtyPlus ?? 0,
        hundredEighty: player.hundredEighty ?? 0,
      ),
      userId: UniqueId.fromUniqueString(
        faker.randomGenerator.string(28, min: 28),
      ),
    );
  }
}
