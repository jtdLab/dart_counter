import 'package:dart_client/infrastructure/throw_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'request_packet.dart';

part 'perform_throw_packet.freezed.dart';
part 'perform_throw_packet.g.dart';

@freezed
class PerformThrowPacket with _$PerformThrowPacket {
  @Implements(RequestPacket)
  const factory PerformThrowPacket({
    required ThrowDto t,
  }) = _PerformThrowPacket;

  const PerformThrowPacket._();

  factory PerformThrowPacket.fromJson(Map<String, dynamic> json) =>
      _$PerformThrowPacketFromJson(json);
}
