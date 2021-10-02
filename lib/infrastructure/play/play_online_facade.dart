import 'dart:async';

import 'package:dart_client/dart_client.dart' as dc;
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/play/game_snapshot.dart';
import 'package:dart_counter/domain/play/i_play_online_facade.dart';
import 'package:dart_counter/domain/play/mode.dart';
import 'package:dart_counter/domain/play/play_failure.dart';
import 'package:dart_counter/domain/play/status.dart';
import 'package:dart_counter/domain/play/throw.dart';
import 'package:dart_counter/domain/play/type.dart';
import 'package:dart_counter/domain/user/i_user_facade.dart';
import 'package:dart_counter/infrastructure/play/game_snapshot_dto.dart';
import 'package:dart_counter/infrastructure/play/throw_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@Environment(Environment.test)
@Environment(Environment.prod)
@LazySingleton(as: IPlayOnlineFacade)
class PlayOnlineFacade implements IPlayOnlineFacade {
  final dc.DartClient _dartClient;
  final IUserFacade _userFacade;

  final BehaviorSubject<OnlineGameSnapshot> _gameController;

  PlayOnlineFacade(
    this._dartClient,
    this._userFacade,
  ) : _gameController = BehaviorSubject() {
    _dartClient.watchGame().listen(
      (game) async {
        final snapshot = OnlineGameSnapshotDto.fromClient(game).toDomain();
        if (snapshot.status == Status.canceled ||
            snapshot.status == Status.finished) {
          await _dartClient.disconnect();
        }
        _gameController.add(
          snapshot,
        );
      },
    );
  }

  @override
  Future<Either<PlayFailure, Unit>> cancelGame() async {
    final successful = await _dartClient.cancelGame();
    if (successful) {
      return right(unit);
    }
    return left(const PlayFailure.error());
  }

  @override
  Future<Either<PlayFailure, Unit>> createGame() async {
    final user = _userFacade.getUser();
    final idToken = user?.fold(
      (failure) => null,
      (user) => user.idToken,
    );
    if (idToken == null) {
      return left(const PlayFailure.error());
    }

    final connected = await _dartClient.connect(idToken: idToken);
    if (connected) {
      final successful = await _dartClient.createGame();
      if (successful) {
        return right(unit);
      }
    }
    return left(const PlayFailure.error());
  }

  @override
  Future<Either<PlayFailure, Unit>> joinGame({
    required UniqueId gameId,
  }) async {
    final user = _userFacade.getUser();
    final idToken = user?.fold(
      (failure) => null,
      (user) => user.idToken,
    );
    if (idToken == null) {
      return left(const PlayFailure.error());
    }
    final connected = await _dartClient.connect(idToken: idToken);
    if (connected) {
      final successful = await _dartClient.joinGame(
        gameId: gameId.getOrCrash(),
      );
      if (successful) {
        return right(unit);
      }
    }

    return left(const PlayFailure.error());
  }

  @override
  Future<Either<PlayFailure, Unit>> performThrow({
    required Throw t,
  }) async {
    final successful = await _dartClient.performThrow(
      t: ThrowDto.fromDomain(t).toClient(),
    );
    if (successful) {
      return right(unit);
    }
    return left(const PlayFailure.error());
  }

  @override
  Future<Either<PlayFailure, Unit>> removePlayer({
    required int index,
  }) async {
    final successful = await _dartClient.removePlayer(index: index);
    if (successful) {
      return right(unit);
    }
    return left(const PlayFailure.error());
  }

  @override
  Future<Either<PlayFailure, Unit>> reorderPlayer({
    required int oldIndex,
    required int newIndex,
  }) async {
    final successful =
        await _dartClient.reorderPlayer(oldIndex: oldIndex, newIndex: newIndex);
    if (successful) {
      return right(unit);
    }
    return left(const PlayFailure.error());
  }

  @override
  Future<Either<PlayFailure, Unit>> setMode({
    required Mode mode,
  }) async {
    final successful = await _dartClient.setMode(
        mode: mode == Mode.firstTo ? dc.Mode.firstTo : dc.Mode.bestOf);
    if (successful) {
      return right(unit);
    }
    return left(const PlayFailure.error());
  }

  @override
  Future<Either<PlayFailure, Unit>> setSize({
    required int size,
  }) async {
    final successful = await _dartClient.setSize(size: size);
    if (successful) {
      return right(unit);
    }
    return left(const PlayFailure.error());
  }

  @override
  Future<Either<PlayFailure, Unit>> setStartingPoints({
    required int startingPoints,
  }) async {
    final successful =
        await _dartClient.setStartingPoints(startingPoints: startingPoints);
    if (successful) {
      return right(unit);
    }
    return left(const PlayFailure.error());
  }

  @override
  Future<Either<PlayFailure, Unit>> setType({
    required Type type,
  }) async {
    final successful = await _dartClient.setType(
        type: type == Type.legs ? dc.Type.legs : dc.Type.sets);
    if (successful) {
      return right(unit);
    }
    return left(const PlayFailure.error());
  }

  @override
  Future<Either<PlayFailure, Unit>> startGame() async {
    final successful = await _dartClient.startGame();
    if (successful) {
      return right(unit);
    }
    return left(const PlayFailure.error());
  }

  @override
  Future<Either<PlayFailure, Unit>> undoThrow() async {
    final successful = await _dartClient.undoThrow();
    if (successful) {
      return right(unit);
    }
    return left(const PlayFailure.error());
  }

  @override
  Stream<OnlineGameSnapshot> watchGame() {
    return _gameController.stream;
  }
}
