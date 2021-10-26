import 'package:dart_counter/domain/training/training_player_snapshot.dart';
import 'package:kt_dart/kt.dart';

import 'status.dart';

abstract class TrainingGameSnapshot {
  Status get status;
  KtList<TrainingPlayerSnapshot> get players;
  TrainingPlayerSnapshot get owner;
}
