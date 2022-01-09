import 'package:dart_client/domain/mode.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'request_packet.dart';

part 'set_mode_packet.freezed.dart';
part 'set_mode_packet.g.dart';

@freezed
class SetModePacket with _$SetModePacket {
  @Implements<RequestPacket>()
  const factory SetModePacket({
    required Mode mode,
  }) = _SetModePacket;

  const SetModePacket._();

  factory SetModePacket.fromJson(Map<String, dynamic> json) =>
      _$SetModePacketFromJson(json);
}
