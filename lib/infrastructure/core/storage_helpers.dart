import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/domain_error.dart';
import 'package:dart_counter/core/injection.dart';
import 'package:firebase_storage/firebase_storage.dart';

// TODO need to doc the throwing of not authenticated error her or not because its only a rethrow

/// App specific extensions on firebase storage
extension StorageX on FirebaseStorage {
  /// Returns a reference to the profilePhoto storage of the app-user.
  ///
  /// Throws [NotAuthenticatedError] if app user is not signed in.
  Reference profilePhotoReference() {
    try {
      // the id the current authenticated user
      final uid = getIt<IAuthService>().userId();
      // the storage instance
      final storage = getIt<FirebaseStorage>();

      return storage.ref('profilePhotos').child(uid.getOrCrash());
    } catch (e) {
      rethrow;
    }
  }
}
