import 'package:freezed_annotation/freezed_annotation.dart';

import 'request_packet.dart';

part 'start_game_packet.freezed.dart';
part 'start_game_packet.g.dart';

@freezed
class StartGamePacket with _$StartGamePacket {
  @Implements(RequestPacket)
  const factory StartGamePacket() = _StartGamePacket;

  const StartGamePacket._();

  factory StartGamePacket.fromJson(Map<String, dynamic> json) =>
      _$StartGamePacketFromJson(json);
}
