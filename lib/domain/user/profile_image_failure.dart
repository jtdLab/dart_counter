import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_image_failure.freezed.dart';

@freezed
class ProfileImageFailure with _$ProfileImageFailure {
  const factory ProfileImageFailure.unexpected() = _Unexpected;
  const factory ProfileImageFailure.insufficientPermission() = _InsufficientPermission;
  const factory ProfileImageFailure.unableToUpdate() = _UnableToUpdate;
  const factory ProfileImageFailure.unableToRead() = _UnableToRead;
}
