import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

part 'edit_profile_image_event.dart';
part 'edit_profile_image_state.dart';
part 'edit_profile_image_bloc.freezed.dart';

@lazySingleton
class EditProfileImageBloc
    extends Bloc<EditProfileImageEvent, EditProfileImageState>
    with AutoResetLazySingleton {
  final IUserService _userService;

  EditProfileImageBloc(
    this._userService,
  ) : super(const EditProfileImageState.initial());

  @override
  Stream<EditProfileImageState> mapEventToState(
    EditProfileImageEvent event,
  ) async* {
    yield* event.map(
      deletePressed: (_) => _mapDeletePressedToState(),
      takePressed: (_) => _mapTakePressedToState(),
      choosePressed: (_) => _mapChoosePressedToState(),
    );
  }

  Stream<EditProfileImageState> _mapDeletePressedToState() async* {
    _userService.deleteProfilePhoto();
  }

  Stream<EditProfileImageState> _mapTakePressedToState() async* {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedFile == null) {
      return;
    }
    final file = File(pickedFile.path);
    _userService.updateProfilePhoto(newPhoto: file);
  }

  Stream<EditProfileImageState> _mapChoosePressedToState() async* {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile == null) {
      return;
    }
    final file = File(pickedFile.path);
    _userService.updateProfilePhoto(newPhoto: file);
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
