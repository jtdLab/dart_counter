import 'package:freezed_annotation/freezed_annotation.dart';

import 'request_packet.dart';

part 'join_game_packet.freezed.dart';
part 'join_game_packet.g.dart';

@freezed
class JoinGamePacket with _$JoinGamePacket {
  @Implements<RequestPacket>()
  const factory JoinGamePacket({
    required int gameCode,
  }) = _JoinGamePacket;

  const JoinGamePacket._();

  factory JoinGamePacket.fromJson(Map<String, dynamic> json) =>
      _$JoinGamePacketFromJson(json);
}
