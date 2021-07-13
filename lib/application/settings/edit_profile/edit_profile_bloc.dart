import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/user/i_user_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

part 'edit_profile_event.dart';
part 'edit_profile_state.dart';
part 'edit_profile_bloc.freezed.dart';

// TODO rename to edit profile image and mapper in seperate stream methods
@lazySingleton
class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState>
    with AutoResetLazySingleton {
  final IUserFacade _userFacade;

  EditProfileBloc(this._userFacade) : super(const EditProfileState.initial());

  @override
  Stream<EditProfileState> mapEventToState(
    EditProfileEvent event,
  ) async* {
    event.map(
      deletePressed: (_) async {
        _userFacade.deletePhoto();
      },
      takePressed: (_) async {
        final pickedFile =
            await ImagePicker().getImage(source: ImageSource.camera);
        if (pickedFile == null) {
          // TODO no image selected
          return;
        }
        final file = File(pickedFile.path);
        _userFacade.updatePhoto(file);
      },
      choosePressed: (_) async {
        final pickedFile =
            await ImagePicker().getImage(source: ImageSource.gallery);
        if (pickedFile == null) {
          // TODO no image selected
          return;
        }
        final file = File(pickedFile.path);
        _userFacade.updatePhoto(file);
      },
    );
  }
}
