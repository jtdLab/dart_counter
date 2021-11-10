import 'package:dart_counter/domain/play/stats.dart';
import 'package:dart_counter/domain/game/throw.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'leg.freezed.dart';

@freezed
class Leg with _$Leg {
  const factory Leg({
    required KtList<Throw> throws,
    required bool won,
    required LegStats stats,
  }) = _Leg;

  factory Leg.dummy() {
    return Leg(
      throws: KtList.from(
        faker.randomGenerator.amount((i) => Throw.dummy(), 10),
      ),
      won: false,
      stats: LegStats.dummy(),
    );
  }
}
