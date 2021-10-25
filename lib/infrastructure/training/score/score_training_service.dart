import 'package:dart_counter/domain/training/score/game_snapshot.dart';
import 'package:dart_counter/domain/training/score/i_score_training_service.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:injectable/injectable.dart';
import 'package:dart_game/score_training_game.dart' as ex;

@Environment(Environment.dev)
@Environment(Environment.test)
@Environment(Environment.prod)
@LazySingleton(as: IScoreTrainingService)
class ScoreTrainingService implements IScoreTrainingService {
  @override
  void addPlayer() {
    // TODO: implement addPlayer
  }

  @override
  void cancel() {
    // TODO: implement cancel
  }

  @override
  void createGame({required User owner, required List<String> users}) {
    // TODO: implement createGame
  }

  @override
  void performThrow({required int points}) {
    // TODO: implement performThrow
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
    // TODO: implement watchGame
    throw UnimplementedError();
  }

}
