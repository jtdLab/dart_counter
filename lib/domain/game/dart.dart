import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dart.freezed.dart';

enum DartType { single, double, triple }

@freezed
class Dart with _$Dart {
  const factory Dart({
    required DartType type,
    required int value,
  }) = _Dart;

  const Dart._();

  int points() {
    int multiplier;
    switch (type) {
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
}