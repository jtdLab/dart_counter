import 'package:freezed_annotation/freezed_annotation.dart';

import 'request_packet.dart';

part 'reorder_player_packet.freezed.dart';
part 'reorder_player_packet.g.dart';

@freezed
class ReorderPlayerPacket with _$ReorderPlayerPacket {
  @Implements(RequestPacket)
  const factory ReorderPlayerPacket({
    required int oldIndex,
    required int newIndex,
  }) = _ReorderPlayerPacket;

  const ReorderPlayerPacket._();

  factory ReorderPlayerPacket.fromJson(Map<String, dynamic> json) =>
      _$ReorderPlayerPacketFromJson(json);
}
