// coverage:ignore-file

import 'package:freezed_annotation/freezed_annotation.dart';

part 'advanced_settings_failure.freezed.dart';

// TODO remove not needed failure types

/// All failures of the advanced settings domain.
@freezed
class AdvancedSettingsFailure with _$AdvancedSettingsFailure {
  const factory AdvancedSettingsFailure.unexpected() = _Unexpected;
  const factory AdvancedSettingsFailure.noNetworkAccess() = _NoNetworkAccess;
  const factory AdvancedSettingsFailure.insufficientPermission() =
      _InsufficientPermission;
  const factory AdvancedSettingsFailure.unableToRead() = _UnableToRead;
}
