import 'package:dart_counter/domain/training/abstract_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/score/score_training_player_snapshot.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import '../status.dart';

part 'score_training_game_snapshot.freezed.dart';

@freezed
class ScoreTrainingGameSnapshot
    with _$ScoreTrainingGameSnapshot
    implements AbstractTrainingGameSnapshot {
  @Implements<AbstractTrainingGameSnapshot>()
  const factory ScoreTrainingGameSnapshot({
    required Status status,
    required int numberOfTakes,
    required KtList<ScoreTrainingPlayerSnapshot> players,
    required ScoreTrainingPlayerSnapshot owner,
  }) = _ScoreTrainingGameSnapshot;

  // TODO dummy
}
