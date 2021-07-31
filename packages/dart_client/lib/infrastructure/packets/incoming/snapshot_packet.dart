import 'package:dart_client/infrastructure/game_dto.dart';
import 'package:dart_client/infrastructure/packets/incoming/response_packet.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'snapshot_packet.freezed.dart';
part 'snapshot_packet.g.dart';

@freezed
class SnapshotPacket with _$SnapshotPacket {
  @Implements(ResponsePacket)
  const factory SnapshotPacket({
    required GameDto snapshot,
  }) = _SnapshotPacket;

  const SnapshotPacket._();

  factory SnapshotPacket.fromJson(Map<String, dynamic> json) =>
      _$SnapshotPacketFromJson(json);
}
