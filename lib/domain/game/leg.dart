import 'package:dart_counter/domain/game/leg_stats.dart';
import 'package:dart_counter/domain/game/throw.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'leg.freezed.dart';

@freezed
class Leg with _$Leg {
  const factory Leg({
    required bool won,
    required KtList<Throw> throws,
    required LegStats stats,
  }) = _Leg;

  factory Leg.dummy() {
    return Leg(
      won: false,
      throws: KtList.from(
        faker.randomGenerator.amount((i) => Throw.dummy(), 10),
      ),
      stats: LegStats.dummy(),
    );
  }
}
