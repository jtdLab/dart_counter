import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'throw.freezed.dart';

@freezed
class Throw with _$Throw {
  const factory Throw({
    required UniqueId id,
    required int points,
    required int dartsThrown,
    required int dartsOnDouble,
  }) = _Throw;

  factory Throw.dummy() => Throw(
        id: UniqueId.fromUniqueString(const Uuid().v4()),
        points: 100,
        dartsThrown: 3,
        dartsOnDouble: 0,
      );
}
