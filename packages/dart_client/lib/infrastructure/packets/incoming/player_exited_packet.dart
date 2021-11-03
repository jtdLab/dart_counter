import 'package:dart_client/infrastructure/packets/incoming/response_packet.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_exited_packet.freezed.dart';
part 'player_exited_packet.g.dart';

@freezed
class PlayerExitedPacket with _$PlayerExitedPacket {
  @Implements<ResponsePacket>()
  const factory PlayerExitedPacket({
    required String username,
  }) = _PlayerExitedPacket;

  const PlayerExitedPacket._();

  factory PlayerExitedPacket.fromJson(Map<String, dynamic> json) =>
      _$PlayerExitedPacketFromJson(json);
}
