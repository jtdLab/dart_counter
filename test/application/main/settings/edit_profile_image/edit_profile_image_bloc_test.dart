import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/settings/edit_profile_image/edit_profile_image_bloc.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockUserService extends Mock implements IUserService {}

void main() {
  setUpAll(() {
    // mocktail related setup
    registerFallbackValue(Username.empty());
  });

  late MockUserService mockUserService;

  setUp(() {
    mockUserService = MockUserService();
  });
  // TODO impl tests
  group('DeletePressed', () {
    blocTest<EditProfileImageBloc, void>(
      'Call deleteProfilePhoto.',
      setUp: () {
        when(() => mockUserService.deleteProfilePhoto()).thenAnswer(
          (_) async => right(unit),
        );
      },
      build: () => EditProfileImageBloc(mockUserService),
      act: (bloc) => bloc.add(const EditProfileImageEvent.deletePressed()),
      verify: (_) {
        verify(() => mockUserService.deleteProfilePhoto()).called(1);
      },
    );
  });

  group('TakePressed', () {
    // TODO test by mock imagepicking somehow
  });

  group('ChoosePressed', () {
    // TODO test by mock imagepicking somehow
  });
}
