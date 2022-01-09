import 'package:freezed_annotation/freezed_annotation.dart';

import 'request_packet.dart';

part 'set_starting_points_packet.freezed.dart';
part 'set_starting_points_packet.g.dart';

@freezed
class SetStartingPointsPacket with _$SetStartingPointsPacket {
  @Implements<RequestPacket>()
  const factory SetStartingPointsPacket({
    required int startingPoints,
  }) = _SetStartingPointsPacket;

  const SetStartingPointsPacket._();

  factory SetStartingPointsPacket.fromJson(Map<String, dynamic> json) =>
      _$SetStartingPointsPacketFromJson(json);
}
