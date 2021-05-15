import 'package:dart_counter/domain/play/game.dart';
import 'package:dart_counter/domain/friend/friend.dart';
import 'package:dart_counter/domain/play/i_play_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:dart_counter/domain/play/throw.dart';
import 'package:dart_counter/domain/play/play_failure.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IPlayFacade)
class PlayFacade implements IPlayFacade {
  @override
  Future<Either<PlayFailure, Unit>> addDartBot() {
    // TODO: implement addDartBot
    throw UnimplementedError();
  }

  @override
  Future<Either<PlayFailure, Unit>> addPlayer() {
    // TODO: implement addPlayer
    throw UnimplementedError();
  }

  @override
  Future<Either<PlayFailure, Unit>> cancelGame() {
    // TODO: implement cancelGame
    throw UnimplementedError();
  }

  @override
  Future<Either<PlayFailure, Unit>> createGame({required bool online}) {
    // TODO: implement createGame
    throw UnimplementedError();
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
    // TODO: implement performThrow
    throw UnimplementedError();
  }

  @override
  Future<Either<PlayFailure, Unit>> removeDartBot() {
    // TODO: implement removeDartBot
    throw UnimplementedError();
  }

  @override
  Future<Either<PlayFailure, Unit>> removePlayer({required int index}) {
    // TODO: implement removePlayer
    throw UnimplementedError();
  }

  @override
  Future<Either<PlayFailure, Unit>> reorderPlayer(
      {required int oldIndex, required int newIndex}) {
    // TODO: implement reorderPlayer
    throw UnimplementedError();
  }

  @override
  Future<Either<PlayFailure, Unit>> setDartBotTargetAverage(
      {required int targetAverage}) {
    // TODO: implement setDartBotTargetAverage
    throw UnimplementedError();
  }

  @override
  Future<Either<PlayFailure, Unit>> setMode({required Mode mode}) {
    // TODO: implement setMode
    throw UnimplementedError();
  }

  @override
  Future<Either<PlayFailure, Unit>> setSize({required int size}) {
    // TODO: implement setSize
    throw UnimplementedError();
  }

  @override
  Future<Either<PlayFailure, Unit>> setStartingPoints(
      {required int startingPoints}) {
    // TODO: implement setStartingPoints
    throw UnimplementedError();
  }

  @override
  Future<Either<PlayFailure, Unit>> setType({required Type type}) {
    // TODO: implement setType
    throw UnimplementedError();
  }

  @override
  Future<Either<PlayFailure, Unit>> startGame() {
    // TODO: implement startGame
    throw UnimplementedError();
  }

  @override
  Future<Either<PlayFailure, Unit>> undoThrow() {
    // TODO: implement undoThrow
    throw UnimplementedError();
  }

  @override
  Future<Either<PlayFailure, Unit>> updateName(
      {required int index, required String newName}) {
    // TODO: implement updateName
    throw UnimplementedError();
  }
}
