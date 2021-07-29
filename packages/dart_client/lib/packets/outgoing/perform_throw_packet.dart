part of dart_client;

class PerformThrowPacket extends RequestPacket {
  final int points;
  final int dartsThrown;
  final int dartsOnDouble;

  PerformThrowPacket(this.points, this.dartsThrown, this.dartsOnDouble);

  @override
  Map<String, dynamic> toJson() {
    return {
      'points': points,
      'dartsThrown': dartsThrown,
      'dartsOnDouble': dartsOnDouble,
    };
  }
}
