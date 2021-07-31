import 'package:freezed_annotation/freezed_annotation.dart';

import 'request_packet.dart';

part 'invite_player_packet.freezed.dart';
part 'invite_player_packet.g.dart';

@freezed
class InvitePlayerPacket with _$InvitePlayerPacket {
  @Implements(RequestPacket)
  const factory InvitePlayerPacket({
    required String uid,
  }) = _InvitePlayerPacket;

  const InvitePlayerPacket._();

  factory InvitePlayerPacket.fromJson(Map<String, dynamic> json) =>
      _$InvitePlayerPacketFromJson(json);
}
