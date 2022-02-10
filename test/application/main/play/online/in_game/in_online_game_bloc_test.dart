import 'package:dart_counter/application/main/play/offline/in_game/in_offline_game_bloc.dart';
import 'package:dart_counter/application/main/play/online/in_game/in_online_game_bloc.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockPlayOnlineService extends Mock implements IPlayOnlineService {}

void main() {
  late MockPlayOnlineService playOnlineService;

  setUpAll(() {
    playOnlineService = MockPlayOnlineService();
  });

  test('Is subclass of InGameBloc and takes IPlayOnlineService as a param.',
      () {
    final underTest = InOnlineGameBloc(playOnlineService);

    expect(underTest, isA<InGameBloc>());
  });
}
