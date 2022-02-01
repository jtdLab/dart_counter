// coverage:ignore-file

import 'package:freezed_annotation/freezed_annotation.dart';

part 'play_failure.freezed.dart';

// TODO remove not needed failure types or add

@freezed
class PlayFailure with _$PlayFailure {
  const factory PlayFailure.error() = _Error;
}
