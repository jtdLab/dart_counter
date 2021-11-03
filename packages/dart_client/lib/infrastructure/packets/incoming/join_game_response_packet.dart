import 'package:dart_client/infrastructure/game_snapshot_dto.dart';
import 'package:dart_client/infrastructure/packets/incoming/response_packet.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'join_game_response_packet.freezed.dart';
part 'join_game_response_packet.g.dart';

@freezed
class JoinGameResponsePacket with _$JoinGameResponsePacket {
  @Implements<ResponsePacket>()
  const factory JoinGameResponsePacket({
    required bool successful,
    GameSnapshotDto? snapshot,
  }) = _JoinGameResponsePacket;

  const JoinGameResponsePacket._();

  factory JoinGameResponsePacket.fromJson(Map<String, dynamic> json) =>
      _$JoinGameResponsePacketFromJson(json);
}



 
