import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/play/throw.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'leg.freezed.dart';

@freezed
class Leg with _$Leg {
  const factory Leg({
    required UniqueId id,
    required KtList<Throw> throws,
  }) = _Leg;

  factory Leg.dummy() {
    final faker = Faker();
    return Leg(
      id: UniqueId.fromUniqueString(faker.randomGenerator.string(28, min: 28)),
      throws: KtList.from([Throw.dummy(), Throw.dummy()]),
    );
  }
}
