library social_client;

import 'package:social_client/json/decoder.dart';
import 'package:social_client/json/encoder.dart';
import 'package:social_client/packets/incoming/response_packet.dart';
import 'package:social_client/packets/outgoing/request_packet.dart';
import 'package:social_client/web_socket_client.dart';

/// client
part 'client.dart';

/// enums
part 'enums/mode.dart';
part 'enums/type.dart';

/// ##### packets #####

/// incoming


/// outgoing
part 'packets/outgoing/add_friend_packet.dart';
part 'packets/outgoing/remove_friend_packet.dart';

