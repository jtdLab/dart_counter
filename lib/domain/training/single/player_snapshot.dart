import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_snapshot.freezed.dart';

@freezed
class PlayerSnapshot with _$PlayerSnapshot {
  const factory PlayerSnapshot({
    required String? name,
    required int targetValue,
    required int points,
    required int singles,
    required int doubles,
    required int triples,
    required int missed,
  }) = _PlayerSnapshot;
}
