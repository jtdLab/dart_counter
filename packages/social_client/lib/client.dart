part of social_client;

abstract class AbstractSocialClient {
  /// INTERFACE
  Stream<ResponsePacket> get received;

  Future<bool> connect();

  Future<bool> disconnect();

}

class SocialClient implements AbstractSocialClient {
  final WebSocketClient _webSocketClient;

  SocialClient(String host, int port)
      : this._webSocketClient = WebSocketClient(host, port);

  @override
  Stream<ResponsePacket> get received =>
      _webSocketClient.received.map((json) => JsonDecoder.decode(json));

  @override
  Future<bool> connect() async {
    return _webSocketClient.connect();
  }

  @override
  Future<bool> disconnect() async {
    return _webSocketClient.disconnect();
  }

  void addFriend(String uid) {
    _sendPacket(AddFriendPacket(uid));
  }

  void removeFriend(String uid) {
    _sendPacket(RemoveFriendPacket(uid));
  }

  void _sendPacket(RequestPacket packet) {
    _webSocketClient.send(JsonEncoder.encode(packet));
  }
}
