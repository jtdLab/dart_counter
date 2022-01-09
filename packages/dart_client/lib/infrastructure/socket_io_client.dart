import 'dart:async';
import 'dart:convert';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class SocketIoClient {
  final String host;
  final int port;

  IO.Socket? socket;

  final StreamController<String> _dataController = StreamController.broadcast();

  SocketIoClient({
    required this.host,
    required this.port,
  });

  Future<bool> connect({
    required String token,
  }) async {
    print('### SocketIoClient ### Connecting to http://$host:$port ...');

    socket = IO.io(
      'http://$host:$port',
      IO.OptionBuilder()
          .setTransports(['websocket'])
          .disableAutoConnect()
          .setExtraHeaders({'Authorization': 'Bearer $token'})
          .build(),
    );

    Completer<bool> completer = Completer();

    socket?.onConnect((data) {
      print('### SocketIoClient ### Connection Successful');
      completer.complete(true);
    });

    socket?.onConnectError((data) {
      print('### SocketIoClient ### Connection Error');
      socket?.clearListeners();
      socket?.disconnect();
      socket?.close();
      completer.complete(false);
    });

    socket?.onConnectTimeout((data) {
      print('### SocketIoClient ### Connection Timeout');
      socket?.clearListeners();
      socket?.disconnect();
      socket?.close();
      completer.complete(false);
    });

    socket?.on(
      'games snapshot',
      (data) => _dataController.add(jsonEncode(data)),
    );

    // listen for other events here

    socket?.connect();

    return completer.future;
  }

  void disconnect() {
    socket?.dispose();
    socket = null;
  }

  Stream<String> get received => _dataController.stream;

}
