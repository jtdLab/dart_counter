import 'package:dart_counter/domain/core/errors.dart';
import 'package:dart_counter/domain/play/game.dart';
import 'package:dart_counter/domain/friend/friend.dart';
import 'package:dart_counter/domain/play/i_play_facade.dart';
import 'package:dart_game/dart_game.dart' as dart;
import 'package:dartz/dartz.dart';
import 'package:dart_counter/domain/play/throw.dart';
import 'package:dart_counter/domain/play/play_failure.dart';
import 'package:injectable/injectable.dart';

@Environment(Environment.prod)
@LazySingleton(as: IPlayFacade)
class PlayFacade implements IPlayFacade {

  dart.Game? game;

  bool? _online;

  @override
  Future<Either<PlayFailure, Unit>> addDartBot() {
    if (_online == null) {
      throw MissingGameError();
    }

    if(_online == false) {
      //game.addDartBot();
    }
    // TODO: implement addDartBot
    throw UnimplementedError();
  }

  @override
  Future<Either<PlayFailure, Unit>> addPlayer() {
    if (_online == null) {
      throw MissingGameError();
    }
    // TODO: implement addPlayer
    throw UnimplementedError();
  }

  @override
  Future<Either<PlayFailure, Unit>> cancelGame() {
    if (_online == null) {
      throw MissingGameError();
    }
    // TODO: implement cancelGame
    throw UnimplementedError();
  }

  @override
  Future<Either<PlayFailure, Unit>> createGame({required bool online}) {
    _online = online;
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
    if (_online == null) {
      throw MissingGameError();
    }
    // TODO: implement performThrow
    throw UnimplementedError();
  }

  @override
  Future<Either<PlayFailure, Unit>> removeDartBot() {
    if (_online == null) {
      throw MissingGameError();
    }
    // TODO: implement removeDartBot
    throw UnimplementedError();
  }

  @override
  Future<Either<PlayFailure, Unit>> removePlayer({required int index}) {
    if (_online == null) {
      throw MissingGameError();
    }
    // TODO: implement removePlayer
    throw UnimplementedError();
  }

  @override
  Future<Either<PlayFailure, Unit>> reorderPlayer(
      {required int oldIndex, required int newIndex}) {
    if (_online == null) {
      throw MissingGameError();
    }
    // TODO: implement reorderPlayer
    throw UnimplementedError();
  }

  @override
  Future<Either<PlayFailure, Unit>> setDartBotTargetAverage(
      {required int targetAverage}) {
    if (_online == null) {
      throw MissingGameError();
    }
    // TODO: implement setDartBotTargetAverage
    throw UnimplementedError();
  }

  @override
  Future<Either<PlayFailure, Unit>> setMode({required Mode mode}) {
    if (_online == null) {
      throw MissingGameError();
    }
    // TODO: implement setMode
    throw UnimplementedError();
  }

  @override
  Future<Either<PlayFailure, Unit>> setSize({required int size}) {
    if (_online == null) {
      throw MissingGameError();
    }
    // TODO: implement setSize
    throw UnimplementedError();
  }

  @override
  Future<Either<PlayFailure, Unit>> setStartingPoints(
      {required int startingPoints}) {
    if (_online == null) {
      throw MissingGameError();
    }
    // TODO: implement setStartingPoints
    throw UnimplementedError();
  }

  @override
  Future<Either<PlayFailure, Unit>> setType({required Type type}) {
    if (_online == null) {
      throw MissingGameError();
    }
    // TODO: implement setType
    throw UnimplementedError();
  }

  @override
  Future<Either<PlayFailure, Unit>> startGame() {
    if (_online == null) {
      throw MissingGameError();
    }
    // TODO: implement startGame
    throw UnimplementedError();
  }

  @override
  Future<Either<PlayFailure, Unit>> undoThrow() {
    if (_online == null) {
      throw MissingGameError();
    }
    // TODO: implement undoThrow
    throw UnimplementedError();
  }

  @override
  Future<Either<PlayFailure, Unit>> updateName(
      {required int index, required String newName}) {
    if (_online == null) {
      throw MissingGameError();
    }
    // TODO: implement updateName
    throw UnimplementedError();
  }

  @override
  Stream<Game> watchGame() {
    // TODO: implement watchGame
    throw UnimplementedError();
  }
}
