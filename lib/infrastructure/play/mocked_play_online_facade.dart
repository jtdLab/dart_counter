import 'dart:async';

import 'package:dart_counter/domain/core/value_objects.dart';
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
import 'package:dart_counter/infrastructure/play/throw_dto.dart';
import 'package:dart_counter/main_dev.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_game/dart_game.dart' as ex;
import 'package:dartz/dartz.dart';
import 'package:faker/faker.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@Environment(Environment.dev)
@LazySingleton(as: IPlayOnlineFacade)
class MockedPlayOnlineFacade implements IPlayOnlineFacade {
  final IUserFacade _userFacade; // TODO use or remove

  final BehaviorSubject<OnlineGameSnapshot> _gameController;

  // TODO maybe use behaivor subj with ex.Game? and map this to watchGameStream
  // add all needed fields to generated online game

  ex.Game? _game;

  MockedPlayOnlineFacade(
    this._userFacade,
  ) : _gameController = BehaviorSubject();

  @override
  Future<Either<PlayFailure, Unit>> cancelGame() {
    return _tryPerform(
      action: () => _game!.cancel(),
    );
  }

  @override
  Future<Either<PlayFailure, Unit>> createGame() async {
    if (hasNetworkConnection) {
      _game = _game = ex.Game();
      _gameController.add(
        _toOnlineGameSnapshot(_game!),
      );

      return right(unit);
    }

    return left(const PlayFailure.error()); // TODO name better
  }

  @override
  Future<Either<PlayFailure, Unit>> joinGame({
    required UniqueId gameId,
  }) {
    return createGame();
  }

  @override
  Future<Either<PlayFailure, Unit>> performThrow({
    required Throw t,
  }) {
    return _tryPerform(
      action: () => _game!.performThrow(
        t: ThrowDto.fromDomain(t).toExternal(),
      ),
    );
  }

  @override
  Future<Either<PlayFailure, Unit>> removePlayer({
    required int index,
  }) {
    return _tryPerform(
      action: () => _game!.removePlayer(index: index),
    );
  }

  @override
  Future<Either<PlayFailure, Unit>> reorderPlayer({
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
  Future<Either<PlayFailure, Unit>> setMode({
    required Mode mode,
  }) {
    return _tryPerform(
      action: () =>
          _game!.mode = mode == Mode.firstTo ? ex.Mode.firstTo : ex.Mode.bestOf,
    );
  }

  @override
  Future<Either<PlayFailure, Unit>> setSize({
    required int size,
  }) {
    return _tryPerform(
      action: () => _game!.size = size,
    );
  }

  @override
  Future<Either<PlayFailure, Unit>> setStartingPoints({
    required int startingPoints,
  }) {
    return _tryPerform(
      action: () => _game!.startingPoints = startingPoints,
    );
  }

  @override
  Future<Either<PlayFailure, Unit>> setType({
    required Type type,
  }) {
    return _tryPerform(
      action: () =>
          _game!.type = type == Type.legs ? ex.Type.legs : ex.Type.sets,
    );
  }

  @override
  Future<Either<PlayFailure, Unit>> startGame() {
    return _tryPerform(
      action: () => _game!.start(),
    );
  }

  @override
  Future<Either<PlayFailure, Unit>> undoThrow() async {
    return _tryPerform(
      action: () => _game!.undoThrow(),
    );
  }

  @override
  Stream<OnlineGameSnapshot> watchGame() {
    return _gameController.stream;
  }

  // TODO involve return type bool of action instead of void
  /// Trys to Perform [action].
  Future<Either<PlayFailure, Unit>> _tryPerform({
    required void Function() action,
  }) async {
    if (hasNetworkConnection) {
      if (_game != null) {
        action();
        _gameController.add(
          _toOnlineGameSnapshot(_game!),
        );

        return right(unit);
      }
    }


    return left(const PlayFailure.error()); // TODO name better
  }

  /// Converts an external game and fils in dummy data for online game specific fields.
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

  /// Converts an external player and fils in dummy data for online player specific fields.
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
