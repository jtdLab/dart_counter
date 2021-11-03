import 'package:dart_client/infrastructure/packets/incoming/response_packet.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_response_packet.freezed.dart';
part 'auth_response_packet.g.dart';

@freezed
class AuthResponsePacket with _$AuthResponsePacket {
  @Implements<ResponsePacket>()
  const factory AuthResponsePacket({
    required bool successful,
  }) = _AuthResponsePacket;

  const AuthResponsePacket._();

  factory AuthResponsePacket.fromJson(Map<String, dynamic> json) =>
      _$AuthResponsePacketFromJson(json);
}
