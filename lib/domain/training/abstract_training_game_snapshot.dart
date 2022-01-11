import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/domain/training/abstract_training_player_snapshot.dart';
import 'package:kt_dart/kt.dart';

abstract class AbstractTrainingGameSnapshot {
  Status get status;
  KtList<AbstractTrainingPlayerSnapshot> get players;
  AbstractTrainingPlayerSnapshot get owner;
  AbstractTrainingPlayerSnapshot currentTurn();
}
