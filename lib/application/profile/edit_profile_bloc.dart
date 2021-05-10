import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/user/i_profile_image_repository.dart';
import 'package:dart_counter/domain/user/i_user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

part 'edit_profile_event.dart';
part 'edit_profile_state.dart';
part 'edit_profile_bloc.freezed.dart';

@injectable
class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  final IUserRepository _userRepository;
  final IProfileImageRepository _profileImageRepository;

  EditProfileBloc(this._userRepository, this._profileImageRepository)
      : super(const EditProfileState.initial());

  @override
  Stream<EditProfileState> mapEventToState(
    EditProfileEvent event,
  ) async* {
    event.map(delete: (e) async {
      final user = _userRepository.user;
      if (user == null) {
        throw Error(); // TODO
      }
      final profile = user.profile;

      await _profileImageRepository.delete();

      await _userRepository
          .update(user.copyWith(profile: profile.copyWith(photoUrl: null)));
    }, take: (e) async {
      final user = _userRepository.user;
      if (user == null) {
        throw Error(); // TODO
      }
      final profile = user.profile;

      final pickedImage =
          await ImagePicker().getImage(source: ImageSource.camera);
      if (pickedImage != null) {
        final profileImageFailureOrUrl =
            await _profileImageRepository.save(File(pickedImage.path));

        profileImageFailureOrUrl.fold(
          (failure) {
            // TODO error
          },
          (url) {
            _userRepository.update(
                user.copyWith(profile: profile.copyWith(photoUrl: url)));
          },
        );
      }
    }, choose: (e) async {
      final user = _userRepository.user;
      if (user == null) {
        throw Error(); // TODO
      }
      final profile = user.profile;

      final pickedImage =
          await ImagePicker().getImage(source: ImageSource.gallery);
      if (pickedImage != null) {
        final profileImageFailureOrUrl =
            await _profileImageRepository.save(File(pickedImage.path));

        profileImageFailureOrUrl.fold(
          (failure) {
            // TODO error
          },
          (url) {
            _userRepository.update(
                user.copyWith(profile: profile.copyWith(photoUrl: url)));
          },
        );
      }
    });
  }
}
