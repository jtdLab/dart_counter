// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'online_player.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OnlinePlayerTearOff {
  const _$OnlinePlayerTearOff();

  _OnlinePlayer call(
      {required UniqueId id,
      required String name,
      String? photoUrl,
      required Either<KtList<Leg>, KtList<Set>> legsOrSets,
      required bool won,
      required int wonLegsOrSets,
      required PlayerStats stats}) {
    return _OnlinePlayer(
      id: id,
      name: name,
      photoUrl: photoUrl,
      legsOrSets: legsOrSets,
      won: won,
      wonLegsOrSets: wonLegsOrSets,
      stats: stats,
    );
  }
}

/// @nodoc
const $OnlinePlayer = _$OnlinePlayerTearOff();

/// @nodoc
mixin _$OnlinePlayer {
  UniqueId get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  Either<KtList<Leg>, KtList<Set>> get legsOrSets =>
      throw _privateConstructorUsedError;
  bool get won => throw _privateConstructorUsedError;
  int get wonLegsOrSets => throw _privateConstructorUsedError;
  PlayerStats get stats => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OnlinePlayerCopyWith<OnlinePlayer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnlinePlayerCopyWith<$Res> {
  factory $OnlinePlayerCopyWith(
          OnlinePlayer value, $Res Function(OnlinePlayer) then) =
      _$OnlinePlayerCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      String name,
      String? photoUrl,
      Either<KtList<Leg>, KtList<Set>> legsOrSets,
      bool won,
      int wonLegsOrSets,
      PlayerStats stats});

  $PlayerStatsCopyWith<$Res> get stats;
}

/// @nodoc
class _$OnlinePlayerCopyWithImpl<$Res> implements $OnlinePlayerCopyWith<$Res> {
  _$OnlinePlayerCopyWithImpl(this._value, this._then);

  final OnlinePlayer _value;
  // ignore: unused_field
  final $Res Function(OnlinePlayer) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? photoUrl = freezed,
    Object? legsOrSets = freezed,
    Object? won = freezed,
    Object? wonLegsOrSets = freezed,
    Object? stats = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      legsOrSets: legsOrSets == freezed
          ? _value.legsOrSets
          : legsOrSets // ignore: cast_nullable_to_non_nullable
              as Either<KtList<Leg>, KtList<Set>>,
      won: won == freezed
          ? _value.won
          : won // ignore: cast_nullable_to_non_nullable
              as bool,
      wonLegsOrSets: wonLegsOrSets == freezed
          ? _value.wonLegsOrSets
          : wonLegsOrSets // ignore: cast_nullable_to_non_nullable
              as int,
      stats: stats == freezed
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as PlayerStats,
    ));
  }

  @override
  $PlayerStatsCopyWith<$Res> get stats {
    return $PlayerStatsCopyWith<$Res>(_value.stats, (value) {
      return _then(_value.copyWith(stats: value));
    });
  }
}

/// @nodoc
abstract class _$OnlinePlayerCopyWith<$Res>
    implements $OnlinePlayerCopyWith<$Res> {
  factory _$OnlinePlayerCopyWith(
          _OnlinePlayer value, $Res Function(_OnlinePlayer) then) =
      __$OnlinePlayerCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      String name,
      String? photoUrl,
      Either<KtList<Leg>, KtList<Set>> legsOrSets,
      bool won,
      int wonLegsOrSets,
      PlayerStats stats});

  @override
  $PlayerStatsCopyWith<$Res> get stats;
}

/// @nodoc
class __$OnlinePlayerCopyWithImpl<$Res> extends _$OnlinePlayerCopyWithImpl<$Res>
    implements _$OnlinePlayerCopyWith<$Res> {
  __$OnlinePlayerCopyWithImpl(
      _OnlinePlayer _value, $Res Function(_OnlinePlayer) _then)
      : super(_value, (v) => _then(v as _OnlinePlayer));

  @override
  _OnlinePlayer get _value => super._value as _OnlinePlayer;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? photoUrl = freezed,
    Object? legsOrSets = freezed,
    Object? won = freezed,
    Object? wonLegsOrSets = freezed,
    Object? stats = freezed,
  }) {
    return _then(_OnlinePlayer(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      legsOrSets: legsOrSets == freezed
          ? _value.legsOrSets
          : legsOrSets // ignore: cast_nullable_to_non_nullable
              as Either<KtList<Leg>, KtList<Set>>,
      won: won == freezed
          ? _value.won
          : won // ignore: cast_nullable_to_non_nullable
              as bool,
      wonLegsOrSets: wonLegsOrSets == freezed
          ? _value.wonLegsOrSets
          : wonLegsOrSets // ignore: cast_nullable_to_non_nullable
              as int,
      stats: stats == freezed
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as PlayerStats,
    ));
  }
}

/// @nodoc

@Implements<AbstractPlayer>()
class _$_OnlinePlayer implements _OnlinePlayer {
  const _$_OnlinePlayer(
      {required this.id,
      required this.name,
      this.photoUrl,
      required this.legsOrSets,
      required this.won,
      required this.wonLegsOrSets,
      required this.stats});

  @override
  final UniqueId id;
  @override
  final String name;
  @override
  final String? photoUrl;
  @override
  final Either<KtList<Leg>, KtList<Set>> legsOrSets;
  @override
  final bool won;
  @override
  final int wonLegsOrSets;
  @override
  final PlayerStats stats;

  @override
  String toString() {
    return 'OnlinePlayer(id: $id, name: $name, photoUrl: $photoUrl, legsOrSets: $legsOrSets, won: $won, wonLegsOrSets: $wonLegsOrSets, stats: $stats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnlinePlayer &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.legsOrSets, legsOrSets) ||
                other.legsOrSets == legsOrSets) &&
            (identical(other.won, won) || other.won == won) &&
            (identical(other.wonLegsOrSets, wonLegsOrSets) ||
                other.wonLegsOrSets == wonLegsOrSets) &&
            (identical(other.stats, stats) || other.stats == stats));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, photoUrl, legsOrSets, won, wonLegsOrSets, stats);

  @JsonKey(ignore: true)
  @override
  _$OnlinePlayerCopyWith<_OnlinePlayer> get copyWith =>
      __$OnlinePlayerCopyWithImpl<_OnlinePlayer>(this, _$identity);
}

abstract class _OnlinePlayer implements OnlinePlayer, AbstractPlayer {
  const factory _OnlinePlayer(
      {required UniqueId id,
      required String name,
      String? photoUrl,
      required Either<KtList<Leg>, KtList<Set>> legsOrSets,
      required bool won,
      required int wonLegsOrSets,
      required PlayerStats stats}) = _$_OnlinePlayer;

  @override
  UniqueId get id;
  @override
  String get name;
  @override
  String? get photoUrl;
  @override
  Either<KtList<Leg>, KtList<Set>> get legsOrSets;
  @override
  bool get won;
  @override
  int get wonLegsOrSets;
  @override
  PlayerStats get stats;
  @override
  @JsonKey(ignore: true)
  _$OnlinePlayerCopyWith<_OnlinePlayer> get copyWith =>
      throw _privateConstructorUsedError;
}
