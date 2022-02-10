import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

part 'edit_profile_image_bloc.freezed.dart';
part 'edit_profile_image_event.dart';

@injectable
class EditProfileImageBloc extends Bloc<EditProfileImageEvent, void> {
  final ImagePicker _imagePicker;
  final IUserService _userService;

  EditProfileImageBloc(
    this._imagePicker,
    this._userService,
  ) : super(
          // Set initial state
          null,
        ) {
    // Register event handlers
    on<_DeletePressed>((_, __) => _handleDeletePressed());
    on<_TakePressed>((_, __) => _handleTakePressed());
    on<_ChoosePressed>((_, __) => _handleChoosePressed());
  }

  /// Handle incoming [_DeletePressed] event.
  void _handleDeletePressed() {
    // TODO await result ???
    _userService.deleteProfilePhoto();
  }

  /// Handle incoming [_TakePressed] event.
  Future<void> _handleTakePressed() async {
    final pickedFile = await _imagePicker.pickImage(source: ImageSource.camera);
    if (pickedFile == null) {
      return;
    }

    _userService.updateProfilePhoto(
      newPhotoData: await pickedFile.readAsBytes(),
    );
  }

  /// Handle incoming [_ChoosePressed] event.
  Future<void> _handleChoosePressed() async {
    final pickedFile =
        await _imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedFile == null) {
      return;
    }

    _userService.updateProfilePhoto(
      newPhotoData: await pickedFile.readAsBytes(),
    );
  }

  /**
  *  @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<EditProfileImageBloc>()) {
      getIt.resetLazySingleton<EditProfileImageBloc>();
    }

    return super.close();
  }
  */
}
