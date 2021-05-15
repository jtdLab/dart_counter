import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:uuid/uuid.dart';

import 'leg.dart';

part 'set.freezed.dart';

@freezed
class Set with _$Set {
  const factory Set({
    required UniqueId id,
    required KtList<Leg> legs,
  }) = _Set;

  factory Set.dummy() => Set(
        id: UniqueId.fromUniqueString(const Uuid().v4()),
        legs: KtList.from([Leg.dummy(), Leg.dummy()]),
      );
}
