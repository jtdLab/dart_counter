part of dart_client;

class InvitePlayerPacket extends RequestPacket {
  final String uid;

  InvitePlayerPacket(this.uid);

  @override
  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
    };
  }
}
