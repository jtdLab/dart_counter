import 'package:freezed_annotation/freezed_annotation.dart';

import 'request_packet.dart';

part 'invite_to_game_packet.freezed.dart';
part 'invite_to_game_packet.g.dart';

@freezed
class InviteToGamePacket with _$InviteToGamePacket {
  @Implements<RequestPacket>()
  const factory InviteToGamePacket({
    required String uid,
  }) = _InviteToGamePacket;

  const InviteToGamePacket._();

  factory InviteToGamePacket.fromJson(Map<String, dynamic> json) =>
      _$InviteToGamePacketFromJson(json);
}
