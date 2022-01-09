import 'package:freezed_annotation/freezed_annotation.dart';

enum Mode {
  @JsonValue('firstTo')
  firstTo,
  @JsonValue('bestOf')
  bestOf,
}
