/**
 * import 'dart:async';
import 'dart:convert';
import 'package:dart_client/infrastructure/game_snapshot_dto.dart';
import 'package:dart_client/infrastructure/web_socket_client.dart';
import 'package:http/http.dart' as http;

import 'package:dart_client/domain/game_snapshot.dart';
import 'package:dart_client/domain/throw.dart';
import 'package:dart_client/domain/type.dart';
import 'package:dart_client/infrastructure/packets/incoming/auth_response_packet.dart';
import 'package:dart_client/infrastructure/packets/incoming/create_game_response_packet.dart';
import 'package:dart_client/infrastructure/packets/outgoing/invite_to_game_packet.dart';
import 'package:dart_client/infrastructure/packets/packet.dart';

// TODO implement tests
class OldClient implements IClient {
  final WebSocketClient _webSocketClient;

  final StreamController<GameSnapshot> _gameController;

  JavaClient({
    required String host,
    required int port,
  })   : this._webSocketClient = WebSocketClient(host: host, port: port),
        _gameController = StreamController.broadcast();

  @override
  Stream<ResponsePacket> get received =>
      throw UnimplementedError(); // TODO implement

  @override
  Stream<GameSnapshot> watchGame() {
    return _gameController.stream;
  }

  // TODO impl cleaner
  @override
  Future<bool> connect({
    required String idToken,
  }) async {
    final connected =
        await _webSocketClient.connect(path: 'idToken', token: idToken); // TODO
    bool authed = false;
    if (connected) {
      _webSocketClient.received.listen((string) {
        try {
          Container container = Container.fromJson(
            jsonDecode(string) as Map<String, dynamic>,
          );
          _onContainerReceived(container: container);
        } on Error catch (_) {
          print('invalid container received');
        }
      });
      print(DateTime.now());
      _sendPacket(
        packet: AuthRequestPacket(idToken: idToken) as RequestPacket,
      );

      authed = await _waitForAuth();
      print(DateTime.now());
    }

    return authed;
  }

  @override
  Future<bool> disconnect() async {
    return _webSocketClient.disconnect();
  }

  @override
  void createGame() {
    _sendPacket(
      packet: CreateGamePacket() as RequestPacket,
    );
  }

  @override
  void joinGame({
    required String gameCode,
  }) {
    // TODO
    throw UnimplementedError();
  }

  @override
  void invitePlayer({
    required String uid,
  }) {
    _sendPacket(
      packet: InviteToGamePacket(uid: uid) as RequestPacket,
    );
  }

  @override
  void reorderPlayer({
    required int oldIndex,
    required int newIndex,
  }) {
    _sendPacket(
      packet: ReorderPlayerPacket(oldIndex: oldIndex, newIndex: newIndex)
          as RequestPacket,
    );
  }

  @override
  void removePlayer({
    required int index,
  }) {
    _sendPacket(
      packet: RemovePlayerPacket(index: index) as RequestPacket,
    );
  }

  @override
  void setStartingPoints({
    required int startingPoints,
  }) {
    _sendPacket(
      packet: SetStartingPointsPacket(startingPoints: startingPoints)
          as RequestPacket,
    );
  }

  @override
  void setMode({
    required Mode mode,
  }) {
    _sendPacket(
      packet: SetModePacket(mode: mode) as RequestPacket,
    );
  }

  @override
  void setSize({
    required int size,
  }) {
    _sendPacket(
      packet: SetSizePacket(size: size) as RequestPacket,
    );
  }

  @override
  void setType({
    required Type type,
  }) {
    _sendPacket(
      packet: SetTypePacket(type: type) as RequestPacket,
    );
  }

  @override
  void startGame() {
    _sendPacket(
      packet: StartGamePacket() as RequestPacket,
    );
  }

  @override
  void cancelGame() {
    _sendPacket(
      packet: CancelGamePacket() as RequestPacket,
    );
  }

  @override
  void performThrow({
    required Throw t,
  }) {
    _sendPacket(
      packet: PerformThrowPacket(
        t: ThrowDto.fromDomain(t),
      ) as RequestPacket,
    );
  }

  @override
  void undoThrow() {
    _sendPacket(
      packet: UndoThrowPacket() as RequestPacket,
    );
  }

  // TODO impl cleaner
  Future<bool> _waitForAuth() async {
    return _webSocketClient.received.firstWhere(
      (string) {
        try {
          Container container = Container.fromJson(
            jsonDecode(string) as Map<String, dynamic>,
          );
          if (container.payloadType == 'authResponse') {
            final authResponse = container.payload;
            if (authResponse != null) {
              if (authResponse is AuthResponsePacket) {
                return true;
              }
            }
          }
        } on Error catch (_) {
          print('invalid container received');
        }
        return false;
      },
    ).then(
      (string) {
        try {
          Container container = Container.fromJson(
            jsonDecode(string) as Map<String, dynamic>,
          );
          if (container.payloadType == 'authResponse') {
            final authResponse = container.payload;
            if (authResponse != null) {
              if (authResponse is AuthResponsePacket) {
                return (authResponse as AuthResponsePacket).successful;
              }
            }
          }
        } on Error catch (_) {
          print('invalid container received');
        }
        return false;
      },
    ).timeout(const Duration(milliseconds: 3000), onTimeout: () => false);
  }

  void _onContainerReceived({
    required Container container,
  }) {
    final payloadType = container.payloadType;

    switch (payloadType) {
      case Packet.authResponse:
        // TODO implement
        break;
      case Packet.createGameResponse:
        final game = (container.payload as CreateGameResponsePacket)
            .snapshot
            ?.toDomain();
        if (game != null) {
          _gameController.add(
            game,
          );
        }
        break;
      case Packet.inviteToGameResponse:
        // TODO implement
        break;
      case Packet.joinGameResponse:
        final game =
            (container.payload as JoinGameResponsePacket).snapshot?.toDomain();
        if (game != null) {
          _gameController.add(
            game,
          );
        }
        break;
      case Packet.playerExited:
        // TODO implement
        break;
      case Packet.playerJoined:
        // TODO implement
        break;
      case Packet.snapshot:
        _gameController.add(
          (container.payload as SnapshotPacket).snapshot.toDomain(),
        );
        break;
    }
  }

  void _sendPacket({required RequestPacket packet}) {
    _webSocketClient.send(
      json: jsonEncode(
        Container.fromPacket(
          packet: packet,
        ).toJson(),
      ),
    );
  }
}

 */