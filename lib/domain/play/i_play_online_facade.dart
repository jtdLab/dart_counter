import 'package:dart_counter/domain/friend/friend.dart';
import 'package:dart_counter/domain/play/game_snapshot.dart';
import 'package:dartz/dartz.dart';

import 'mode.dart';
import 'play_failure.dart';
import 'throw.dart';
import 'type.dart';

abstract class IPlayOnlineFacade {
  Stream<Either<PlayFailure, OnlineGameSnapshot>> watchGame();

  Future<Either<PlayFailure, Unit>> createGame();

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

  Future<Either<PlayFailure, Unit>> joinGame({
    required int gameCode,
  });
  Future<Either<PlayFailure, Unit>> inviteFriend({
    required Friend friend,
  });
}
