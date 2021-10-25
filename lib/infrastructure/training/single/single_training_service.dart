import 'package:dart_counter/domain/training/single/hit.dart';
import 'package:dart_counter/domain/training/single/game_snapshot.dart';
import 'package:dart_counter/domain/training/single/i_single_training_service.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/infrastructure/training/single/game_snapshot_dto.dart';
import 'package:dart_counter/infrastructure/training/single/hit_x.dart';
import 'package:injectable/injectable.dart';
import 'package:dart_game/single_training_game.dart' as ex;
import 'package:rxdart/rxdart.dart';
import 'package:kt_dart/kt.dart';

@Environment(Environment.dev)
@Environment(Environment.test)
@Environment(Environment.prod)
@LazySingleton(as: ISingleTrainingService)
class SingleTrainingService implements ISingleTrainingService {
  final BehaviorSubject<GameSnapshot> _gameController;

  ex.Game? _game;
  User? _owner;
  String? _ownerPlayerId;

  SingleTrainingService() : _gameController = BehaviorSubject();

  @override
  void createGame({
    required User owner,
    required List<String> users,
  }) {
    _game = _game = ex.Game(
      ownerName: owner.profile.username.getOrCrash(),
    );

    _owner = owner;
    _ownerPlayerId = _game!.players[0].id;

    _emitSnpashot();
  }

  @override
  void addPlayer() {
    return _tryPerform(
      action: () => _game!.addPlayer(),
    );
  }

  @override
  void performHits({
    required Hit hit1,
    required Hit hit2,
    required Hit hit3,
  }) {
    return _tryPerform(
      action: () => _game!.performHits(
        hit1.toExternal(),
        hit2.toExternal(),
        hit3.toExternal(),
      ),
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
  void cancel() {
    return _tryPerform(
      action: () => _game!.cancel(),
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
      action: () => _game!.undoHits(),
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
  Stream<GameSnapshot> watchGame() {
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
    final dto = GameSnapshotDto.fromExternal(_game!);

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
