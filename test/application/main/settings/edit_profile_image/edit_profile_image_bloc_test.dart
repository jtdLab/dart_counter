import 'dart:typed_data';

import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/settings/edit_profile_image/edit_profile_image_bloc.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mocktail/mocktail.dart';

class MockImagePicker extends Mock implements ImagePicker {}

class MockUserService extends Mock implements IUserService {}

void main() {
  late MockImagePicker mockImagePicker;
  late MockUserService mockUserService;

  setUpAll(() {
    // Mocktail related setup
    registerFallbackValue(Username.empty());
  });

  setUp(() {
    mockImagePicker = MockImagePicker();
    mockUserService = MockUserService();
  });
  group('#Constructors#', () {
    group('#GetIt#', () {
      test(
          'GIVEN EditProfileImageBloc is not registered inside getIt '
          'THEN throw error.', () {
        // Act & Assert
        expect(() => EditProfileImageBloc.getIt(), throwsA(anything));
      });

      test(
          'GIVEN EditProfileImageBloc is registered inside getIt '
          'THEN return the registered instance.', () {
        // Arrange
        final registeredInstance = EditProfileImageBloc(
          mockImagePicker,
          mockUserService,
        );
        getIt.registerFactoryParam((param1, _) => registeredInstance);

        // Act
        final underTest = EditProfileImageBloc.getIt();

        // Assert
        expect(underTest, registeredInstance);
      });

      tearDown(() async {
        await getIt.reset();
      });
    });
  });

  group('#Events#', () {
    final imageData = Uint8List.fromList([1, 2, 3]);

    group('#DeletePressed#', () {
      blocTest<EditProfileImageBloc, void>(
        'Call deleteProfilePhoto.',
        setUp: () {
          when(() => mockUserService.deleteProfilePhoto()).thenAnswer(
            (_) async => right(unit),
          );
        },
        build: () => EditProfileImageBloc(mockImagePicker, mockUserService),
        act: (bloc) => bloc.add(const EditProfileImageEvent.deletePressed()),
        verify: (_) {
          verify(() => mockUserService.deleteProfilePhoto()).called(1);
        },
      );
    });

    group('#TakePressed#', () {
      blocTest<EditProfileImageBloc, void>(
        'GIVEN user took no image '
        'THEN do nothing.',
        setUp: () {
          when(() => mockImagePicker.pickImage(source: ImageSource.camera))
              .thenAnswer(
            (_) async => null,
          );
        },
        build: () => EditProfileImageBloc(mockImagePicker, mockUserService),
        act: (bloc) => bloc.add(const EditProfileImageEvent.takePressed()),
        verify: (_) {
          verifyNever(
            () =>
                mockUserService.updateProfilePhoto(newPhotoData: Uint8List(0)),
          );
        },
      );

      blocTest<EditProfileImageBloc, void>(
        'GIVEN user took an image '
        'THEN call updateProfilePhoto with image data.',
        setUp: () {
          when(() =>
                  mockUserService.updateProfilePhoto(newPhotoData: imageData))
              .thenAnswer(
            (_) async => right(unit),
          );
          when(() => mockImagePicker.pickImage(source: ImageSource.camera))
              .thenAnswer(
            (_) async => XFile.fromData(imageData),
          );
        },
        build: () => EditProfileImageBloc(mockImagePicker, mockUserService),
        act: (bloc) => bloc.add(const EditProfileImageEvent.takePressed()),
        verify: (_) {
          verify(
            () => mockUserService.updateProfilePhoto(newPhotoData: imageData),
          ).called(1);
        },
      );
    });

    group('#ChoosePressed#', () {
      blocTest<EditProfileImageBloc, void>(
        'GIVEN user chose no image '
        'THEN do nothing.',
        setUp: () {
          when(() => mockImagePicker.pickImage(source: ImageSource.gallery))
              .thenAnswer(
            (_) async => null,
          );
        },
        build: () => EditProfileImageBloc(mockImagePicker, mockUserService),
        act: (bloc) => bloc.add(const EditProfileImageEvent.choosePressed()),
        verify: (_) {
          verifyNever(
            () =>
                mockUserService.updateProfilePhoto(newPhotoData: Uint8List(0)),
          );
        },
      );

      blocTest<EditProfileImageBloc, void>(
        'GIVEN user chose an image '
        'THEN call updateProfilePhoto with image data.',
        setUp: () {
          when(() =>
                  mockUserService.updateProfilePhoto(newPhotoData: imageData))
              .thenAnswer(
            (_) async => right(unit),
          );
          when(() => mockImagePicker.pickImage(source: ImageSource.gallery))
              .thenAnswer(
            (_) async => XFile.fromData(imageData),
          );
        },
        build: () => EditProfileImageBloc(mockImagePicker, mockUserService),
        act: (bloc) => bloc.add(const EditProfileImageEvent.choosePressed()),
        verify: (_) {
          verify(
            () => mockUserService.updateProfilePhoto(newPhotoData: imageData),
          ).called(1);
        },
      );
    });
  });
}
