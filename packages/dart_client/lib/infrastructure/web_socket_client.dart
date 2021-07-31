import 'dart:async';
import 'dart:io';

abstract class IWebSocketClient {
  Stream<String> get received;

  Future<bool> connect();

  Future<bool> disconnect();

  void send({
    required String json,
  });
}

class WebSocketClient implements IWebSocketClient {
  final String host;
  final int port;

  WebSocket? _webSocket;

  final StreamController<String> _dataController = StreamController();

  WebSocketClient({
    required this.host,
    required this.port,
  });

  @override
  Stream<String> get received => _dataController.stream;

  @override
  Future<bool> connect() async {
    bool connected = false;

    try {
      _webSocket = await WebSocket.connect('ws://$host:$port/');
      _webSocket?.pingInterval = Duration(seconds: 5);
      connected = true;
      _webSocket?.listen((data) {
        _dataController.add(data as String);
      });
      print('Connected to -- ws://$host:$port/');
    } catch (e) {
      print('Connection failed! -- ws://$host:$port/ not reachable');
    }
    return connected;
  }

  @override
  Future<bool> disconnect() async {
    await _webSocket?.close();
    _webSocket = null;
    print('Disconnected from -- ws://$host:$port/');
    return true;
  }

  @override
  void send({
    required String json,
  }) {
    if (_webSocket != null) {
      _webSocket?.add(json);
      print('Sent $json');
    } else {
      print("Couldn't send message! -- Not connected to a Server");
    }
  }
}
