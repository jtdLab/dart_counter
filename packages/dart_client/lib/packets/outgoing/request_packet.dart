import 'package:dart_client/packets/packet.dart';

abstract class RequestPacket extends Packet {

  Map<String, dynamic> toJson();
}
