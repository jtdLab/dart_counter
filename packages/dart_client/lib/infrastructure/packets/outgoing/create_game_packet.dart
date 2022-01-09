import 'package:freezed_annotation/freezed_annotation.dart';

import 'request_packet.dart';

part 'create_game_packet.freezed.dart';
part 'create_game_packet.g.dart';

@freezed
class CreateGamePacket with _$CreateGamePacket {
  @Implements<RequestPacket>()
  const factory CreateGamePacket() = _CreateGamePacket;

  const CreateGamePacket._();

  factory CreateGamePacket.fromJson(Map<String, dynamic> json) =>
      _$CreateGamePacketFromJson(json);
}
