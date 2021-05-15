import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required UniqueId id,
    required Username username,
  }) = _User;

  factory User.dummy() => User(
        id: UniqueId.fromUniqueString('dummyNoFriendUserUID'),
        username: Username('dummyNoFriendUser'),
      );
}
