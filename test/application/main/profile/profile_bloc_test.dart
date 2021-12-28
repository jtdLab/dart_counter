import 'package:dart_counter/application/main/profile/profile_bloc.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockUserService extends Mock implements IUserService {}

void main() {
  late MockUserService mockUserService;

  setUp(() {
    mockUserService = MockUserService();
  });

  test('initial state is TODO', () {
    // Arrange & Act
    final underTest = ProfileBloc(
      mockUserService,
    );

    // Assert
    expect(
      underTest.state,
      null, // TODO
    );
  });

  group('UserReceived', () {
    // TODO implement tests
  });
}
