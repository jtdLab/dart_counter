import 'package:dart_counter/domain/training/bobs_twenty_seven/player_snapshot.dart';
import 'package:dart_counter/domain/training/training_game_snapshot.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import '../mode.dart';
import '../status.dart';

part 'game_snapshot.freezed.dart';

@freezed
class GameSnapshot with _$GameSnapshot implements TrainingGameSnapshot {
  @Implements(TrainingGameSnapshot)
  const factory GameSnapshot({
    required Status status,
    required Mode mode,
    required KtList<PlayerSnapshot> players,
    required PlayerSnapshot owner,
  }) = _GameSnapshot;
}
