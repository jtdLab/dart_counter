import 'package:freezed_annotation/freezed_annotation.dart';

import 'request_packet.dart';

part 'cancel_game_packet.freezed.dart';
part 'cancel_game_packet.g.dart';

@freezed
class CancelGamePacket with _$CancelGamePacket {
  @Implements<RequestPacket>()
  const factory CancelGamePacket() = _CancelGamePacket;

  const CancelGamePacket._();

  factory CancelGamePacket.fromJson(Map<String, dynamic> json) =>
      _$CancelGamePacketFromJson(json);
}
