import 'package:dart_counter/domain/game/leg.dart';
import 'package:dart_counter/domain/game/set_stats.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'set.freezed.dart';

@freezed
class Set with _$Set {
  const factory Set({
    required KtList<Leg> legs,
    required bool won,
    required int wonLegs,
    required SetStats stats,
  }) = _Set;

  factory Set.dummy() {
    return Set(
      legs: KtList.from(
        faker.randomGenerator.amount((i) => Leg.dummy(), 5),
      ),
      won: false,
      wonLegs: 0,
      stats: SetStats.dummy(),
    );
  }
}
