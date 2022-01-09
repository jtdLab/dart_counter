import 'dart:async';
import 'dart:io';

class WebSocketClient {
  final String host;
  final int port;

  WebSocket? _webSocket;

  final StreamController<String> _dataController = StreamController.broadcast();

  WebSocketClient({
    required this.host,
    required this.port,
  });

  Stream<String> get received => _dataController.stream;

  Future<bool> connect({
    required String token,
    required String path,
  }) async {
    bool connected = false;

    try {
      _webSocket = await WebSocket.connect('ws://$host:$port/');
      _webSocket?.pingInterval = Duration(seconds: 5);
      connected = true;
      _webSocket?.listen((data) {
        _dataController.add(data as String);
        print('Received $data');
      });
      print('Connected to -- ws://$host:$port/');
    } catch (e) {
      print('Connection failed! -- ws://$host:$port/ not reachable');
    }
    return connected;
  }

  Future<bool> disconnect() async {
    await _webSocket?.close();
    _webSocket = null;
    print('Disconnected from -- ws://$host:$port/');
    return true;
  }

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
