import 'package:dart_client/domain/game_snapshot.dart';
import 'package:dart_client/domain/mode.dart';
import 'package:dart_client/domain/type.dart';
import 'package:dart_client/domain/throw.dart';

abstract class IDartClient {
  Stream<GameSnapshot> watchGame();

  Future<bool> connect({
    required String idToken,
  });

  Future<bool> disconnect();

  Future<bool> createGame();

  Future<bool> joinGame({
    required String gameId,
  });

  Future<bool> reorderPlayer({
    required int oldIndex,
    required int newIndex,
  });

  Future<bool> removePlayer({
    required int index,
  });

  Future<bool> setStartingPoints({
    required int startingPoints,
  });

  Future<bool> setMode({
    required Mode mode,
  });

  Future<bool> setSize({
    required int size,
  });

  Future<bool> setType({
    required Type type,
  });

  Future<bool> startGame();

  Future<bool> cancelGame();

  Future<bool> performThrow({
    required Throw t,
  });

  Future<bool> undoThrow();
}
