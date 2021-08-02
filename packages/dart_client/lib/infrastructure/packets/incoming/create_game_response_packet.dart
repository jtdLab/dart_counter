import 'package:dart_client/infrastructure/game_dto.dart';
import 'package:dart_client/infrastructure/game_snapshot_dto.dart';
import 'package:dart_client/infrastructure/packets/incoming/response_packet.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_game_response_packet.freezed.dart';
part 'create_game_response_packet.g.dart';

@freezed
class CreateGameResponsePacket with _$CreateGameResponsePacket {
  @Implements(ResponsePacket)
  const factory CreateGameResponsePacket({
    required bool successful,
    GameSnapshotDto? snapshot,
  }) = _CreateGameResponsePacket;

  const CreateGameResponsePacket._();

  factory CreateGameResponsePacket.fromJson(Map<String, dynamic> json) =>
      _$CreateGameResponsePacketFromJson(json);
}



 
