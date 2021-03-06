import 'dart:async';

import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/domain/play/offline/i_play_offline_service.dart';
import 'package:dart_counter/domain/game/mode.dart';
import 'package:dart_counter/domain/play/play_failure.dart';
import 'package:dart_counter/domain/game/throw.dart';
import 'package:dart_counter/domain/game/type.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/infrastructure/game/throw_dto.dart';
import 'package:dart_counter/infrastructure/play/abstract_player_snapshot_dto.dart';
import 'package:dart_game/dart_game.dart' as ex;
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../abstract_game_snapshot_dto.dart';

// This service has to reset itself after games is canceled or finished

@Environment(Environment.dev)
@Environment(Environment.test)
@Environment(Environment.prod)
@LazySingleton(as: IPlayOfflineService)
class PlayOfflineService implements IPlayOfflineService {
  final BehaviorSubject<OfflineGameSnapshot> _gameController;

  ex.Game? _game;
  User? _owner;
  String? _ownerPlayerId;
  DateTime? _createdAt; // TODO needed

  // TODO maybe use behaivor subj with ex.Game? and map this to watchGameStream

  PlayOfflineService() : _gameController = BehaviorSubject() {
    _gameController.stream.listen((gameSnapshot) {
      if (gameSnapshot.status == Status.canceled ||
          gameSnapshot.status == Status.finished) {
        // TODO reset
      }
    });
  }

  @override
  Future<Either<PlayFailure, Unit>> addDartBot() {
    return _tryPerform(
      action: () => _game!.addDartBot(),
    );
  }

  @override
  Future<Either<PlayFailure, Unit>> addPlayer() {
    return _tryPerform(
      action: () => _game!.addPlayer(player: ex.Player()),
    );
  }

  @override
  Future<Either<PlayFailure, Unit>> cancelGame() {
    return _tryPerform(
      action: () => _game!.cancel(),
    );
  }

  @override
  OfflineGameSnapshot createGame({
    required User owner,
  }) {
    if (_game == null) {
      _game = _game = ex.Game(
        ownerName: owner.profile.name.getOrCrash(),
      );

      _owner = owner;
      _ownerPlayerId = _game!.players[0].id;

      _emitSnpashot();

      return _gameController.value;
    }

    throw Error(); // TODO better name for this error e.g game alrdy running
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
  Future<Either<PlayFailure, Unit>> removeDartBot() {
    return _tryPerform(
      action: () => _game!.removeDartBot(),
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
  Future<Either<PlayFailure, Unit>> setDartBotTargetAverage({
    required int targetAverage,
  }) {
    return _tryPerform(
      action: () => _game!.dartBotTargetAverage = targetAverage,
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
  Future<Either<PlayFailure, Unit>> undoThrow() {
    return _tryPerform(
      action: () => _game!.undoThrow(),
    );
  }

  @override
  Future<Either<PlayFailure, Unit>> updateName({
    required int index,
    required String newName,
  }) {
    return _tryPerform(
      action: () => _game!.players[index].name = newName,
    );
  }

  @override
  OfflineGameSnapshot getGame() {
    return _gameController.value;
  }

  @override
  Stream<OfflineGameSnapshot> watchGame() {
    return _gameController.stream;
  }

  // TODO involve return type bool of action instead of void
  /// Trys to Perform [action].
  Future<Either<PlayFailure, Unit>> _tryPerform({
    required void Function() action,
  }) async {
    if (_game != null) {
      action();
      _emitSnpashot();
      return right(unit);
    }

    // TODO name better no game found running
    return left(
      const PlayFailure.error(),
    );
  }

  void _emitSnpashot() {
    final offlineGameSnapshotDto = OfflineGameSnapshotDto.fromExternal(_game!);

    final playersWithPhotos = offlineGameSnapshotDto.players.map((player) {
      if (player.id == _ownerPlayerId!) {
        return (player as OfflinePlayerSnapshotDto);
        // TODO
        //.copyWith(photoUrl: _owner!.profile.photoUrl);
      }
      return player;
    }).toList();

    final offlineGameSnapshot = offlineGameSnapshotDto
        .copyWith(
          players: playersWithPhotos,
        )
        .toDomain();

    _gameController.add(offlineGameSnapshot);

    if (offlineGameSnapshot.status == Status.canceled ||
        offlineGameSnapshot.status == Status.finished) {
      _game = null;
    }
  }
}
