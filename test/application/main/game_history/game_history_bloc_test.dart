import 'package:dart_counter/application/main/game_history/game_history_bloc.dart';
import 'package:dart_counter/domain/game_history/i_game_history_service.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockUserService extends Mock implements IUserService {}

class MockGameHistoryService extends Mock implements IGameHistoryService {}

void main() {
  late MockUserService mockUserService;
  late MockGameHistoryService mockGameHistoryService;

  setUp(() {
    mockUserService = MockUserService();
    mockGameHistoryService = MockGameHistoryService();
  });

  test('initial state is TODO', () {
    // Arrange & Act
    final underTest = GameHistoryBloc(
      mockUserService,
      mockGameHistoryService,
    );

    // Assert
    expect(
      underTest.state,
      null, // TODO
    );
  });

  group('FetchGameHistoryAllRequested', () {
    // TODO implement tests
  });

  group('FetchGameHistoryOfflineRequested', () {
    // TODO implement tests
  });

  group('FetchGameHistoryOnlineRequested', () {
    // TODO implement tests
  });

  group('GameSelected', () {
    // TODO implement tests
  });
}
