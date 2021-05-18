import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/play/throw.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:uuid/uuid.dart';

part 'leg.freezed.dart';

@freezed
class Leg with _$Leg {
  const factory Leg({
    required UniqueId id,
    required KtList<Throw> throws,
  }) = _Leg;

  factory Leg.dummy() => Leg(
        id: UniqueId.fromUniqueString(const Uuid().v4()),
        throws: KtList.from([Throw.dummy(), Throw.dummy()]),
      );
}