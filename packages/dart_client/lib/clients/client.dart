import 'dart:async';
import 'dart:convert';

import 'package:dart_client/domain/game_snapshot.dart';
import 'package:dart_client/domain/mode.dart';
import 'package:dart_client/domain/throw.dart';
import 'package:dart_client/domain/type.dart';
import 'package:dart_client/infrastructure/game_snapshot_dto.dart';
import 'package:dart_client/infrastructure/socket_io_client.dart';
import 'package:dart_client/infrastructure/throw_dto.dart';
import 'package:http/http.dart' as http;

import 'i_client.dart';

// TODO emit more events currently only emitting gamesnaphots

class Client implements IClient {
  final String host;
  final int port;

  final SocketIoClient _socketIoClient;

  String? _token;
  String? _gameId;

  Map<String, String> get _headers =>
      {'Content-Type': 'application/json', 'Authorization': 'Bearer $_token'};

  Uri get _authEndpoint =>
      Uri.parse('http://$host:$port/authentication/${(_token ?? '')}');

  Uri _gameEndpoint({String? gameId}) => Uri.parse(
        'http://$host:$port/games/${(gameId ?? _gameId ?? '')}',
      );

  final StreamController<GameSnapshot> _gameController;

  Client({
    required this.host,
    required this.port,
  })   : this._socketIoClient = SocketIoClient(host: host, port: port),
        _gameController = StreamController.broadcast() {
    _socketIoClient.received.listen((jsonString) {
      _gameController.add(
        GameSnapshotDto.fromJson(jsonDecode(jsonString)).toDomain(),
      );
    });
  }

  @override
  Future<bool> cancelGame() async {
    _checkAuthenticated();
    _checkMemberOfGame();

    final res = await http.delete(
      _gameEndpoint(),
      headers: _headers,
    );

    print('### Client ### ${res.body}');

    return res.statusCode == 200;
  }

