import 'package:dart_counter/domain/training/score/player_snapshot.dart';
import 'package:dart_counter/domain/training/training_game_snapshot.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import '../status.dart';

part 'game_snapshot.freezed.dart';

@freezed
class GameSnapshot with _$GameSnapshot implements TrainingGameSnapshot {
  @Implements(TrainingGameSnapshot)
  const factory GameSnapshot({
    required Status status,
    required int numberOfTakes,
    required KtList<PlayerSnapshot> players,
    required PlayerSnapshot owner,
  }) = _GameSnapshot;
}
