import 'package:kt_dart/kt.dart';

import 'abstract_training_player_snapshot.dart';
import 'status.dart';

abstract class AbstractTrainingGameSnapshot {
  Status get status;
  KtList<AbstractTrainingPlayerSnapshot> get players;
  AbstractTrainingPlayerSnapshot get owner;
}
