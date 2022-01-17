import 'package:dart_counter/domain/game/throw.dart';
import 'package:dart_counter/domain/training/double/double_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/double/i_double_training_service.dart';
import 'package:dart_counter/domain/training/mode.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/infrastructure/game/dart_dto.dart';
import 'package:dart_counter/infrastructure/game/throw_dto.dart';
import 'package:dart_counter/infrastructure/training/double/double_training_game_snapshot_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:dart_game/double_training_game.dart' as ex;
import 'package:rxdart/rxdart.dart';
import 'package:kt_dart/kt.dart';

@Environment(Environment.dev)
@Environment(Environment.test)
@Environment(Environment.prod)
@LazySingleton(as: IDoubleTrainingService)
class DoubleTrainingService implements IDoubleTrainingService {
  BehaviorSubject<DoubleTrainingGameSnapshot> _gameController;

  ex.Game? _game;
  User? _owner;
  String? _ownerPlayerId;

  DoubleTrainingService() : _gameController = BehaviorSubject();

  @override
  void addPlayer() {
    return _tryPerform(
      action: () => _game!.addPlayer(player: ex.Player()),
    );
  }

  @override
  void cancel() {
    _tryPerform(
      action: () => _game?.cancel(),
    );

    _gameController = BehaviorSubject();
  }

  @override
  DoubleTrainingGameSnapshot createGame({
    required User owner,
    List<String?>? players,
  }) {
    _game = _game = ex.Game(
      ownerName: owner.profile.name.getOrCrash(),
    );

    if (players != null && players.length <= 3) {
      for (final p in players) {
        _game!.addPlayer(player: ex.Player(name: p));
      }
    }

    _owner = owner;
    _ownerPlayerId = _game!.players[0].id;

    return _emitSnpashot();
  }

  @override
  void performThrow({
    required Throw t,
  }) {
    return _tryPerform(
      action: () {
        _game!.performThrow(t: ThrowDto.fromDomain(t).toExternal());
      },
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
  void start() {
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
  void updateMode({
    required Mode newMode,
  }) {
    return _tryPerform(
      action: () {
        _game!.mode = newMode == Mode.ascending
            ? ex.Mode.ascending
            : newMode == Mode.descending
                ? ex.Mode.descending
                : ex.Mode.random;
      },
    );
  }

  @override
  Stream<DoubleTrainingGameSnapshot> watchGame() {
    return _gameController.stream;
  }

  @override
  DoubleTrainingGameSnapshot getGame() {
    // TODO throw no running game error insted of valuestream error
    return _gameController.value;
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

  DoubleTrainingGameSnapshot _emitSnpashot() {
    final dto = DoubleTrainingGameSnapshotDto.fromExternal(_game!);

    final playersWithPhotos = dto.players.map((player) {
      /**
      *  if (player.id == _ownerPlayerId!) {
        return (player as OfflinePlayerSnapshotDto)
            .copyWith(photoUrl: _owner!.profile.photoUrl);
      }
      */
      return player;
    }).toList();

    final domain = dto
        /**
         *   .copyWith(
            players: playersWithPhotos,
          )
         */
        .toDomain();

    _gameController.add(domain);

    return domain;
  }
}
