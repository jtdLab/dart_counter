import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'dart.freezed.dart';

@freezed
class Dart with _$Dart {
  const factory Dart({
    required UniqueId id,
    required int points,
  }) = _Dart;

  factory Dart.dummy() => Dart(
        id: UniqueId.fromUniqueString(const Uuid().v4()),
        points: 0,
      );
}
