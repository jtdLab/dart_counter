part of dart_client;

class RemovePlayerPacket extends RequestPacket {
  final int index;

  RemovePlayerPacket(this.index);
}
