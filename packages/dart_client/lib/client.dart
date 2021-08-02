import 'dart:async';
import 'dart:convert';

import 'package:dart_client/domain/game_snapshot.dart';
import 'package:dart_client/domain/throw.dart';
import 'package:dart_client/domain/type.dart';
import 'package:dart_client/infrastructure/packets/incoming/create_game_response_packet.dart';
import 'package:dart_client/infrastructure/packets/packet.dart';

import 'domain/mode.dart';
import 'infrastructure/container.dart';
import 'infrastructure/packets/incoming/response_packet.dart';
import 'infrastructure/packets/incoming/snapshot_packet.dart';
import 'infrastructure/packets/outgoing/auth_request_packet.dart';
import 'infrastructure/packets/outgoing/cancel_game_packet.dart';
import 'infrastructure/packets/outgoing/create_game_packet.dart';
import 'infrastructure/packets/outgoing/invite_player_packet.dart';
import 'infrastructure/packets/outgoing/join_game_packet.dart';
import 'infrastructure/packets/outgoing/perform_throw_packet.dart';
import 'infrastructure/packets/outgoing/remove_player_packet.dart';
import 'infrastructure/packets/outgoing/reorder_player_packet.dart';
import 'infrastructure/packets/outgoing/request_packet.dart';
import 'infrastructure/packets/outgoing/set_mode_packet.dart';
import 'infrastructure/packets/outgoing/set_size_packet.dart';
import 'infrastructure/packets/outgoing/set_starting_points_packet.dart';
import 'infrastructure/packets/outgoing/set_type_packet.dart';
import 'infrastructure/packets/outgoing/start_game_packet.dart';
import 'infrastructure/packets/outgoing/undo_throw_packet.dart';
import 'infrastructure/throw_dto.dart';
import 'infrastructure/web_socket_client.dart';

abstract class IDartClient {
  // TODO define better interface
  Stream<ResponsePacket> get received;

  Stream<GameSnapshot> watchGame();

  Future<bool> connect({
    required String idToken,
  });

  Future<bool> disconnect();

  void createGame();

  void joinGame({
    required int gameCode,
  });

  void invitePlayer({
    required String uid,
  });

  void reorderPlayer({
    required int oldIndex,
    required int newIndex,
  });

  void removePlayer({
    required int index,
  });

  void setStartingPoints({
    required int startingPoints,
  });

  void setMode({
    required Mode mode,
  });

  void setSize({
    required int size,
  });

  void setType({
    required Type type,
  });

  void startGame();

  void cancelGame();

  void performThrow({
    required Throw t,
  });

  void undoThrow();
}

// TODO implement tests
class DartClient implements IDartClient {
  final WebSocketClient _webSocketClient;

  final StreamController<GameSnapshot> _gameController;

  DartClient({
    required String host,
    required int port,
  })   : this._webSocketClient = WebSocketClient(host: host, port: port),
        _gameController = StreamController();

  @override
  Stream<ResponsePacket> get received =>
      throw UnimplementedError(); // TODO implement

  @override
  Stream<GameSnapshot> watchGame() {
    return _gameController.stream;
  }

  @override
  Future<bool> connect({
    required String idToken,
  }) async {
    final connected = await _webSocketClient.connect();
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
      _sendPacket(
        packet: AuthRequestPacket(idToken: idToken) as RequestPacket,
      );
    }
    return connected;
    // TODO get auth result and return bool if authentication successful
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
    required int gameCode,
  }) {
    _sendPacket(
      packet: JoinGamePacket(gameCode: gameCode) as RequestPacket,
    );
  }

  @override
  void invitePlayer({
    required String uid,
  }) {
    _sendPacket(
      packet: InvitePlayerPacket(uid: uid) as RequestPacket,
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
