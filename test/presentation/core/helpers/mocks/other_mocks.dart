import 'package:dart_counter/presentation/core/core.dart';
import 'package:dart_counter/presentation/core/platform_router.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mocktail/mocktail.dart';

class MockPlatform extends Mock implements Platform {}

class MockRouter extends Mock implements PlatformRouter {}

class MockAppToast extends Mock implements AppToast {}

class MockPlatformApp extends PlatformApp {
  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
