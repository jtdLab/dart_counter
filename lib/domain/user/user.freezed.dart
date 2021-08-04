// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {required UniqueId id,
      required EmailAddress emailAddress,
      required Profile profile,
      required CareerStats careerStatsOnline,
      required CareerStats careerStatsOffline,
      required List10<OnlineGame> gameHistoryOnline,
      required List10<OfflineGame> gameHistoryOffline}) {
    return _User(
      id: id,
      emailAddress: emailAddress,
      profile: profile,
      careerStatsOnline: careerStatsOnline,
      careerStatsOffline: careerStatsOffline,
      gameHistoryOnline: gameHistoryOnline,
      gameHistoryOffline: gameHistoryOffline,
    );
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  UniqueId get id => throw _privateConstructorUsedError;
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Profile get profile => throw _privateConstructorUsedError;
  CareerStats get careerStatsOnline => throw _privateConstructorUsedError;
  CareerStats get careerStatsOffline => throw _privateConstructorUsedError;
  List10<OnlineGame> get gameHistoryOnline =>
      throw _privateConstructorUsedError;
  List10<OfflineGame> get gameHistoryOffline =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      EmailAddress emailAddress,
      Profile profile,
      CareerStats careerStatsOnline,
      CareerStats careerStatsOffline,
      List10<OnlineGame> gameHistoryOnline,
      List10<OfflineGame> gameHistoryOffline});

  $ProfileCopyWith<$Res> get profile;
  $CareerStatsCopyWith<$Res> get careerStatsOnline;
  $CareerStatsCopyWith<$Res> get careerStatsOffline;
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? emailAddress = freezed,
    Object? profile = freezed,
    Object? careerStatsOnline = freezed,
    Object? careerStatsOffline = freezed,
    Object? gameHistoryOnline = freezed,
    Object? gameHistoryOffline = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
      careerStatsOnline: careerStatsOnline == freezed
          ? _value.careerStatsOnline
          : careerStatsOnline // ignore: cast_nullable_to_non_nullable
              as CareerStats,
      careerStatsOffline: careerStatsOffline == freezed
          ? _value.careerStatsOffline
          : careerStatsOffline // ignore: cast_nullable_to_non_nullable
              as CareerStats,
      gameHistoryOnline: gameHistoryOnline == freezed
          ? _value.gameHistoryOnline
          : gameHistoryOnline // ignore: cast_nullable_to_non_nullable
              as List10<OnlineGame>,
      gameHistoryOffline: gameHistoryOffline == freezed
          ? _value.gameHistoryOffline
          : gameHistoryOffline // ignore: cast_nullable_to_non_nullable
              as List10<OfflineGame>,
    ));
  }

  @override
  $ProfileCopyWith<$Res> get profile {
    return $ProfileCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }

  @override
  $CareerStatsCopyWith<$Res> get careerStatsOnline {
    return $CareerStatsCopyWith<$Res>(_value.careerStatsOnline, (value) {
      return _then(_value.copyWith(careerStatsOnline: value));
    });
  }

  @override
  $CareerStatsCopyWith<$Res> get careerStatsOffline {
    return $CareerStatsCopyWith<$Res>(_value.careerStatsOffline, (value) {
      return _then(_value.copyWith(careerStatsOffline: value));
    });
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      EmailAddress emailAddress,
      Profile profile,
      CareerStats careerStatsOnline,
      CareerStats careerStatsOffline,
      List10<OnlineGame> gameHistoryOnline,
      List10<OfflineGame> gameHistoryOffline});

  @override
  $ProfileCopyWith<$Res> get profile;
  @override
  $CareerStatsCopyWith<$Res> get careerStatsOnline;
  @override
  $CareerStatsCopyWith<$Res> get careerStatsOffline;
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? id = freezed,
    Object? emailAddress = freezed,
    Object? profile = freezed,
    Object? careerStatsOnline = freezed,
    Object? careerStatsOffline = freezed,
    Object? gameHistoryOnline = freezed,
    Object? gameHistoryOffline = freezed,
  }) {
    return _then(_User(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
      careerStatsOnline: careerStatsOnline == freezed
          ? _value.careerStatsOnline
          : careerStatsOnline // ignore: cast_nullable_to_non_nullable
              as CareerStats,
      careerStatsOffline: careerStatsOffline == freezed
          ? _value.careerStatsOffline
          : careerStatsOffline // ignore: cast_nullable_to_non_nullable
              as CareerStats,
      gameHistoryOnline: gameHistoryOnline == freezed
          ? _value.gameHistoryOnline
          : gameHistoryOnline // ignore: cast_nullable_to_non_nullable
              as List10<OnlineGame>,
      gameHistoryOffline: gameHistoryOffline == freezed
          ? _value.gameHistoryOffline
          : gameHistoryOffline // ignore: cast_nullable_to_non_nullable
              as List10<OfflineGame>,
    ));
  }
}

/// @nodoc

class _$_User implements _User {
  const _$_User(
      {required this.id,
      required this.emailAddress,
      required this.profile,
      required this.careerStatsOnline,
      required this.careerStatsOffline,
      required this.gameHistoryOnline,
      required this.gameHistoryOffline});

  @override
  final UniqueId id;
  @override
  final EmailAddress emailAddress;
  @override
  final Profile profile;
  @override
  final CareerStats careerStatsOnline;
  @override
  final CareerStats careerStatsOffline;
  @override
  final List10<OnlineGame> gameHistoryOnline;
  @override
  final List10<OfflineGame> gameHistoryOffline;

  @override
  String toString() {
    return 'User(id: $id, emailAddress: $emailAddress, profile: $profile, careerStatsOnline: $careerStatsOnline, careerStatsOffline: $careerStatsOffline, gameHistoryOnline: $gameHistoryOnline, gameHistoryOffline: $gameHistoryOffline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality()
                    .equals(other.profile, profile)) &&
            (identical(other.careerStatsOnline, careerStatsOnline) ||
                const DeepCollectionEquality()
                    .equals(other.careerStatsOnline, careerStatsOnline)) &&
            (identical(other.careerStatsOffline, careerStatsOffline) ||
                const DeepCollectionEquality()
                    .equals(other.careerStatsOffline, careerStatsOffline)) &&
            (identical(other.gameHistoryOnline, gameHistoryOnline) ||
                const DeepCollectionEquality()
                    .equals(other.gameHistoryOnline, gameHistoryOnline)) &&
            (identical(other.gameHistoryOffline, gameHistoryOffline) ||
                const DeepCollectionEquality()
                    .equals(other.gameHistoryOffline, gameHistoryOffline)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(profile) ^
      const DeepCollectionEquality().hash(careerStatsOnline) ^
      const DeepCollectionEquality().hash(careerStatsOffline) ^
      const DeepCollectionEquality().hash(gameHistoryOnline) ^
      const DeepCollectionEquality().hash(gameHistoryOffline);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      {required UniqueId id,
      required EmailAddress emailAddress,
      required Profile profile,
      required CareerStats careerStatsOnline,
      required CareerStats careerStatsOffline,
      required List10<OnlineGame> gameHistoryOnline,
      required List10<OfflineGame> gameHistoryOffline}) = _$_User;

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  @override
  Profile get profile => throw _privateConstructorUsedError;
  @override
  CareerStats get careerStatsOnline => throw _privateConstructorUsedError;
  @override
  CareerStats get careerStatsOffline => throw _privateConstructorUsedError;
  @override
  List10<OnlineGame> get gameHistoryOnline =>
      throw _privateConstructorUsedError;
  @override
  List10<OfflineGame> get gameHistoryOffline =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
