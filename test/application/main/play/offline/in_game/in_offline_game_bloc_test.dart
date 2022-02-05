import 'package:dart_counter/application/main/play/offline/in_game/in_offline_game_bloc.dart';
import 'package:dart_counter/domain/play/offline/i_play_offline_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockPlayOfflineService extends Mock implements IPlayOfflineService {}

void main() {
  late MockPlayOfflineService playOfflineService;

  setUpAll(() {
    playOfflineService = MockPlayOfflineService();
  });

  test('Is subclass of InGameBloc and takes IPlayOfflineService as a param.',
      () {
    final underTest = InOfflineGameBloc(playOfflineService);

    expect(underTest, isA<InGameBloc>());
  });
}
