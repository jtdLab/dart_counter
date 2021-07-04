part of dart_game;

class Dart {
  ///
  /// PUBLIC
  ///

  int get value => _value;
  DartType get type => _type;
  int get points => _points();

  Dart(this._type, this._value);

  ///
  /// PRIVATE
  ///

  int _value;
  DartType _type;

  int _points() {
    int multiplier;
    switch (type) {
      case DartType.s:
        multiplier = 1;
        break;
      case DartType.d:
        multiplier = 2;
        break;
      default:
        multiplier = 3;
    }

    return multiplier * value;
  }

  @override
  String toString() {
    return 'Leg{points: $value, type: $type, points: $points}';
  }
}
