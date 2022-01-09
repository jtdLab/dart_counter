import 'package:quiver/core.dart';

/// The type of a [Dart]
enum DartType {
  single,
  double,
  triple,
}

class Dart {
  final DartType type;
  final int value;

  /// {@template dart_default_constructor}
  /// Creates a throw with given [type] and [value].
  ///
  /// Throws [ArgumentError] if try to create invalid dart.
  /// {@endtemplate}
  Dart({
    required this.type,
    required this.value,
  }) {
    _validate();
  }

  /// A dart with 0 points (type: double, value: 0)
  static Dart missed = Dart(type: DartType.double, value: 0);

  /// {@macro dart_default_constructor}
  ///
  /// **NOTICE**: This constructor exists for naming consistency only.
  /// It redirects to default constructor.
  factory Dart.fromData({
    required DartType type,
    required int value,
  }) = Dart;

  /// Returns the points of this dart.
  ///
  /// ```dart
  /// final dart = Dart(type: DartType.triple, value: 20);
  /// dart.points == 60
  /// ```
  int get points {
    switch (type) {
      case DartType.single:
        return value;
      case DartType.double:
        return 2 * value;
      default:
        return 3 * value;
    }
  }

  /**
   * ##############################
   * ########## INTERNAL ##########
   * ##############################
   */

  /// Validates this dart.
  ///
  /// Throws an [ArgumentError] in following cases:
  /// 1. [value] is not 0-25 or 25
  /// 2. [value] is 25 and [type] is [DartType.triple]
  void _validate() {
    if ((value < 0 || value > 25) ||
        (value == 21 || value == 22 || value == 23 || value == 24)) {
      throw ArgumentError.value(value, 'value', 'Value must be 1-20 or 25.');
    }

    if (value == 25 && type == DartType.triple) {
      throw ArgumentError(
        'Type mustn`t be triple if value is 25.',
      );
    }
  }

  // TODO test
  bool operator ==(o) => o is Dart && type == o.type && value == o.value;

  // TODO test
  int get hashCode => hash2(type.hashCode, value.hashCode);

  @override
  String toString() {
    final typeString = type == DartType.single
        ? 'single'
        : type == DartType.double
            ? 'double'
            : 'triple';
    return 'Dart{type: $typeString, value: $value}';
  }
}
