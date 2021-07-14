import 'package:freezed_annotation/freezed_annotation.dart';

part 'play_failure.freezed.dart';

@freezed
class PlayFailure with _$PlayFailure {
  const factory PlayFailure.error() = _Error;
}
