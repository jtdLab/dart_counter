import 'package:dart_counter/domain/training/bobs_twenty_seven/hit.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/game_snapshot.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/i_bobs_twenty_seven_service.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:injectable/injectable.dart';
import 'package:dart_game/bobs_twenty_seven_training_game.dart' as ex;

@Environment(Environment.dev)
@Environment(Environment.test)
@Environment(Environment.prod)
@LazySingleton(as: IBobsTwentySevenService)
class BobsTwentySevenService implements IBobsTwentySevenService {
  @override
  void addPlayer() {
    // TODO: implement addPlayer
  }

  @override
  void cancel() {
    // TODO: implement cancel
  }

  @override
  void createGame({
    required User owner,
    List<String?>? players,
  }) {
    // TODO: implement createGame
  }

  @override
  void performHits({required Hit hit1, required Hit hit2, required Hit hit3}) {
    // TODO: implement performHits
  }

  @override
  void removePlayer({required int index}) {
    // TODO: implement removePlayer
  }

  @override
  void reorderPlayer({required int oldIndex, required int newIndex}) {
    // TODO: implement reorderPlayer
  }

  @override
  void start() {
    // TODO: implement start
  }

  @override
  void undoHits() {
    // TODO: implement undoHits
  }

  @override
  void updateName({required int index, required String newName}) {
    // TODO: implement updateName
  }

  @override
  Stream<GameSnapshot> watchGame() {
    return const Stream.empty();
  }
}
