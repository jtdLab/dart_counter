import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/play/offline/in_game/in_offline_game_bloc.dart';
import 'package:dart_counter/application/main/play/offline/in_game/standard_input_area/input_row/input_row_bloc.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dart_counter/domain/play/offline/i_play_offline_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDartUtils extends Mock implements IDartUtils {}

class MockPlayOfflineService extends Mock implements IPlayOfflineService {}

class MockInOfflineGameBloc extends MockBloc<InGameEvent, InGameState>
    implements InOfflineGameBloc {}

void main() {
  late MockDartUtils dartUtils;
  late MockPlayOfflineService playOfflineService;
  late MockInOfflineGameBloc inOfflineGameBloc;

  setUpAll(() {
    dartUtils = MockDartUtils();
    playOfflineService = MockPlayOfflineService();
    inOfflineGameBloc = MockInOfflineGameBloc();
  });

  test(
      'Is subclass of InputRowBloc and takes IDartUtils, IPlayOfflineService and InOfflineGameBloc as a param.',
      () {
    final underTest = InputRowBlocOfflineStandardInputArea(
      dartUtils,
      playOfflineService,
      inOfflineGameBloc,
    );

    expect(underTest, isA<InputRowBloc>());
  });
}
