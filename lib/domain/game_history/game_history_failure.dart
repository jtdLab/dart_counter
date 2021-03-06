// coverage:ignore-file

import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_history_failure.freezed.dart';

// TODO remove not needed failure types

/// All failures of the game history domain.
@freezed
class GameHistoryFailure with _$GameHistoryFailure {
  const factory GameHistoryFailure.unexpected() = _Unexpected;
  const factory GameHistoryFailure.noNetworkAccess() = _NoNetworkAccess;
  const factory GameHistoryFailure.insufficientPermission() =
      _InsufficientPermission;
  const factory GameHistoryFailure.unableToRead() = _UnableToRead;
}
