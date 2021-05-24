import 'dart:convert';

import 'package:social_client/packets/container.dart';
import 'package:social_client/packets/incoming/response_packet.dart';

class JsonDecoder {
  static ResponsePacket decode(String json) {
    return Container.fromJson(jsonDecode(json)).payload as ResponsePacket;
  }
}
