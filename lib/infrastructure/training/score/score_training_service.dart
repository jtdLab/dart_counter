import 'package:dart_counter/domain/training/score/game_snapshot.dart';
import 'package:dart_counter/domain/training/score/i_score_training_service.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/infrastructure/training/score/game_snapshot_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:dart_game/score_training_game.dart' as ex;
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

@Environment(Environment.dev)
@Environment(Environment.test)
@Environment(Environment.prod)
@LazySingleton(as: IScoreTrainingService)
class ScoreTrainingService implements IScoreTrainingService {
  final BehaviorSubject<GameSnapshot> _gameController;

  ex.Game? _game;
  User? _owner;
  String? _ownerPlayerId;

  ScoreTrainingService() : _gameController = BehaviorSubject();

  @override
  void addPlayer() {
    return _tryPerform(
      action: () => _game!.addPlayer(player: ex.Player()),
    );
  }

  @override
  void cancel() {
    return _tryPerform(
      action: () => _game!.cancel(),
    );
  }

  @override
  void createGame({
    required User owner,
    List<String?>? players,
  }) {
    _game = _game = ex.Game(
      ownerName: owner.profile.username.getOrCrash(),
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
  void performThrow({
    required int points,
  }) {
    return _tryPerform(
      action: () {
        // TODO implement
        throw UnimplementedError();
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