  @override
  Future<bool> connect({
    required String idToken,
  }) async {
    final res = await http.post(
      _authEndpoint,
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'strategy': 'firebase',
        'access_token': idToken,
      }),
    );

    print('### Client ### ${res.body}');

    try {
      if (res.statusCode == 201) {
        _token = jsonDecode(res.body)['accessToken'] as String;
        print('JWT: $_token');
        return true;
      }
    } on Error {}

    return false;
  }

  @override
  Future<bool> createGame() async {
    _checkAuthenticated();

    final res = await http.post(
      _gameEndpoint(),
      headers: _headers,
    );

    print('### Client ### ${res.body}');

    try {
      if (res.statusCode == 201) {
        // get game id from server response
        _gameId = jsonDecode(res.body)['id'] as String;
      }
    } on Error {}

    // try to connect to realtime service
    final successful = await _joinGameRoom(initialGameSnapshotJson: res.body);
    // when couldnt connect to realtime service
    if (!successful) {
      // leave the game client side
      _gameId = null;
    }
    return successful;
  }

  @override
  Future<bool> disconnect() async {
    _checkAuthenticated();

    final res = await http.delete(
      _authEndpoint,
      headers: _headers,
    );

    print('### Client ### ${res.body}');

    if (res.statusCode == 200) {
      _token = null;
      _gameId = null;
      _socketIoClient.disconnect();
      return true;
    }
    return false;
  }

  @override
  Future<bool> invitePlayer({
    required String uid,
  }) {
    // TODO: implement invitePlayer
    throw UnimplementedError();
  }

  @override
  Future<bool> joinGame({
    required String gameId,
  }) async {
    _checkAuthenticated();

    final res = await http.patch(
      _gameEndpoint(gameId: gameId),
      headers: _headers,
      body: jsonEncode({
        'method': 'joinGame',
      }),
    );

    print('### Client ### ${res.body}');

    if (res.statusCode == 200) {
      _gameId = gameId;

      // try to connect to realtime service
      final successful = await _joinGameRoom(initialGameSnapshotJson: res.body);
      // when couldnt connect to realtime service
      if (!successful) {
        // leave the game client side
        _gameId = null;
      }
      return successful;
    }

    return false;
  }

  @override
  Future<bool> performThrow({
    required Throw t,
  }) async {
    _checkAuthenticated();
    _checkMemberOfGame();

    final res = await http.patch(
      _gameEndpoint(),
      headers: _headers,
      body: jsonEncode({
        'method': 'performThrow',
        'args': {
          't': ThrowDto.fromDomain(t).toJson(),
        },
      }),
    );

    print('### Client ### ${res.body}');

    return res.statusCode == 200;
  }

  @override
  Future<bool> removePlayer({
    required int index,
  }) async {
    _checkAuthenticated();
    _checkMemberOfGame();

    final res = await http.patch(
      _gameEndpoint(),
      headers: _headers,
      body: jsonEncode({
        'method': 'removePlayer',
        'args': {
          'index': index,
        }
      }),
    );

    print('### Client ### ${res.body}');

    return res.statusCode == 200;
  }

  @override
  Future<bool> reorderPlayer({
    required int oldIndex,
    required int newIndex,
  }) async {
    _checkAuthenticated();
    _checkMemberOfGame();

    final res = await http.patch(
      _gameEndpoint(),
      headers: _headers,
      body: jsonEncode({
        'method': 'reorderPlayer',
        'args': {
          'oldIndex': oldIndex,
          'newIndex': newIndex,
        }
      }),
    );

    print('### Client ### ${res.body}');

    return res.statusCode == 200;
  }

  @override
  Future<bool> setMode({
    required Mode mode,
  }) async {
    _checkAuthenticated();
    _checkMemberOfGame();

    final res = await http.patch(
      _gameEndpoint(),
      headers: _headers,
      body: jsonEncode({
        'method': 'updateMode',
        'args': {
          'mode': mode == Mode.firstTo ? 'firstTo' : 'bestOf',
        }
      }),
    );

    print('### Client ### ${res.body}');

    return res.statusCode == 200;
  }

  @override
  Future<bool> setSize({
    required int size,
  }) async {
    _checkAuthenticated();
    _checkMemberOfGame();

    final res = await http.patch(
      _gameEndpoint(),
      headers: _headers,
      body: jsonEncode({
        'method': 'updateSize',
        'args': {
          'size': size,
        }
      }),
    );

    print('### Client ### ${res.body}');

    return res.statusCode == 200;
  }

  @override
  Future<bool> setStartingPoints({
    required int startingPoints,
  }) async {
    _checkAuthenticated();
    _checkMemberOfGame();

    final res = await http.patch(
      _gameEndpoint(),
      headers: _headers,
      body: jsonEncode({
        'method': 'updateStartingPoints',
        'args': {
          'startingPoints': startingPoints,
        }
      }),
    );

    print('### Client ### ${res.body}');

    return res.statusCode == 200;
  }

  @override
  Future<bool> setType({
    required Type type,
  }) async {
    _checkAuthenticated();
    _checkMemberOfGame();

    final res = await http.patch(
      _gameEndpoint(),
      headers: _headers,
      body: jsonEncode({
        'method': 'updateType',
        'args': {
          'type': type == Type.legs ? 'legs' : 'sets',
        }
      }),
    );

    print('### Client ### ${res.body}');

    return res.statusCode == 200;
  }

  @override
  Future<bool> startGame() async {
    _checkAuthenticated();
    _checkMemberOfGame();

    final res = await http.patch(
      _gameEndpoint(),
      headers: _headers,
      body: jsonEncode({
        'method': 'startGame',
      }),
    );

    print('### Client ### ${res.body}');

    return res.statusCode == 200;
  }

  @override
  Future<bool> undoThrow() async {
    _checkAuthenticated();
    _checkMemberOfGame();

    final res = await http.patch(
      _gameEndpoint(),
      headers: _headers,
      body: jsonEncode({
        'method': 'undoThrow',
      }),
    );

    print('### Client ### ${res.body}');

    return res.statusCode == 200;
  }

  @override
  Stream<GameSnapshot> watchGame() {
    return _gameController.stream;
  }

  _checkAuthenticated() {
    if (_token == null) {
      return throw Exception('You are not authenticated - Authenticate first');
    }
  }

  _checkMemberOfGame() {
    if (_gameId == null) {
      return throw Exception(
          'You are not part of a game - Create or join one first');
    }
  }

  Future<bool> _joinGameRoom({
    required String initialGameSnapshotJson,
  }) async {
    // add initial gameSnapshot to gameStream
    final gameSnapshotDto =
        GameSnapshotDto.fromJson(jsonDecode(initialGameSnapshotJson));
    _gameController.add(gameSnapshotDto.toDomain());

    // connect to realtime game lobby and start listening for future gameSnapshots
    return await _socketIoClient.connect(
      token: _token!,
    );
  }
}
