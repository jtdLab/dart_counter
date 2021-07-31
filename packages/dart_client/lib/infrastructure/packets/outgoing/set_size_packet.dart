import 'package:freezed_annotation/freezed_annotation.dart';

import 'request_packet.dart';

part 'set_size_packet.freezed.dart';
part 'set_size_packet.g.dart';

@freezed
class SetSizePacket with _$SetSizePacket {
  @Implements(RequestPacket)
  const factory SetSizePacket({
    required int size,
  }) = _SetSizePacket;

  const SetSizePacket._();

  factory SetSizePacket.fromJson(Map<String, dynamic> json) =>
      _$SetSizePacketFromJson(json);
}
