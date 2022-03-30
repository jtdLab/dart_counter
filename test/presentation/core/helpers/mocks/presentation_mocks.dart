import 'package:dart_counter/presentation/core/app_toast.dart';
import 'package:dart_counter/presentation/core/platform.dart';
import 'package:mocktail/mocktail.dart';

class MockPlatform extends Mock implements Platform {}

class MockAppToast extends Mock implements AppToast {}
