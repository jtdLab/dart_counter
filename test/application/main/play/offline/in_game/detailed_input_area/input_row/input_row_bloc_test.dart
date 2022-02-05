import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/play/offline/in_game/detailed_input_area/input_row/input_row_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/domain/play/offline/i_play_offline_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockPlayOfflineService extends Mock implements IPlayOfflineService {}

class MockDartsDisplayerBloc
    extends MockBloc<DartsDisplayerEvent, DartsDisplayerState>
    implements DartsDisplayerBloc {}

void main() {
  late MockPlayOfflineService playOfflineService;
  late MockDartsDisplayerBloc dartsDisplayerBloc;

  setUpAll(() {
    playOfflineService = MockPlayOfflineService();
    dartsDisplayerBloc = MockDartsDisplayerBloc();
  });

  test(
      'Is subclass of InputRowBloc and takes IPlayOfflineService and DartsDisplayerBloc as a param.',
      () {
    final underTest = InputRowBlocOfflineDetailedInputArea(
      playOfflineService,
      dartsDisplayerBloc,
    );

    expect(underTest, isA<InputRowBloc>());
  });
}
