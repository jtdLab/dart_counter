import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/play/advanced_settings_failure.dart';
import 'package:dart_counter/domain/play/advanced_settings.dart';
import 'package:dart_counter/domain/play/i_advanced_settings_service.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Environment(Environment.test)
@Environment(Environment.prod)
@LazySingleton(as: IAdvancedSettingsService)
class AdvancedSettingsService implements IAdvancedSettingsService {
  @override
  Future<Either<AdvancedSettingsFailure, AdvancedSettings>> fetch() {
    // TODO: implement fetch
    throw UnimplementedError();
  }

  @override
  void update(AdvancedSettings newAdvancedSettings) {
    // TODO: implement update
  }
}
