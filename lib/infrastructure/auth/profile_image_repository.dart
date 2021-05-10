import 'dart:io';
import 'dart:typed_data';

import 'package:dart_counter/domain/auth/i_auth_facade.dart';
import 'package:dart_counter/domain/user/i_profile_image_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dart_counter/domain/user/profile_image_failure.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:image/image.dart';

@LazySingleton(as: IProfileImageRepository)
class ProfileImageRepository implements IProfileImageRepository {
  final IAuthFacade _authFacade;
  final FirebaseStorage _firebaseStorage;

  ProfileImageRepository(this._authFacade, this._firebaseStorage);

  @override
  Future<Either<ProfileImageFailure, String>> save(File rawData) async {
    final uid = _authFacade.getSignedInUid();
    if (uid == null) {
      throw Error();
    }

    var decodedImage = decodeImage(rawData.readAsBytesSync());
    if (decodedImage == null)
      throw ArgumentError.value(
          rawData, 'Unable to decode image from given file');
    var ref = _firebaseStorage.ref('profilePhotos/$uid');
    var thumbnail = copyResize(decodedImage, width: 120);
    await ref.putData(Uint8List.fromList(encodePng(thumbnail)),
        SettableMetadata(contentType: 'image/png'));
    return right(await ref.getDownloadURL());
  }

  @override
  Future<void> delete() async {
    final uid = _authFacade.getSignedInUid();
    if (uid == null) {
      throw Error();
    }

    final ref = _firebaseStorage.ref('profilePhotos/$uid');
    await ref.delete();
  }
}
