import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/play/dart.dart';
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

  factory Throw.fromDarts(UniqueId id, List<Dart> darts) => Throw(
        id: id,
        points: darts.map((dart) => dart.points).toList().sum,
        dartsThrown: darts.length,
        dartsOnDouble: 0, // TODO
      );

  factory Throw.dummy() => Throw(
        id: UniqueId.fromUniqueString(const Uuid().v4()),
        points: 100,
        dartsThrown: 3,
        dartsOnDouble: 0,
      );
}
