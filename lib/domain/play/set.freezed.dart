// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'set.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SetTearOff {
  const _$SetTearOff();

  _Set call(
      {required KtList<Leg> legs,
      required bool won,
      required int wonLegs,
      required SetStats stats}) {
    return _Set(
      legs: legs,
      won: won,
      wonLegs: wonLegs,
      stats: stats,
    );
  }
}

/// @nodoc
const $Set = _$SetTearOff();

/// @nodoc
mixin _$Set {
  KtList<Leg> get legs => throw _privateConstructorUsedError;
  bool get won => throw _privateConstructorUsedError;
  int get wonLegs => throw _privateConstructorUsedError;
  SetStats get stats => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetCopyWith<Set> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetCopyWith<$Res> {
  factory $SetCopyWith(Set value, $Res Function(Set) then) =
      _$SetCopyWithImpl<$Res>;
  $Res call({KtList<Leg> legs, bool won, int wonLegs, SetStats stats});

  $SetStatsCopyWith<$Res> get stats;
}

/// @nodoc
class _$SetCopyWithImpl<$Res> implements $SetCopyWith<$Res> {
  _$SetCopyWithImpl(this._value, this._then);

  final Set _value;
  // ignore: unused_field
  final $Res Function(Set) _then;

  @override
  $Res call({
    Object? legs = freezed,
    Object? won = freezed,
    Object? wonLegs = freezed,
    Object? stats = freezed,
  }) {
    return _then(_value.copyWith(
      legs: legs == freezed
          ? _value.legs
          : legs // ignore: cast_nullable_to_non_nullable
              as KtList<Leg>,
      won: won == freezed
          ? _value.won
          : won // ignore: cast_nullable_to_non_nullable
              as bool,
      wonLegs: wonLegs == freezed
          ? _value.wonLegs
          : wonLegs // ignore: cast_nullable_to_non_nullable
              as int,
      stats: stats == freezed
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as SetStats,
    ));
  }

  @override
  $SetStatsCopyWith<$Res> get stats {
    return $SetStatsCopyWith<$Res>(_value.stats, (value) {
      return _then(_value.copyWith(stats: value));
    });
  }
}

/// @nodoc
abstract class _$SetCopyWith<$Res> implements $SetCopyWith<$Res> {
  factory _$SetCopyWith(_Set value, $Res Function(_Set) then) =
      __$SetCopyWithImpl<$Res>;
  @override
  $Res call({KtList<Leg> legs, bool won, int wonLegs, SetStats stats});

  @override
  $SetStatsCopyWith<$Res> get stats;
}

/// @nodoc
class __$SetCopyWithImpl<$Res> extends _$SetCopyWithImpl<$Res>
    implements _$SetCopyWith<$Res> {
  __$SetCopyWithImpl(_Set _value, $Res Function(_Set) _then)
      : super(_value, (v) => _then(v as _Set));

  @override
  _Set get _value => super._value as _Set;

  @override
  $Res call({
    Object? legs = freezed,
    Object? won = freezed,
    Object? wonLegs = freezed,
    Object? stats = freezed,
  }) {
    return _then(_Set(
      legs: legs == freezed
          ? _value.legs
          : legs // ignore: cast_nullable_to_non_nullable
              as KtList<Leg>,
      won: won == freezed
          ? _value.won
          : won // ignore: cast_nullable_to_non_nullable
              as bool,
      wonLegs: wonLegs == freezed
          ? _value.wonLegs
          : wonLegs // ignore: cast_nullable_to_non_nullable
              as int,
      stats: stats == freezed
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as SetStats,
    ));
  }
}

/// @nodoc

class _$_Set implements _Set {
  const _$_Set(
      {required this.legs,
      required this.won,
      required this.wonLegs,
      required this.stats});

  @override
  final KtList<Leg> legs;
  @override
  final bool won;
  @override
  final int wonLegs;
  @override
  final SetStats stats;

  @override
  String toString() {
    return 'Set(legs: $legs, won: $won, wonLegs: $wonLegs, stats: $stats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Set &&
            (identical(other.legs, legs) ||
                const DeepCollectionEquality().equals(other.legs, legs)) &&
            (identical(other.won, won) ||
                const DeepCollectionEquality().equals(other.won, won)) &&
            (identical(other.wonLegs, wonLegs) ||
                const DeepCollectionEquality()
                    .equals(other.wonLegs, wonLegs)) &&
            (identical(other.stats, stats) ||
                const DeepCollectionEquality().equals(other.stats, stats)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(legs) ^
      const DeepCollectionEquality().hash(won) ^
      const DeepCollectionEquality().hash(wonLegs) ^
      const DeepCollectionEquality().hash(stats);

  @JsonKey(ignore: true)
  @override
  _$SetCopyWith<_Set> get copyWith =>
      __$SetCopyWithImpl<_Set>(this, _$identity);
}

abstract class _Set implements Set {
  const factory _Set(
      {required KtList<Leg> legs,
      required bool won,
      required int wonLegs,
      required SetStats stats}) = _$_Set;

  @override
  KtList<Leg> get legs => throw _privateConstructorUsedError;
  @override
  bool get won => throw _privateConstructorUsedError;
  @override
  int get wonLegs => throw _privateConstructorUsedError;
  @override
  SetStats get stats => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SetCopyWith<_Set> get copyWith => throw _privateConstructorUsedError;
}
