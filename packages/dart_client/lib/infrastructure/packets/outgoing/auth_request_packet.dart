import 'package:freezed_annotation/freezed_annotation.dart';

import 'request_packet.dart';

part 'auth_request_packet.freezed.dart';
part 'auth_request_packet.g.dart';

@freezed
class AuthRequestPacket with _$AuthRequestPacket {
  @Implements(RequestPacket)
  const factory AuthRequestPacket({
    required String idToken,
  }) = _AuthRequestPacket;

  const AuthRequestPacket._();

  factory AuthRequestPacket.fromJson(Map<String, dynamic> json) =>
      _$AuthRequestPacketFromJson(json);
}
