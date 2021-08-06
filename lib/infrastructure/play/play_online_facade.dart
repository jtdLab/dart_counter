import 'dart:async';

import 'package:dart_client/dart_client.dart' as dc;
import 'package:dart_counter/domain/friend/friend.dart';
import 'package:dart_counter/domain/play/game_snapshot.dart';
import 'package:dart_counter/domain/play/i_play_online_facade.dart';
import 'package:dart_counter/domain/play/mode.dart';
import 'package:dart_counter/domain/play/play_failure.dart';
import 'package:dart_counter/domain/play/throw.dart';
import 'package:dart_counter/domain/play/type.dart';
import 'package:dart_counter/infrastructure/play/game_snapshot_dto.dart';
import 'package:dart_counter/infrastructure/play/throw_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Environment(Environment.test)
@Environment(Environment.prod)
@LazySingleton(as: IPlayOnlineFacade)
class PlayOnlineFacade implements IPlayOnlineFacade {
  final dc.IDartClient _dartClient;

  final StreamController<Either<PlayFailure, OnlineGameSnapshot>>
      _gameStreamController = StreamController.broadcast();

  DateTime? _createdAt; // TODO use or remove

  PlayOnlineFacade(this._dartClient) {
    _dartClient.watchGame().listen(
      (game) {
        _gameStreamController.add(
          right(
            OnlineGameSnapshotDto.fromClient(game).toDomain(),
          ),
        );
      },
    );
  }

  @override
  Future<Either<PlayFailure, Unit>> cancelGame() async {
    // TODO await result from client and return failure if happend
    _dartClient.cancelGame();
    return right(unit);
  }

  @override
  Future<Either<PlayFailure, Unit>> createGame() async {
    // TODO await result from client and return failure if happend
    await _dartClient.connect(idToken: 'idToken'); // TODO real id token
    _dartClient.createGame(); // TODO await
    return right(unit);
  }

  @override
  Future<Either<PlayFailure, Unit>> inviteFriend({
    required Friend friend,
  }) async {
    // TODO await result from client and return failure if happend
    _dartClient.invitePlayer(uid: friend.id.getOrCrash());
    return right(unit);
  }

  @override
  Future<Either<PlayFailure, Unit>> joinGame({
    required int gameCode,
  }) async {
      // TODO await result from client and return failure if happend
    await _dartClient.connect(idToken: 'idToken'); // TODO real id token
    _dartClient.joinGame(gameCode: gameCode); // TODO await
    return right(unit);
  }

  @override
  Future<Either<PlayFailure, Unit>> performThrow({
    required Throw t,
  }) async {
    // TODO await result from client and return failure if happend
    _dartClient.performThrow(
      t: ThrowDto.fromDomain(t).toClient(),
    );
    return right(unit);
  }

  @override
  Future<Either<PlayFailure, Unit>> removePlayer({
    required int index,
  }) async {
    // TODO await result from client and return failure if happend
    _dartClient.removePlayer(index: index);
    return right(unit);
  }

  @override
  Future<Either<PlayFailure, Unit>> reorderPlayer({
    required int oldIndex,
    required int newIndex,
  }) async {
    // TODO await result from client and return failure if happend
    _dartClient.reorderPlayer(oldIndex: oldIndex, newIndex: newIndex);
    return right(unit);
  }

  @override
  Future<Either<PlayFailure, Unit>> setMode({
    required Mode mode,
  }) async {
    // TODO await result from client and return failure if happend
    _dartClient.setMode(
        mode: mode == Mode.firstTo ? dc.Mode.firstTo : dc.Mode.bestOf);
    return right(unit);
  }

  @override
  Future<Either<PlayFailure, Unit>> setSize({
    required int size,
  }) async {
    // TODO await result from client and return failure if happend
    _dartClient.setSize(size: size);
    return right(unit);
  }

  @override
  Future<Either<PlayFailure, Unit>> setStartingPoints({
    required int startingPoints,
  }) async {
    // TODO await result from client and return failure if happend
    _dartClient.setStartingPoints(startingPoints: startingPoints);
    return right(unit);
  }

  @override
  Future<Either<PlayFailure, Unit>> setType({
    required Type type,
  }) async {
    // TODO await result from client and return failure if happend
    _dartClient.setType(type: type == Type.legs ? dc.Type.legs : dc.Type.sets);
    return right(unit);
  }

  @override
  Future<Either<PlayFailure, Unit>> startGame() async {
    // TODO await result from client and return failure if happend
    _dartClient.startGame();
    return right(unit);
  }

  @override
  Future<Either<PlayFailure, Unit>> undoThrow() async {
    // TODO await result from client and return failure if happend
    _dartClient.undoThrow();
    return right(unit);
  }

  @override
  Stream<Either<PlayFailure, OnlineGameSnapshot>> watchGame() {
    return _gameStreamController.stream;
  }
}
