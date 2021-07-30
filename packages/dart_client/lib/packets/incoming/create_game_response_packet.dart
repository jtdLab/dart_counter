part of dart_client;

class CreateGameResponsePacket extends ResponsePacket {
  late final bool successful;
  late final GameSnapshot snapshot;

  CreateGameResponsePacket.fromJson(Map<String, dynamic> json) {
    successful = json['successful'];
    snapshot = GameSnapshot.fromJson(json['snapshot']);
  }
}

class AuthResponsePacket extends ResponsePacket {
  late final bool successful;

  AuthResponsePacket.fromJson(Map<String, dynamic> json) {
    successful = json['successful'];
  }
}
