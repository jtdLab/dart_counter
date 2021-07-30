part of dart_client;

class AuthRequestPacket extends RequestPacket {
  final String idToken;

  AuthRequestPacket(this.idToken);

  @override
  Map<String, dynamic> toJson() {
    return {
      'idToken': idToken,
    };
  }
}
