import 'package:dart_client/domain/game.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'request_packet.dart';

part 'set_type_packet.freezed.dart';
part 'set_type_packet.g.dart';

@freezed
class SetTypePacket with _$SetTypePacket {
  @Implements(RequestPacket)
  const factory SetTypePacket({
    required Type type,
  }) = _SetTypePacket;

  const SetTypePacket._();

  factory SetTypePacket.fromJson(Map<String, dynamic> json) =>
      _$SetTypePacketFromJson(json);
}
