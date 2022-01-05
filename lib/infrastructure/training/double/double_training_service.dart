import 'package:dart_counter/domain/training/double/hit.dart';
import 'package:dart_counter/domain/training/double/double_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/double/i_double_training_service.dart';
import 'package:dart_counter/domain/training/mode.dart';
import 'package:dart_counter/domain/user/user.dart';
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
  final BehaviorSubject<DoubleTrainingGameSnapshot> _gameController;

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
    return _tryPerform(
      action: () => _game?.cancel(),
    );
  }

  @override
  void createGame({
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

    _emitSnpashot();
  }

  @override
  void performHits({
    required Hit hit1,
    required Hit hit2,
    required Hit hit3,
  }) {
    return _tryPerform(
      action: () {
        final hits = [hit1, hit2, hit3];
        final currentTurn =
            _game!.players.where((player) => player.isCurrentTurn!).toList()[0];
        final value = currentTurn.targetValue!;

        final List<ex.Dart> darts = [];
        for (final hit in hits) {
          switch (hit) {
            case Hit.double:
              darts.add(
                ex.Dart(
                  type: ex.DartType.double,
                  value: value,
                ),
              );
              break;
            case Hit.missed:
              darts.add(ex.Dart.missed);
              break;
          }
        }

        _game!.performThrow(
          t: ex.Throw.fromDarts(
            darts: darts,
            dartsOnDouble: 3,
          ),
        );
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
  void undoHits() {
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

    _gameController.add(
      dto
          /**
         *   .copyWith(
            players: playersWithPhotos,
          )
         */
          .toDomain(),
    );
  }
}
