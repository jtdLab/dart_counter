import 'package:social_client/packets/packet.dart';

class Container {
  final int timestamp;
  final String type;
  late final Packet? payload;

  Container(this.type, this.payload) :timestamp = DateTime.now().millisecondsSinceEpoch;

  Container.fromJson(Map<String, dynamic> json) :
    timestamp = json['timestamp'],
    type = json['type'] {
    payload = _payloadFromJsonString(json['payload']);
  }

  Map<String, dynamic> toJson() =>
      {'timestamp': timestamp, 'type': type, 'payload': payload};

  Packet? _payloadFromJsonString(json) {
    switch (type) {
      /** // TODO
       * case 'snapshot':
        return SnapshotPacket.fromJson(json);
      case 'playerJoined':
        return PlayerJoinedPacket.fromJson(json);
      case 'playerExited':
        return PlayerExitedPacket.fromJson(json);
       */
      default:
         return null;
    }
  }

  @override
  String toString() {
    return 'Container{timestamp: $timestamp, type: $type, payload: $payload}';
  }
}
