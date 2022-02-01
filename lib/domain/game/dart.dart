import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dart.freezed.dart';

enum DartType { missed, single, double, triple }

@freezed
class Dart with _$Dart {
  // coverage:ignore-start
  const factory Dart({
    required DartType type,
    required int value,
  }) = _Dart;

  const Dart._();

  factory Dart.dummy() {
    final type = faker.randomGenerator.element([
      DartType.single,
      DartType.double,
      DartType.triple,
    ]);
    return Dart(
      type: type,
      value: faker.randomGenerator.element(
        (List.generate(20, (index) => index + 1).toList()) +
            (type == DartType.triple ? [25] : []),
      ),
    );
  }
  // coverage:ignore-end

  static const missed = Dart(type: DartType.missed, value: 0);

  int points() {
    int multiplier;
    switch (type) {
      case DartType.missed:
        return 0;
      case DartType.single:
        multiplier = 1;
        break;
      case DartType.double:
        multiplier = 2;
        break;
      default:
        multiplier = 3;
    }

    return multiplier * value;
  }
}
