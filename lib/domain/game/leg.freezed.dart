// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'leg.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LegTearOff {
  const _$LegTearOff();

  _Leg call(
      {required bool won,
      required KtList<Throw> throws,
      required LegStats stats}) {
    return _Leg(
      won: won,
      throws: throws,
      stats: stats,
    );
  }
}

/// @nodoc
const $Leg = _$LegTearOff();

/// @nodoc
mixin _$Leg {
  bool get won => throw _privateConstructorUsedError;
  KtList<Throw> get throws => throw _privateConstructorUsedError;
  LegStats get stats => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LegCopyWith<Leg> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LegCopyWith<$Res> {
  factory $LegCopyWith(Leg value, $Res Function(Leg) then) =
      _$LegCopyWithImpl<$Res>;
  $Res call({bool won, KtList<Throw> throws, LegStats stats});

  $LegStatsCopyWith<$Res> get stats;
}

/// @nodoc
class _$LegCopyWithImpl<$Res> implements $LegCopyWith<$Res> {
  _$LegCopyWithImpl(this._value, this._then);

  final Leg _value;
  // ignore: unused_field
  final $Res Function(Leg) _then;

  @override
  $Res call({
    Object? won = freezed,
    Object? throws = freezed,
    Object? stats = freezed,
  }) {
    return _then(_value.copyWith(
      won: won == freezed
          ? _value.won
          : won // ignore: cast_nullable_to_non_nullable
              as bool,
      throws: throws == freezed
          ? _value.throws
          : throws // ignore: cast_nullable_to_non_nullable
              as KtList<Throw>,
      stats: stats == freezed
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as LegStats,
    ));
  }

  @override
  $LegStatsCopyWith<$Res> get stats {
    return $LegStatsCopyWith<$Res>(_value.stats, (value) {
      return _then(_value.copyWith(stats: value));
    });
  }
}

/// @nodoc
abstract class _$LegCopyWith<$Res> implements $LegCopyWith<$Res> {
  factory _$LegCopyWith(_Leg value, $Res Function(_Leg) then) =
      __$LegCopyWithImpl<$Res>;
  @override
  $Res call({bool won, KtList<Throw> throws, LegStats stats});

  @override
  $LegStatsCopyWith<$Res> get stats;
}

/// @nodoc
class __$LegCopyWithImpl<$Res> extends _$LegCopyWithImpl<$Res>
    implements _$LegCopyWith<$Res> {
  __$LegCopyWithImpl(_Leg _value, $Res Function(_Leg) _then)
      : super(_value, (v) => _then(v as _Leg));

  @override
  _Leg get _value => super._value as _Leg;

  @override
  $Res call({
    Object? won = freezed,
    Object? throws = freezed,
    Object? stats = freezed,
  }) {
    return _then(_Leg(
      won: won == freezed
          ? _value.won
          : won // ignore: cast_nullable_to_non_nullable
              as bool,
      throws: throws == freezed
          ? _value.throws
          : throws // ignore: cast_nullable_to_non_nullable
              as KtList<Throw>,
      stats: stats == freezed
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as LegStats,
    ));
  }
}

/// @nodoc

class _$_Leg implements _Leg {
  const _$_Leg({required this.won, required this.throws, required this.stats});

  @override
  final bool won;
  @override
  final KtList<Throw> throws;
  @override
  final LegStats stats;

  @override
  String toString() {
    return 'Leg(won: $won, throws: $throws, stats: $stats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Leg &&
            (identical(other.won, won) || other.won == won) &&
            (identical(other.throws, throws) || other.throws == throws) &&
            (identical(other.stats, stats) || other.stats == stats));
  }

  @override
  int get hashCode => Object.hash(runtimeType, won, throws, stats);

  @JsonKey(ignore: true)
  @override
  _$LegCopyWith<_Leg> get copyWith =>
      __$LegCopyWithImpl<_Leg>(this, _$identity);
}

abstract class _Leg implements Leg {
  const factory _Leg(
      {required bool won,
      required KtList<Throw> throws,
      required LegStats stats}) = _$_Leg;

  @override
  bool get won;
  @override
  KtList<Throw> get throws;
  @override
  LegStats get stats;
  @override
  @JsonKey(ignore: true)
  _$LegCopyWith<_Leg> get copyWith => throw _privateConstructorUsedError;
}
