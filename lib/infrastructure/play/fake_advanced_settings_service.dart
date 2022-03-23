import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/domain_error.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/play/advanced_settings.dart';
import 'package:dart_counter/domain/play/advanced_settings_failure.dart';
import 'package:dart_counter/domain/play/i_advanced_settings_service.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Environment(Environment.dev)
@LazySingleton(as: IAdvancedSettingsService)
class FakeAdvancedSettingsService implements IAdvancedSettingsService {
  static bool hasNetworkConnection = true;

  final IAuthService _authService;

  AdvancedSettings? _advancedSettings;

  FakeAdvancedSettingsService(
    this._authService,
  );

  @override
  Future<Either<AdvancedSettingsFailure, AdvancedSettings>> fetch() async {
    _checkAuth();

    if (hasNetworkConnection) {
      if (_advancedSettings == null) {
        _advancedSettings = AdvancedSettings.initial();
        return right(_advancedSettings!);
      }
    }

    return left(const AdvancedSettingsFailure.noNetworkAccess());
  }

  @override
  void update(AdvancedSettings newAdvancedSettings) {
    _checkAuth();

    _advancedSettings = newAdvancedSettings;
  }

  /// Throws [NotAuthenticatedError] if app-user is not signed in.
  void _checkAuth() {
    if (!_authService.isAuthenticated()) {
      throw NotAuthenticatedError();
    }
  }
}
