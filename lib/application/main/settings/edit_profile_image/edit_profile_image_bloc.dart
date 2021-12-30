import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/core/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart'; // TODO should this be in infra layer ???
import 'package:injectable/injectable.dart';

part 'edit_profile_image_bloc.freezed.dart';
part 'edit_profile_image_event.dart';
part 'edit_profile_image_state.dart';

@lazySingleton
class EditProfileImageBloc
    extends Bloc<EditProfileImageEvent, EditProfileImageState>
    with AutoResetLazySingleton {
  final IUserService _userService;

  EditProfileImageBloc(
    this._userService,
  ) : super(const EditProfileImageState.initial()) {
    on<_DeletePressed>((_, __) => _mapDeletePressedToState());
    on<_TakePressed>((_, __) => _mapTakePressedToState());
    on<_ChoosePressed>((_, __) => _mapChoosePressedToState());
  }

  void _mapDeletePressedToState() {
    // TODO await result ???
    _userService.deleteProfilePhoto();
  }

  Future<void> _mapTakePressedToState() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedFile == null) {
      return;
    }

    _userService.updateProfilePhoto(
      newPhotoData: await pickedFile.readAsBytes(),
    );
  }

  Future<void> _mapChoosePressedToState() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile == null) {
      return;
    }

    _userService.updateProfilePhoto(
      newPhotoData: await pickedFile.readAsBytes(),
    );
  }

  @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<EditProfileImageBloc>()) {
      getIt.resetLazySingleton<EditProfileImageBloc>();
    }

    return super.close();
  }
}
