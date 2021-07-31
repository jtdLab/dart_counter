import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import 'leg.dart';

part 'set.freezed.dart';

@freezed
class Set with _$Set {
  const factory Set({
    required KtList<Leg> legs,
  }) = _Set;
}
