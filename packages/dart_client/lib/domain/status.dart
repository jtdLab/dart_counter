import 'package:freezed_annotation/freezed_annotation.dart';

enum Status {
  @JsonValue('pending')
  pending,
  @JsonValue('running')
  running,
  @JsonValue('canceled')
  canceled,
  @JsonValue('finished')
  finished,
}
