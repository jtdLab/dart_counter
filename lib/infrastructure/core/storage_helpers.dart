import 'package:dart_counter/domain/auth/i_auth_facade.dart';
import 'package:dart_counter/domain/core/errors.dart';
import 'package:dart_counter/injection.dart';
import 'package:firebase_storage/firebase_storage.dart';

extension StorageX on FirebaseStorage {
  Reference profilePhotoReference() {
    final uid = getIt<IAuthFacade>().userId();

    if (uid == null) {
      throw NotAuthenticatedError();
    } else {
      return getIt<FirebaseStorage>()
          .ref('profilePhotos')
          .child(uid.getOrCrash());
    }
  }
}
