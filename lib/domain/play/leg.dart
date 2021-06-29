import 'package:dart_counter/domain/play/throw.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'leg.freezed.dart';

@freezed
class Leg with _$Leg {
  const factory Leg({
    required KtList<Throw> throws,
  }) = _Leg;

  factory Leg.dummy() {
    return Leg(
      throws: KtList.from([Throw.dummy(), Throw.dummy()]),
    );
  }
}
