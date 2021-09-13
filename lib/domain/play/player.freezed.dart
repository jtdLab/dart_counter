// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'player.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OfflinePlayerTearOff {
  const _$OfflinePlayerTearOff();

  _OfflinePlayer call(
      {required UniqueId id,
      required String name,
      required KtList<Set> sets,
      bool won = false,
      int wonLegsOrSets = 0,
      PlayerStats stats = const PlayerStats()}) {
    return _OfflinePlayer(
      id: id,
      name: name,
      sets: sets,
      won: won,
      wonLegsOrSets: wonLegsOrSets,
      stats: stats,
    );
  }
}

/// @nodoc
const $OfflinePlayer = _$OfflinePlayerTearOff();

/// @nodoc
mixin _$OfflinePlayer {
  UniqueId get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  KtList<Set> get sets => throw _privateConstructorUsedError;
  bool get won => throw _privateConstructorUsedError;
  int get wonLegsOrSets => throw _privateConstructorUsedError;
  PlayerStats get stats => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OfflinePlayerCopyWith<OfflinePlayer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfflinePlayerCopyWith<$Res> {
  factory $OfflinePlayerCopyWith(
          OfflinePlayer value, $Res Function(OfflinePlayer) then) =
      _$OfflinePlayerCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      String name,
      KtList<Set> sets,
      bool won,
      int wonLegsOrSets,
      PlayerStats stats});

  $PlayerStatsCopyWith<$Res> get stats;
}

/// @nodoc
class _$OfflinePlayerCopyWithImpl<$Res>
    implements $OfflinePlayerCopyWith<$Res> {
  _$OfflinePlayerCopyWithImpl(this._value, this._then);

  final OfflinePlayer _value;
  // ignore: unused_field
  final $Res Function(OfflinePlayer) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? sets = freezed,
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
      sets: sets == freezed
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as KtList<Set>,
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
abstract class _$OfflinePlayerCopyWith<$Res>
    implements $OfflinePlayerCopyWith<$Res> {
  factory _$OfflinePlayerCopyWith(
          _OfflinePlayer value, $Res Function(_OfflinePlayer) then) =
      __$OfflinePlayerCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      String name,
      KtList<Set> sets,
      bool won,
      int wonLegsOrSets,
      PlayerStats stats});

  @override
  $PlayerStatsCopyWith<$Res> get stats;
}

