import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/play/advanced_settings.dart';
import 'package:dart_counter/domain/play/advanced_settings_failure.dart';
import 'package:dartz/dartz.dart';

/// Domain service for all actions related to the advanced settings of the app-user.
abstract class IAdvancedSettingsService {
  /// Fetches the advanced settings of the app-user.
  ///
  /// Throws [NotAuthenticatedError] if the app-user is not signed in.
  Future<Either<AdvancedSettingsFailure, AdvancedSettings>> fetch();

  /// Updates the advanced settings of the app-user.
  ///
  /// Throws [NotAuthenticatedError] if the app-user is not signed in.
  void update(AdvancedSettings newAdvancedSettings);
}
