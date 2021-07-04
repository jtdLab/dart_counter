import 'package:dart_counter/domain/play/dart.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

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
      points: points,
      dartsThrown: 3,
      dartsOnDouble: dartsOnDouble,
    );
  }
}
