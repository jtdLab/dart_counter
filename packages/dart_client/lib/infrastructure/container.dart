import 'package:dart_client/infrastructure/packets/incoming/auth_response_packet.dart';
import 'package:dart_client/infrastructure/packets/incoming/player_exited_packet.dart';
import 'package:dart_client/infrastructure/packets/incoming/player_joined_packet.dart';
import 'package:dart_client/infrastructure/packets/outgoing/auth_request_packet.dart';
import 'package:dart_client/infrastructure/packets/outgoing/cancel_game_packet.dart';
import 'package:dart_client/infrastructure/packets/outgoing/create_game_packet.dart';
import 'package:dart_client/infrastructure/packets/outgoing/invite_to_game_packet.dart';

import 'package:dart_client/infrastructure/packets/outgoing/join_game_packet.dart';
import 'package:dart_client/infrastructure/packets/outgoing/perform_throw_packet.dart';
import 'package:dart_client/infrastructure/packets/outgoing/remove_player_packet.dart';
import 'package:dart_client/infrastructure/packets/outgoing/reorder_player_packet.dart';
import 'package:dart_client/infrastructure/packets/outgoing/set_mode_packet.dart';
import 'package:dart_client/infrastructure/packets/outgoing/set_size_packet.dart';
import 'package:dart_client/infrastructure/packets/outgoing/set_starting_points_packet.dart';
import 'package:dart_client/infrastructure/packets/outgoing/set_type_packet.dart';
import 'package:dart_client/infrastructure/packets/outgoing/start_game_packet.dart';
import 'package:dart_client/infrastructure/packets/outgoing/undo_throw_packet.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'packets/incoming/create_game_response_packet.dart';
import 'packets/incoming/snapshot_packet.dart';
import 'packets/packet.dart';

part 'container.freezed.dart';

@freezed
class Container with _$Container {
  const factory Container({
    required int timestamp,
    required String payloadType,
    Packet? payload,
  }) = _Container;

  const Container._();

  factory Container.fromPacket({
    required Packet packet,
  }) {
    return Container(
      timestamp: DateTime.now().millisecondsSinceEpoch,
      payloadType: _payloadTypeOf(packet),
      payload: packet,
    );
  }

  static String _payloadTypeOf(Packet packet) {
    if (packet is AuthRequestPacket) {
      return Packet.authRequest;
    } else if (packet is CancelGamePacket) {
      return Packet.cancelGame;
    } else if (packet is CreateGamePacket) {
      return Packet.createGame;
    } else if (packet is InviteToGamePacket) {
      return Packet.inviteToGame;
    } else if (packet is JoinGamePacket) {
      return Packet.joinGame;
    } else if (packet is PerformThrowPacket) {
      return Packet.performThrow;
    } else if (packet is RemovePlayerPacket) {
      return Packet.removePlayer;
    } else if (packet is ReorderPlayerPacket) {
      return Packet.reorderPlayer;
    } else if (packet is SetModePacket) {
      return Packet.setMode;
    } else if (packet is SetSizePacket) {
      return Packet.setSize;
    } else if (packet is SetStartingPointsPacket) {
      return Packet.setStartingPoints;
    } else if (packet is SetTypePacket) {
      return Packet.setType;
    } else if (packet is StartGamePacket) {
      return Packet.startGame;
    } else if (packet is UndoThrowPacket) {
      return Packet.undoThrow;
    } else {
      // no request packet
      throw Error();
    }
  }

  factory Container.fromJson(Map<String, dynamic> json) {
    final timestamp = 888; //json['timestamp'] as int; TODO
    final payloadType = json['payloadType'] as String;
    final Map<String, dynamic> payloadJson =
        json['payload'] as Map<String, dynamic>;

    Container container = Container(
      timestamp: timestamp,
      payloadType: payloadType,
    );

    switch (payloadType) {
      case Packet.authResponse:
        return container.copyWith(
          payload: AuthResponsePacket.fromJson(payloadJson) as Packet,
        );
      case Packet.createGameResponse:
        return container.copyWith(
          payload: CreateGameResponsePacket.fromJson(payloadJson) as Packet,
        );
      case Packet.playerExited:
        return container.copyWith(
          payload: PlayerExitedPacket.fromJson(payloadJson) as Packet,
        );
      case Packet.playerJoined:
        return container.copyWith(
          payload: PlayerJoinedPacket.fromJson(payloadJson) as Packet,
        );
      case Packet.snapshot:
        return container.copyWith(
          payload: SnapshotPacket.fromJson(payloadJson) as Packet,
        );
      default:
        // invalid payload type
        throw Error();
    }
  }

  Map<String, dynamic> toJson() {
    final json = {
      'timestamp': timestamp,
      'payloadType': payloadType,
      'payload': null,
    };

    if (payload != null) {
      switch (payloadType) {
        case Packet.authRequest:
          json['payload'] = (payload as AuthRequestPacket).toJson();
          break;
        case Packet.cancelGame:
          json['payload'] = (payload as CancelGamePacket).toJson();
          break;
        case Packet.createGame:
          json['payload'] = (payload as CreateGamePacket).toJson();
          break;
        case Packet.inviteToGame:
          json['payload'] = (payload as InviteToGamePacket).toJson();
          break;
        case Packet.joinGame:
          json['payload'] = (payload as JoinGamePacket).toJson();
          break;
        case Packet.performThrow:
          json['payload'] = (payload as PerformThrowPacket).toJson();
          break;
        case Packet.removePlayer:
          json['payload'] = (payload as RemovePlayerPacket).toJson();
          break;
        case Packet.reorderPlayer:
          json['payload'] = (payload as ReorderPlayerPacket).toJson();
          break;
        case Packet.setMode:
          json['payload'] = (payload as SetModePacket).toJson();
          break;
        case Packet.setSize:
          json['payload'] = (payload as SetSizePacket).toJson();
          break;
        case Packet.setStartingPoints:
          json['payload'] = (payload as SetStartingPointsPacket).toJson();
          break;
        case Packet.setType:
          json['payload'] = (payload as SetTypePacket).toJson();
          break;
        case Packet.startGame:
          json['payload'] = (payload as StartGamePacket).toJson();
          break;
        case Packet.undoThrow:
          json['payload'] = (payload as UndoThrowPacket).toJson();
          break;
        default:
          // invalid payload type
          throw Error();
      }
    }

    return json;
  }
}
