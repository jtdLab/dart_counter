import 'package:dart_counter/domain/training/single/player_snapshot.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'game_snapshot.freezed.dart';

enum Status { pending, running, canceled, finished }

enum Mode { ascending, descending }

@freezed
class GameSnapshot with _$GameSnapshot {
  const factory GameSnapshot({
    required Status status,
    required Mode mode,
    required KtList<PlayerSnapshot> players,
  }) = _GameSnapshot;
}