part of dart_client;

class SnapshotPacket extends ResponsePacket {
  final GameSnapshot gameSnapshot;

  SnapshotPacket.fromJson(Map<String, dynamic> json)
      : gameSnapshot = GameSnapshot.fromJson(json['gameSnapshot']);
}

class GameSnapshot {
  late final Status status;
  late final GameConfig config;
  late final List<PlayerSnapshot> players;

  GameSnapshot.fromJson(Map<String, dynamic> json) {
    status = _statusFromJson(json['status']);
    config = GameConfig.fromJson(json['config']);
    Iterable l = json['players'];
    players = List<PlayerSnapshot>.from(l.map(
      (playerJson) {
       
        return PlayerSnapshot.fromJson(playerJson);
      }
    ));
  }

  Status _statusFromJson(String json) {
    return json == 'pending'
        ? Status.pending
        : json == 'running'
            ? Status.running
            : json == 'canceled'
                ? Status.canceled
                : Status.finished;
  }
}

class GameConfig {
  late final Mode mode;
  late final Type type;
  late final int size;
  late final int startingPoints;

  GameConfig.fromJson(Map<String, dynamic> json) {
    mode = _modeFromJson(json['mode']);
    type = _typeFromJson(json['type']);
    size = json['size'];
    startingPoints = json['startingPoints'];
  }

  Mode _modeFromJson(String json) {
    return json == 'firstTo' ? Mode.firstTo : Mode.bestOf;
  }

  Type _typeFromJson(String json) {
    return json == 'legs' ? Type.legs : Type.sets;
  }
}

class PlayerSnapshot {
  late final String name;
  late final bool isNext;
  late final int? lastThrow;
  late final int pointsLeft;
  late final int dartsThrown;
  late final int? sets;
  late final int legs;
  late final String? average;
  late final int? firstNine;
  late final int fourtyPlus;
  late final int sixtyPlus;
  late final int eightyPlus;
  late final int hundredPlus;
  late final int hundredTwentyPlus;
  late final int hundredFourtyPlus;
  late final int hundredSixtyPlus;
  late final int hundredEighty;

  PlayerSnapshot.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    isNext = json['isNext'];
    lastThrow = json['lastThrow'];
    pointsLeft = json['pointsLeft'];
    dartsThrown = json['dartsThrown'];
    sets = json['sets'];
    legs = json['legs'];
    average = json['average'];
    firstNine = json['firstNine'];
    fourtyPlus = json['fourtyPlus'];
    sixtyPlus = json['sixtyPlus'];
    eightyPlus = json['eightyPlus'];
    hundredPlus = json['hundredPlus'];
    hundredTwentyPlus = json['hundredTwentyPlus'];
    hundredFourtyPlus = json['hundredFourtyPlus'];
    hundredSixtyPlus = json['hundredSixtyPlus'];
    hundredEighty = json['hundredEighty'];
  }
}