/// @nodoc
class __$OfflinePlayerCopyWithImpl<$Res>
    extends _$OfflinePlayerCopyWithImpl<$Res>
    implements _$OfflinePlayerCopyWith<$Res> {
  __$OfflinePlayerCopyWithImpl(
      _OfflinePlayer _value, $Res Function(_OfflinePlayer) _then)
      : super(_value, (v) => _then(v as _OfflinePlayer));

  @override
  _OfflinePlayer get _value => super._value as _OfflinePlayer;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? sets = freezed,
    Object? won = freezed,
    Object? wonLegsOrSets = freezed,
    Object? stats = freezed,
  }) {
    return _then(_OfflinePlayer(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sets: sets == freezed
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as KtList<Set>,
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

@Implements(AbstractOfflinePlayer)
class _$_OfflinePlayer implements _OfflinePlayer {
  const _$_OfflinePlayer(
      {required this.id,
      required this.name,
      required this.sets,
      this.won = false,
      this.wonLegsOrSets = 0,
      this.stats = const PlayerStats()});

  @override
  final UniqueId id;
  @override
  final String name;
  @override
  final KtList<Set> sets;
  @JsonKey(defaultValue: false)
  @override
  final bool won;
  @JsonKey(defaultValue: 0)
  @override
  final int wonLegsOrSets;
  @JsonKey(defaultValue: const PlayerStats())
  @override
  final PlayerStats stats;

  @override
  String toString() {
    return 'OfflinePlayer(id: $id, name: $name, sets: $sets, won: $won, wonLegsOrSets: $wonLegsOrSets, stats: $stats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OfflinePlayer &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.sets, sets) ||
                const DeepCollectionEquality().equals(other.sets, sets)) &&
            (identical(other.won, won) ||
                const DeepCollectionEquality().equals(other.won, won)) &&
            (identical(other.wonLegsOrSets, wonLegsOrSets) ||
                const DeepCollectionEquality()
                    .equals(other.wonLegsOrSets, wonLegsOrSets)) &&
            (identical(other.stats, stats) ||
                const DeepCollectionEquality().equals(other.stats, stats)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(sets) ^
      const DeepCollectionEquality().hash(won) ^
      const DeepCollectionEquality().hash(wonLegsOrSets) ^
      const DeepCollectionEquality().hash(stats);

  @JsonKey(ignore: true)
  @override
  _$OfflinePlayerCopyWith<_OfflinePlayer> get copyWith =>
      __$OfflinePlayerCopyWithImpl<_OfflinePlayer>(this, _$identity);
}

abstract class _OfflinePlayer implements OfflinePlayer, AbstractOfflinePlayer {
  const factory _OfflinePlayer(
      {required UniqueId id,
      required String name,
      required KtList<Set> sets,
      bool won,
      int wonLegsOrSets,
      PlayerStats stats}) = _$_OfflinePlayer;

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  KtList<Set> get sets => throw _privateConstructorUsedError;
  @override
  bool get won => throw _privateConstructorUsedError;
  @override
  int get wonLegsOrSets => throw _privateConstructorUsedError;
  @override
  PlayerStats get stats => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OfflinePlayerCopyWith<_OfflinePlayer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$DartBotTearOff {
  const _$DartBotTearOff();

  _DartBot call(
      {required UniqueId id,
      required String name,
      required KtList<Set> sets,
      bool won = false,
      int wonLegsOrSets = 0,
      PlayerStats stats = const PlayerStats()}) {
    return _DartBot(
      id: id,
      name: name,
      sets: sets,
      won: won,
      wonLegsOrSets: wonLegsOrSets,
      stats: stats,
    );
  }
}

/// @nodoc
const $DartBot = _$DartBotTearOff();

/// @nodoc
mixin _$DartBot {
  UniqueId get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  KtList<Set> get sets => throw _privateConstructorUsedError;
  bool get won => throw _privateConstructorUsedError;
  int get wonLegsOrSets => throw _privateConstructorUsedError;
  PlayerStats get stats => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DartBotCopyWith<DartBot> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DartBotCopyWith<$Res> {
  factory $DartBotCopyWith(DartBot value, $Res Function(DartBot) then) =
      _$DartBotCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      String name,
      KtList<Set> sets,
      bool won,
      int wonLegsOrSets,
      PlayerStats stats});

  $PlayerStatsCopyWith<$Res> get stats;
}

/// @nodoc
class _$DartBotCopyWithImpl<$Res> implements $DartBotCopyWith<$Res> {
  _$DartBotCopyWithImpl(this._value, this._then);

  final DartBot _value;
  // ignore: unused_field
  final $Res Function(DartBot) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? sets = freezed,
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
      sets: sets == freezed
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as KtList<Set>,
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
abstract class _$DartBotCopyWith<$Res> implements $DartBotCopyWith<$Res> {
  factory _$DartBotCopyWith(_DartBot value, $Res Function(_DartBot) then) =
      __$DartBotCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      String name,
      KtList<Set> sets,
      bool won,
      int wonLegsOrSets,
      PlayerStats stats});

  @override
  $PlayerStatsCopyWith<$Res> get stats;
}

/// @nodoc
class __$DartBotCopyWithImpl<$Res> extends _$DartBotCopyWithImpl<$Res>
    implements _$DartBotCopyWith<$Res> {
  __$DartBotCopyWithImpl(_DartBot _value, $Res Function(_DartBot) _then)
      : super(_value, (v) => _then(v as _DartBot));

  @override
  _DartBot get _value => super._value as _DartBot;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? sets = freezed,
    Object? won = freezed,
    Object? wonLegsOrSets = freezed,
    Object? stats = freezed,
  }) {
    return _then(_DartBot(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sets: sets == freezed
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as KtList<Set>,
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

@Implements(AbstractOfflinePlayer)
class _$_DartBot implements _DartBot {
  const _$_DartBot(
      {required this.id,
      required this.name,
      required this.sets,
      this.won = false,
      this.wonLegsOrSets = 0,
      this.stats = const PlayerStats()});

  @override
  final UniqueId id;
  @override
  final String name;
  @override
  final KtList<Set> sets;
  @JsonKey(defaultValue: false)
  @override
  final bool won;
  @JsonKey(defaultValue: 0)
  @override
  final int wonLegsOrSets;
  @JsonKey(defaultValue: const PlayerStats())
  @override
  final PlayerStats stats;

  @override
  String toString() {
    return 'DartBot(id: $id, name: $name, sets: $sets, won: $won, wonLegsOrSets: $wonLegsOrSets, stats: $stats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DartBot &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.sets, sets) ||
                const DeepCollectionEquality().equals(other.sets, sets)) &&
            (identical(other.won, won) ||
                const DeepCollectionEquality().equals(other.won, won)) &&
            (identical(other.wonLegsOrSets, wonLegsOrSets) ||
                const DeepCollectionEquality()
                    .equals(other.wonLegsOrSets, wonLegsOrSets)) &&
            (identical(other.stats, stats) ||
                const DeepCollectionEquality().equals(other.stats, stats)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(sets) ^
      const DeepCollectionEquality().hash(won) ^
      const DeepCollectionEquality().hash(wonLegsOrSets) ^
      const DeepCollectionEquality().hash(stats);

  @JsonKey(ignore: true)
  @override
  _$DartBotCopyWith<_DartBot> get copyWith =>
      __$DartBotCopyWithImpl<_DartBot>(this, _$identity);
}

abstract class _DartBot implements DartBot, AbstractOfflinePlayer {
  const factory _DartBot(
      {required UniqueId id,
      required String name,
      required KtList<Set> sets,
      bool won,
      int wonLegsOrSets,
      PlayerStats stats}) = _$_DartBot;

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  KtList<Set> get sets => throw _privateConstructorUsedError;
  @override
  bool get won => throw _privateConstructorUsedError;
  @override
  int get wonLegsOrSets => throw _privateConstructorUsedError;
  @override
  PlayerStats get stats => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DartBotCopyWith<_DartBot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$OnlinePlayerTearOff {
  const _$OnlinePlayerTearOff();

  _OnlinePlayer call(
      {required UniqueId id,
      required String name,
      required KtList<Set> sets,
      bool won = false,
      int wonLegsOrSets = 0,
      PlayerStats stats = const PlayerStats()}) {
    return _OnlinePlayer(
      id: id,
      name: name,
      sets: sets,
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
  KtList<Set> get sets => throw _privateConstructorUsedError;
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
      KtList<Set> sets,
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
    Object? sets = freezed,
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
      sets: sets == freezed
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as KtList<Set>,
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
      KtList<Set> sets,
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
    Object? sets = freezed,
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
      sets: sets == freezed
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as KtList<Set>,
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

@Implements(AbstractPlayer)
class _$_OnlinePlayer implements _OnlinePlayer {
  const _$_OnlinePlayer(
      {required this.id,
      required this.name,
      required this.sets,
      this.won = false,
      this.wonLegsOrSets = 0,
      this.stats = const PlayerStats()});

  @override
  final UniqueId id;
  @override
  final String name;
  @override
  final KtList<Set> sets;
  @JsonKey(defaultValue: false)
  @override
  final bool won;
  @JsonKey(defaultValue: 0)
  @override
  final int wonLegsOrSets;
  @JsonKey(defaultValue: const PlayerStats())
  @override
  final PlayerStats stats;

  @override
  String toString() {
    return 'OnlinePlayer(id: $id, name: $name, sets: $sets, won: $won, wonLegsOrSets: $wonLegsOrSets, stats: $stats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnlinePlayer &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.sets, sets) ||
                const DeepCollectionEquality().equals(other.sets, sets)) &&
            (identical(other.won, won) ||
                const DeepCollectionEquality().equals(other.won, won)) &&
            (identical(other.wonLegsOrSets, wonLegsOrSets) ||
                const DeepCollectionEquality()
                    .equals(other.wonLegsOrSets, wonLegsOrSets)) &&
            (identical(other.stats, stats) ||
                const DeepCollectionEquality().equals(other.stats, stats)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(sets) ^
      const DeepCollectionEquality().hash(won) ^
      const DeepCollectionEquality().hash(wonLegsOrSets) ^
      const DeepCollectionEquality().hash(stats);

  @JsonKey(ignore: true)
  @override
  _$OnlinePlayerCopyWith<_OnlinePlayer> get copyWith =>
      __$OnlinePlayerCopyWithImpl<_OnlinePlayer>(this, _$identity);
}

abstract class _OnlinePlayer implements OnlinePlayer, AbstractPlayer {
  const factory _OnlinePlayer(
      {required UniqueId id,
      required String name,
      required KtList<Set> sets,
      bool won,
      int wonLegsOrSets,
      PlayerStats stats}) = _$_OnlinePlayer;

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  KtList<Set> get sets => throw _privateConstructorUsedError;
  @override
  bool get won => throw _privateConstructorUsedError;
  @override
  int get wonLegsOrSets => throw _privateConstructorUsedError;
  @override
  PlayerStats get stats => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OnlinePlayerCopyWith<_OnlinePlayer> get copyWith =>
      throw _privateConstructorUsedError;
}
