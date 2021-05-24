import 'dart:convert';

import 'package:social_client/packets/container.dart';
import 'package:social_client/packets/outgoing/request_packet.dart';
import 'package:social_client/social_client.dart';

class JsonEncoder {
  static String encode(RequestPacket packet) {
    String? type;

    if (packet is AddFriendPacket) {
      type = 'addFriend';
    } else if (packet is RemoveFriendPacket) {
      type = 'removeFriend';
    } 

    if (type == null) throw Error(); // happens only if new packet type is not added to this method
    Container container = Container(type, packet);
    return jsonEncode(container);
  }
}


