import 'dart:async';

import 'package:dart_counter/domain/play/game_snapshot.dart';
import 'package:dart_counter/domain/play/i_play_offline_facade.dart';
import 'package:dart_counter/domain/play/mode.dart';
import 'package:dart_counter/domain/play/throw.dart';
import 'package:dart_counter/domain/play/type.dart';
import 'package:dart_counter/domain/user/i_user_facade.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/infrastructure/play/player_snapshot_dto.dart';
import 'package:dart_game/dart_game.dart' as ex;
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import 'game_snapshot_dto.dart';
import 'throw_dto.dart';

@Environment(Environment.dev)
@Environment(Environment.test)
@Environment(Environment.prod)
@LazySingleton(as: IPlayOfflineFacade)
class PlayOfflineFacade implements IPlayOfflineFacade {
  final BehaviorSubject<OfflineGameSnapshot> _gameController;

  ex.Game? _game;
  User? _owner;
  String? _ownerPlayerId;
  DateTime? _createdAt; // TODO needed

  // TODO maybe use behaivor subj with ex.Game? and map this to watchGameStream

  PlayOfflineFacade() : _gameController = BehaviorSubject();

  @override
  void addDartBot() {
    return _tryPerform(
      action: () => _game!.addDartBot(),
    );
  }

  @override
  void addPlayer() {
    return _tryPerform(
      action: () => _game!.addPlayer(),
    );
  }

  @override
  void cancelGame() {
    return _tryPerform(
      action: () => _game!.cancel(),
    );
  }

  @override
  void createGame({
    required User owner,
  }) {
    _game = _game = ex.Game(
      ownerName: owner.profile.username.getOrCrash(),
    );

    _owner = owner;
    _ownerPlayerId = _game!.players[0].id;

    _emitSnpashot();
  }

  @override
  void performThrow({
    required Throw t,
  }) {
    return _tryPerform(
      action: () => _game!.performThrow(
        t: ThrowDto.fromDomain(t).toExternal(),
      ),
    );
  }

  @override
  void removeDartBot() {
    return _tryPerform(
      action: () => _game!.removeDartBot(),
    );
  }

  @override
  void removePlayer({
    required int index,
  }) {
    return _tryPerform(
      action: () => _game!.removePlayer(index: index),
    );
  }

  @override
  void reorderPlayer({
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
  void setDartBotTargetAverage({
    required int targetAverage,
  }) {
    return _tryPerform(
      action: () => _game!.dartBotTargetAverage = targetAverage,
    );
  }

  @override
  void setMode({
    required Mode mode,
  }) {
    return _tryPerform(
      action: () =>
          _game!.mode = mode == Mode.firstTo ? ex.Mode.firstTo : ex.Mode.bestOf,
    );
  }

  @override
  void setSize({
    required int size,
  }) {
    return _tryPerform(
      action: () => _game!.size = size,
    );
  }

  @override
  void setStartingPoints({
    required int startingPoints,
  }) {
    return _tryPerform(
      action: () => _game!.startingPoints = startingPoints,
    );
  }

  @override
  void setType({
    required Type type,
  }) {
    return _tryPerform(
      action: () =>
          _game!.type = type == Type.legs ? ex.Type.legs : ex.Type.sets,
    );
  }

  @override
  void startGame() {
    return _tryPerform(
      action: () => _game!.start(),
    );
  }

  @override
  void undoThrow() {
    return _tryPerform(
      action: () => _game!.undoThrow(),
    );
  }

  @override
  void updateName({
    required int index,
    required String newName,
  }) {
    return _tryPerform(
      action: () => _game!.players[index].name = newName,
    );
  }

  @override
  Stream<OfflineGameSnapshot> watchGame() {
    return _gameController.stream;
  }

  // TODO involve return type bool of action instead of void
  /// Trys to Perform [action].
  void _tryPerform({
    required void Function() action,
  }) {
    if (_game != null) {
      action();
      _emitSnpashot();
    }
  }

  void _emitSnpashot() {
    final offlineGameSnapshotDto = OfflineGameSnapshotDto.fromExternal(_game!);

    final playersWithPhotos = offlineGameSnapshotDto.players.map((player) {
      if (player.id == _ownerPlayerId!) {
        return (player as OfflinePlayerSnapshotDto)
            .copyWith(photoUrl: _owner!.profile.photoUrl);
      }
      return player;
    }).toList();

    _gameController.add(
      offlineGameSnapshotDto
          .copyWith(
            players: playersWithPhotos,
          )
          .toDomain(),
    );
  }
}
