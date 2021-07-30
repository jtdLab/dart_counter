import 'package:dart_client/dart_client.dart';
import 'package:dart_client/packets/outgoing/request_packet.dart';
import 'package:dart_client/packets/packet.dart';

class Container {
  final int timestamp;
  final String payloadType;
  late final Packet? payload;

  Container(this.payloadType, this.payload)
      : timestamp = DateTime.now().millisecondsSinceEpoch;

  Container.fromJson(Map<String, dynamic> json)
      : timestamp = 88888888, // TODO
        payloadType = json['payloadType'] {
    payload = _payloadFromJsonString(json['payload']);
  }

  Map<String, dynamic> toJson() => {
        'timestamp': timestamp,
        'payloadType': payloadType,
        'payload': (payload as RequestPacket).toJson(),
      };

  Packet? _payloadFromJsonString(json) {
    switch (payloadType) {
      case 'snapshot':
        return SnapshotPacket.fromJson(json);
      case 'playerJoined':
        return PlayerJoinedPacket.fromJson(json);
      case 'playerExited':
        return PlayerExitedPacket.fromJson(json);
      case 'createGameResponse':
        return CreateGameResponsePacket.fromJson(json);
      case 'authResponse':
        return AuthResponsePacket.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String toString() {
    return 'Container{timestamp: $timestamp, payloadType: $payloadType, payload: $payload}';
  }
}
