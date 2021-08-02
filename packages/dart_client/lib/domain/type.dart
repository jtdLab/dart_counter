import 'package:freezed_annotation/freezed_annotation.dart';

enum Type {
  @JsonValue('legs')
  legs,
  @JsonValue('sets')
  sets,
}