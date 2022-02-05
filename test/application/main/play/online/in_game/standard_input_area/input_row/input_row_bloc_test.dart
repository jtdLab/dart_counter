import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/play/online/in_game/in_online_game_bloc.dart';
import 'package:dart_counter/application/main/play/online/in_game/standard_input_area/input_row/input_row_bloc.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDartUtils extends Mock implements IDartUtils {}

class MockPlayOnlineService extends Mock implements IPlayOnlineService {}

class MockInOnlineGameBloc extends MockBloc<InGameEvent, InGameState>
    implements InOnlineGameBloc {}

void main() {
  late MockDartUtils dartUtils;
  late MockPlayOnlineService playOnlineService;
  late MockInOnlineGameBloc inOnlineGameBloc;

  setUpAll(() {
    dartUtils = MockDartUtils();
    playOnlineService = MockPlayOnlineService();
    inOnlineGameBloc = MockInOnlineGameBloc();
  });

  test(
      'Is subclass of InputRowBloc and takes IDartUtils, IPlayOnlineService and InOfflineGameBloc as a param.',
      () {
    final underTest = InputRowBlocOnlineStandardInputArea(
      dartUtils,
      playOnlineService,
      inOnlineGameBloc,
    );

    expect(underTest, isA<InputRowBloc>());
  });
}
