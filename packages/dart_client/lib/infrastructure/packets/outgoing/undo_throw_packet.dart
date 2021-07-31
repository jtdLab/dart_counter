import 'package:freezed_annotation/freezed_annotation.dart';

import 'request_packet.dart';

part 'undo_throw_packet.freezed.dart';
part 'undo_throw_packet.g.dart';

@freezed
class UndoThrowPacket with _$UndoThrowPacket {
  @Implements(RequestPacket)
  const factory UndoThrowPacket() = _UndoThrowPacket;

  const UndoThrowPacket._();

  factory UndoThrowPacket.fromJson(Map<String, dynamic> json) =>
      _$UndoThrowPacketFromJson(json);
}
