part of dart_client;

class SetModePacket extends RequestPacket {
  final Mode mode;

  SetModePacket(this.mode);

  @override
  Map<String, dynamic> toJson() {
    return {
      'mode': mode == Mode.firstTo ? 'firstTo' : 'bestOf',
    };
  }
}
