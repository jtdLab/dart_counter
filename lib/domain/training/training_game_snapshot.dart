import 'package:dart_counter/domain/training/training_player_snapshot.dart';
import 'package:kt_dart/kt.dart';

abstract class TrainingGameSnapshot {
  KtList<TrainingPlayerSnapshot> get players;
}
