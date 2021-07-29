part of dart_client;

class JoinGamePacket extends RequestPacket {
  final int gameCode;

  JoinGamePacket(this.gameCode);

  @override
  Map<String, dynamic> toJson() {
    return {
      'gameCode': gameCode,
    };
  }
}
