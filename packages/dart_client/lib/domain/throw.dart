import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import 'dart.dart';

part 'throw.freezed.dart';

@freezed
class Throw with _$Throw {
  const factory Throw({
    required int points,
    required int dartsThrown,
    required int dartsOnDouble,
    KtList<Dart>? darts,
  }) = _Throw;

  factory Throw.fromDarts(List<Dart> darts, int dartsOnDouble) => Throw(
        points: darts.map((dart) => dart.points()).toList().sum,
        dartsThrown: darts.length,
        dartsOnDouble: dartsOnDouble,
        darts: KtList.from(darts),
      );
}
