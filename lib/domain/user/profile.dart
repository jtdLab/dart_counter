import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';

@freezed
class Profile with _$Profile {
  const factory Profile({
    String? photoUrl,
    required Username username,
  }) = _Profile;

  factory Profile.dummy() => Profile(
        photoUrl: 'https://picsum.photos/200',
        username: Username('dummyUser'),
      );
}
