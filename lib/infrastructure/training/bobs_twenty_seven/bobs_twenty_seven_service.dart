import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/game/throw.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/bobs_twenty_seven_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/i_bobs_twenty_seven_service.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/mode.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/infrastructure/game/throw_dto.dart';
import 'package:dart_counter/infrastructure/training/bobs_twenty_seven/bobs_twenty_seven_game_snapshot_dto.dart';
import 'package:dart_game/bobs_twenty_seven_training_game.dart' as ex;
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

@Environment(Environment.dev)
@Environment(Environment.test)
@Environment(Environment.prod)
@LazySingleton(as: IBobsTwentySevenService)
class BobsTwentySevenService implements IBobsTwentySevenService {
  BehaviorSubject<BobsTwentySevenGameSnapshot> _gameController;

  ex.Game? _game;
  User? _owner;
  String? _ownerPlayerId;

  BobsTwentySevenService() : _gameController = BehaviorSubject();

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
  BobsTwentySevenGameSnapshot createGame({
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
        // when incoming darts has less than 3 elements
        // add dart with 0 points for each missing dart
        // so the resulting list contains 3 elements
        final filledThrow = t.copyWith(
          darts: t.darts!.toMutableList()
            ..addAll(
              List.generate(
                3 - t.darts!.size,
                (index) => Dart.missed,
              ).toImmutableList(),
            ),
          dartsOnDouble: 3,
        );
        _game!.performThrow(t: ThrowDto.fromDomain(filledThrow).toExternal());
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
        _game!.mode = newMode == Mode.easy ? ex.Mode.easy : ex.Mode.hard;
      },
    );
  }

  @override
  Stream<BobsTwentySevenGameSnapshot> watchGame() {
    return _gameController.stream;
  }

  @override
  BobsTwentySevenGameSnapshot getGame() {
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

  BobsTwentySevenGameSnapshot _emitSnpashot() {
    final dto = BobsTwentySevenGameSnapshotDto.fromExternal(_game!);

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
