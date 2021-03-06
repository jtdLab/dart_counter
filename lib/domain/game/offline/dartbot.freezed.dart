// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dartbot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DartBotTearOff {
  const _$DartBotTearOff();

  _DartBot call(
      {required UniqueId id,
      required Either<KtList<Leg>, KtList<Set>> legsOrSets,
      required bool won,
      required int wonLegsOrSets,
      required PlayerStats stats,
      required int targetAverage}) {
    return _DartBot(
      id: id,
      legsOrSets: legsOrSets,
      won: won,
      wonLegsOrSets: wonLegsOrSets,
      stats: stats,
      targetAverage: targetAverage,
    );
  }
}

/// @nodoc
const $DartBot = _$DartBotTearOff();

/// @nodoc
mixin _$DartBot {
  UniqueId get id => throw _privateConstructorUsedError;
  Either<KtList<Leg>, KtList<Set>> get legsOrSets =>
      throw _privateConstructorUsedError;
  bool get won => throw _privateConstructorUsedError;
  int get wonLegsOrSets => throw _privateConstructorUsedError;
  PlayerStats get stats => throw _privateConstructorUsedError;
  int get targetAverage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DartBotCopyWith<DartBot> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DartBotCopyWith<$Res> {
  factory $DartBotCopyWith(DartBot value, $Res Function(DartBot) then) =
      _$DartBotCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      Either<KtList<Leg>, KtList<Set>> legsOrSets,
      bool won,
      int wonLegsOrSets,
      PlayerStats stats,
      int targetAverage});

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
    Object? legsOrSets = freezed,
    Object? won = freezed,
    Object? wonLegsOrSets = freezed,
    Object? stats = freezed,
    Object? targetAverage = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
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
      targetAverage: targetAverage == freezed
          ? _value.targetAverage
          : targetAverage // ignore: cast_nullable_to_non_nullable
              as int,
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
      Either<KtList<Leg>, KtList<Set>> legsOrSets,
      bool won,
      int wonLegsOrSets,
      PlayerStats stats,
      int targetAverage});

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
    Object? legsOrSets = freezed,
    Object? won = freezed,
    Object? wonLegsOrSets = freezed,
    Object? stats = freezed,
    Object? targetAverage = freezed,
  }) {
    return _then(_DartBot(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
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
      targetAverage: targetAverage == freezed
          ? _value.targetAverage
          : targetAverage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@Implements<AbstractPlayer>()
class _$_DartBot implements _DartBot {
  const _$_DartBot(
      {required this.id,
      required this.legsOrSets,
      required this.won,
      required this.wonLegsOrSets,
      required this.stats,
      required this.targetAverage});

  @override
  final UniqueId id;
  @override
  final Either<KtList<Leg>, KtList<Set>> legsOrSets;
  @override
  final bool won;
  @override
  final int wonLegsOrSets;
  @override
  final PlayerStats stats;
  @override
  final int targetAverage;

  @override
  String toString() {
    return 'DartBot(id: $id, legsOrSets: $legsOrSets, won: $won, wonLegsOrSets: $wonLegsOrSets, stats: $stats, targetAverage: $targetAverage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DartBot &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.legsOrSets, legsOrSets) &&
            const DeepCollectionEquality().equals(other.won, won) &&
            const DeepCollectionEquality()
                .equals(other.wonLegsOrSets, wonLegsOrSets) &&
            const DeepCollectionEquality().equals(other.stats, stats) &&
            const DeepCollectionEquality()
                .equals(other.targetAverage, targetAverage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(legsOrSets),
      const DeepCollectionEquality().hash(won),
      const DeepCollectionEquality().hash(wonLegsOrSets),
      const DeepCollectionEquality().hash(stats),
      const DeepCollectionEquality().hash(targetAverage));

  @JsonKey(ignore: true)
  @override
  _$DartBotCopyWith<_DartBot> get copyWith =>
      __$DartBotCopyWithImpl<_DartBot>(this, _$identity);
}

abstract class _DartBot implements DartBot, AbstractPlayer {
  const factory _DartBot(
      {required UniqueId id,
      required Either<KtList<Leg>, KtList<Set>> legsOrSets,
      required bool won,
      required int wonLegsOrSets,
      required PlayerStats stats,
      required int targetAverage}) = _$_DartBot;

  @override
  UniqueId get id;
  @override
  Either<KtList<Leg>, KtList<Set>> get legsOrSets;
  @override
  bool get won;
  @override
  int get wonLegsOrSets;
  @override
  PlayerStats get stats;
  @override
  int get targetAverage;
  @override
  @JsonKey(ignore: true)
  _$DartBotCopyWith<_DartBot> get copyWith =>
      throw _privateConstructorUsedError;
}
