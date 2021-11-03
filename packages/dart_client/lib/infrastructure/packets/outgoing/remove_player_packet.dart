import 'package:freezed_annotation/freezed_annotation.dart';

import 'request_packet.dart';

part 'remove_player_packet.freezed.dart';
part 'remove_player_packet.g.dart';

@freezed
class RemovePlayerPacket with _$RemovePlayerPacket {
  @Implements<RequestPacket>()
  const factory RemovePlayerPacket({
    required int index,
  }) = _RemovePlayerPacket;

  const RemovePlayerPacket._();

  factory RemovePlayerPacket.fromJson(Map<String, dynamic> json) =>
      _$RemovePlayerPacketFromJson(json);
}
