// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'friend.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FriendTearOff {
  const _$FriendTearOff();

  _Friend call(
      {required UniqueId id,
      required Profile profile,
      required CareerStats careerStatsOnline,
      required List10<Game> gameHistoryOnline}) {
    return _Friend(
      id: id,
      profile: profile,
      careerStatsOnline: careerStatsOnline,
      gameHistoryOnline: gameHistoryOnline,
    );
  }
}

/// @nodoc
const $Friend = _$FriendTearOff();

/// @nodoc
mixin _$Friend {
  UniqueId get id => throw _privateConstructorUsedError;
  Profile get profile => throw _privateConstructorUsedError;
  CareerStats get careerStatsOnline => throw _privateConstructorUsedError;
  List10<Game> get gameHistoryOnline => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FriendCopyWith<Friend> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendCopyWith<$Res> {
  factory $FriendCopyWith(Friend value, $Res Function(Friend) then) =
      _$FriendCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      Profile profile,
      CareerStats careerStatsOnline,
      List10<Game> gameHistoryOnline});

  $ProfileCopyWith<$Res> get profile;
  $CareerStatsCopyWith<$Res> get careerStatsOnline;
}

/// @nodoc
class _$FriendCopyWithImpl<$Res> implements $FriendCopyWith<$Res> {
  _$FriendCopyWithImpl(this._value, this._then);

  final Friend _value;
  // ignore: unused_field
  final $Res Function(Friend) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? profile = freezed,
    Object? careerStatsOnline = freezed,
    Object? gameHistoryOnline = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
      careerStatsOnline: careerStatsOnline == freezed
          ? _value.careerStatsOnline
          : careerStatsOnline // ignore: cast_nullable_to_non_nullable
              as CareerStats,
      gameHistoryOnline: gameHistoryOnline == freezed
          ? _value.gameHistoryOnline
          : gameHistoryOnline // ignore: cast_nullable_to_non_nullable
              as List10<Game>,
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
}

/// @nodoc
abstract class _$FriendCopyWith<$Res> implements $FriendCopyWith<$Res> {
  factory _$FriendCopyWith(_Friend value, $Res Function(_Friend) then) =
      __$FriendCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      Profile profile,
      CareerStats careerStatsOnline,
      List10<Game> gameHistoryOnline});

  @override
  $ProfileCopyWith<$Res> get profile;
  @override
  $CareerStatsCopyWith<$Res> get careerStatsOnline;
}

/// @nodoc
class __$FriendCopyWithImpl<$Res> extends _$FriendCopyWithImpl<$Res>
    implements _$FriendCopyWith<$Res> {
  __$FriendCopyWithImpl(_Friend _value, $Res Function(_Friend) _then)
      : super(_value, (v) => _then(v as _Friend));

  @override
  _Friend get _value => super._value as _Friend;

  @override
  $Res call({
    Object? id = freezed,
    Object? profile = freezed,
    Object? careerStatsOnline = freezed,
    Object? gameHistoryOnline = freezed,
  }) {
    return _then(_Friend(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
      careerStatsOnline: careerStatsOnline == freezed
          ? _value.careerStatsOnline
          : careerStatsOnline // ignore: cast_nullable_to_non_nullable
              as CareerStats,
      gameHistoryOnline: gameHistoryOnline == freezed
          ? _value.gameHistoryOnline
          : gameHistoryOnline // ignore: cast_nullable_to_non_nullable
              as List10<Game>,
    ));
  }
}

/// @nodoc
class _$_Friend implements _Friend {
  const _$_Friend(
      {required this.id,
      required this.profile,
      required this.careerStatsOnline,
      required this.gameHistoryOnline});

  @override
  final UniqueId id;
  @override
  final Profile profile;
  @override
  final CareerStats careerStatsOnline;
  @override
  final List10<Game> gameHistoryOnline;

  @override
  String toString() {
    return 'Friend(id: $id, profile: $profile, careerStatsOnline: $careerStatsOnline, gameHistoryOnline: $gameHistoryOnline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Friend &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality()
                    .equals(other.profile, profile)) &&
            (identical(other.careerStatsOnline, careerStatsOnline) ||
                const DeepCollectionEquality()
                    .equals(other.careerStatsOnline, careerStatsOnline)) &&
            (identical(other.gameHistoryOnline, gameHistoryOnline) ||
                const DeepCollectionEquality()
                    .equals(other.gameHistoryOnline, gameHistoryOnline)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(profile) ^
      const DeepCollectionEquality().hash(careerStatsOnline) ^
      const DeepCollectionEquality().hash(gameHistoryOnline);

  @JsonKey(ignore: true)
  @override
  _$FriendCopyWith<_Friend> get copyWith =>
      __$FriendCopyWithImpl<_Friend>(this, _$identity);
}

abstract class _Friend implements Friend {
  const factory _Friend(
      {required UniqueId id,
      required Profile profile,
      required CareerStats careerStatsOnline,
      required List10<Game> gameHistoryOnline}) = _$_Friend;

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  Profile get profile => throw _privateConstructorUsedError;
  @override
  CareerStats get careerStatsOnline => throw _privateConstructorUsedError;
  @override
  List10<Game> get gameHistoryOnline => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FriendCopyWith<_Friend> get copyWith => throw _privateConstructorUsedError;
}
