import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/errors.dart';
import 'package:dart_counter/injection.dart';
import 'package:firebase_storage/firebase_storage.dart';


// TODO make testable 

/// App specific extensions on firebase storage
extension StorageX on FirebaseStorage {
  /// Returns a reference to the profilePhoto storage of the app-user.
  ///
  /// Throws [NotAuthenticatedError] if app user is not signed in.
  Reference profilePhotoReference() {
    final uid = getIt<IAuthService>().userId();

    if (uid == null) {
      throw NotAuthenticatedError();
    } else {
      return getIt<FirebaseStorage>()
          .ref('profilePhotos')
          .child(uid.getOrCrash());
    }
  }
}
