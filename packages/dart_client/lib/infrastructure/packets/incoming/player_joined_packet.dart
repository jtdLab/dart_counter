import 'package:dart_client/infrastructure/packets/incoming/response_packet.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_joined_packet.freezed.dart';
part 'player_joined_packet.g.dart';

@freezed
class PlayerJoinedPacket with _$PlayerJoinedPacket {
  @Implements<ResponsePacket>()
  const factory PlayerJoinedPacket({
    required String username,
  }) = _PlayerJoinedPacket;

  const PlayerJoinedPacket._();

  factory PlayerJoinedPacket.fromJson(Map<String, dynamic> json) =>
      _$PlayerJoinedPacketFromJson(json);
}
