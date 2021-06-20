import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/play/dart.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'throw.freezed.dart';

@freezed
class Throw with _$Throw {
  const factory Throw({
    required UniqueId id,
    required int points,
    required int dartsThrown,
    required int dartsOnDouble,
  }) = _Throw;

  factory Throw.fromDarts(UniqueId id, List<Dart> darts, int dartsOnDouble) =>
      Throw(
        id: id,
        points: darts.map((dart) => dart.points).toList().sum,
        dartsThrown: darts.length,
        dartsOnDouble: dartsOnDouble,
      );

  factory Throw.dummy({
    int dartsOnDouble = 0,
  }) {
    final faker = Faker();

    final boggys = [179, 178, 176, 175, 173, 172, 169, 166, 165, 163, 162];
    int points = faker.randomGenerator.integer(180);
    if (boggys.contains(points)) {
      points -= 40;
    }

    return Throw(
      id: UniqueId.fromUniqueString(faker.randomGenerator.string(28, min: 28)),
      points: points,
      dartsThrown: 3,
      dartsOnDouble: dartsOnDouble,
    );
  }
}
