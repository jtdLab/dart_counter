import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/user/i_user_facade.dart';
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
  final IUserFacade _userFacade;

  EditProfileImageBloc(
    this._userFacade,
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
    _userFacade.deletePhoto();
  }

  Stream<EditProfileImageState> _mapTakePressedToState() async* {
    final pickedFile = await ImagePicker().getImage(source: ImageSource.camera);
    if (pickedFile == null) {
      // TODO no image selected
      return;
    }
    final file = File(pickedFile.path);
    _userFacade.updatePhoto(file);
  }

  Stream<EditProfileImageState> _mapChoosePressedToState() async* {
    final pickedFile =
        await ImagePicker().getImage(source: ImageSource.gallery);
    if (pickedFile == null) {
      // TODO no image selected
      return;
    }
    final file = File(pickedFile.path);
    _userFacade.updatePhoto(file);
  }
}
