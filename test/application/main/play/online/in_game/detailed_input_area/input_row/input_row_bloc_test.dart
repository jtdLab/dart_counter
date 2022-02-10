import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/play/online/in_game/detailed_input_area/input_row/input_row_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockPlayOnlineService extends Mock implements IPlayOnlineService {}

class MockDartsDisplayerBloc
    extends MockBloc<DartsDisplayerEvent, DartsDisplayerState>
    implements DartsDisplayerBloc {}

void main() {
  late MockPlayOnlineService playOnlineService;
  late MockDartsDisplayerBloc dartsDisplayerBloc;

  setUpAll(() {
    playOnlineService = MockPlayOnlineService();
    dartsDisplayerBloc = MockDartsDisplayerBloc();
  });

  test(
      'Is subclass of InputRowBloc and takes IPlayOnlineService and DartsDisplayerBloc as a param.',
      () {
    final underTest = InputRowBlocOnlineDetailedInputArea(
      playOnlineService,
      dartsDisplayerBloc,
    );

    expect(underTest, isA<InputRowBloc>());
  });
}
