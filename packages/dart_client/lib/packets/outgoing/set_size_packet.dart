part of dart_client;

class SetSizePacket extends RequestPacket {
  final int size;

  SetSizePacket(this.size);

  @override
  Map<String, dynamic> toJson() {
    return {
      'size': size,
    };
  }
}
