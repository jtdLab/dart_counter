import 'package:dart_counter/domain/friend/friend.dart';
import 'package:dart_counter/domain/play/play_failure.dart';
import 'package:dart_counter/domain/play/throw.dart';
import 'package:dartz/dartz.dart';

import 'game.dart';
import 'mode.dart';
import 'type.dart';

abstract class IPlayFacade {
  Stream<Either<PlayFailure, Game>> watchGame();

  Future<Either<PlayFailure, Unit>> createGame({
    required bool online,
  });
  Future<Either<PlayFailure, Unit>> reorderPlayer({
    required int oldIndex,
    required int newIndex,
  });
  Future<Either<PlayFailure, Unit>> removePlayer({
    required int index,
  });
  Future<Either<PlayFailure, Unit>> setStartingPoints({
    required int startingPoints,
  });
  Future<Either<PlayFailure, Unit>> setMode({
    required Mode mode,
  });
  Future<Either<PlayFailure, Unit>> setSize({
    required int size,
  });
  Future<Either<PlayFailure, Unit>> setType({
    required Type type,
  });
  Future<Either<PlayFailure, Unit>> startGame();
  Future<Either<PlayFailure, Unit>> cancelGame();
  Future<Either<PlayFailure, Unit>> performThrow({
    required Throw t,
  });
  Future<Either<PlayFailure, Unit>> undoThrow();

  Future<Either<PlayFailure, Unit>> addDartBot();
  Future<Either<PlayFailure, Unit>> removeDartBot();
  Future<Either<PlayFailure, Unit>> setDartBotTargetAverage({
    required int targetAverage,
  });
  Future<Either<PlayFailure, Unit>> addPlayer();
  Future<Either<PlayFailure, Unit>> updateName({
    required int index,
    required String newName,
  });

  Future<Either<PlayFailure, Unit>> joinGame({
    required int gameCode,
  });
  Future<Either<PlayFailure, Unit>> inviteFriend({
    required Friend friend,
  });

  int minDartsThrown({
    required int points,
    required int pointsLeft,
  });
  int maxDartsThrown({
    required int points,
    required int pointsLeft,
  });
  int minDartsOnDouble({
    required int points,
    required int pointsLeft,
  });
  int maxDartsOnDouble({
    required int points,
    required int pointsLeft,
  });
}
