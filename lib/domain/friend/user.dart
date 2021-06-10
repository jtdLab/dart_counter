import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required UniqueId id,
    required Username username,
  }) = _User;

  factory User.dummy() {
    final faker = Faker();
    return User(
      id: UniqueId.fromUniqueString(faker.randomGenerator.string(28, min: 28)),
      username: Username(
        faker.randomGenerator.element([
          'xDavid88x',
          'xMrjoschx',
          'xSebiAbi69x',
          'xHoeHoex',
          'xSoldier48x',
          'xNeedsx',
          'xEgesitx',
          'xAnisAbix',
        ]),
      ),
    );
  }
}
