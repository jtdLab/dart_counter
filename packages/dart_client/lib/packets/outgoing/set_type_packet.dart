part of dart_client;

class SetTypePacket extends RequestPacket {
  final Type type;

  SetTypePacket(this.type);

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type == Type.legs ? 'legs' : 'sets',
    };
  }
}
