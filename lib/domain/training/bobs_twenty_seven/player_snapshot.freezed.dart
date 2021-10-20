// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'player_snapshot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlayerSnapshotTearOff {
  const _$PlayerSnapshotTearOff();

  _PlayerSnapshot call(
      {required UniqueId id,
      required String? name,
      required int targetValue,
      required int points,
      required int singles,
      required int doubles,
      required int triples,
      required int missed}) {
    return _PlayerSnapshot(
      id: id,
      name: name,
      targetValue: targetValue,
      points: points,
      singles: singles,
      doubles: doubles,
      triples: triples,
      missed: missed,
    );
  }
}

/// @nodoc
const $PlayerSnapshot = _$PlayerSnapshotTearOff();

/// @nodoc
mixin _$PlayerSnapshot {
  UniqueId get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int get targetValue => throw _privateConstructorUsedError;
  int get points => throw _privateConstructorUsedError;
  int get singles => throw _privateConstructorUsedError;
  int get doubles => throw _privateConstructorUsedError;
  int get triples => throw _privateConstructorUsedError;
  int get missed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayerSnapshotCopyWith<PlayerSnapshot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerSnapshotCopyWith<$Res> {
  factory $PlayerSnapshotCopyWith(
          PlayerSnapshot value, $Res Function(PlayerSnapshot) then) =
      _$PlayerSnapshotCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      String? name,
      int targetValue,
      int points,
      int singles,
      int doubles,
      int triples,
      int missed});
}

/// @nodoc
class _$PlayerSnapshotCopyWithImpl<$Res>
    implements $PlayerSnapshotCopyWith<$Res> {
  _$PlayerSnapshotCopyWithImpl(this._value, this._then);

  final PlayerSnapshot _value;
  // ignore: unused_field
  final $Res Function(PlayerSnapshot) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? targetValue = freezed,
    Object? points = freezed,
    Object? singles = freezed,
    Object? doubles = freezed,
    Object? triples = freezed,
    Object? missed = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      targetValue: targetValue == freezed
          ? _value.targetValue
          : targetValue // ignore: cast_nullable_to_non_nullable
              as int,
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      singles: singles == freezed
          ? _value.singles
          : singles // ignore: cast_nullable_to_non_nullable
              as int,
      doubles: doubles == freezed
          ? _value.doubles
          : doubles // ignore: cast_nullable_to_non_nullable
              as int,
      triples: triples == freezed
          ? _value.triples
          : triples // ignore: cast_nullable_to_non_nullable
              as int,
      missed: missed == freezed
          ? _value.missed
          : missed // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$PlayerSnapshotCopyWith<$Res>
    implements $PlayerSnapshotCopyWith<$Res> {
  factory _$PlayerSnapshotCopyWith(
          _PlayerSnapshot value, $Res Function(_PlayerSnapshot) then) =
      __$PlayerSnapshotCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      String? name,
      int targetValue,
      int points,
      int singles,
      int doubles,
      int triples,
      int missed});
}

/// @nodoc
class __$PlayerSnapshotCopyWithImpl<$Res>
    extends _$PlayerSnapshotCopyWithImpl<$Res>
    implements _$PlayerSnapshotCopyWith<$Res> {
  __$PlayerSnapshotCopyWithImpl(
      _PlayerSnapshot _value, $Res Function(_PlayerSnapshot) _then)
      : super(_value, (v) => _then(v as _PlayerSnapshot));

  @override
  _PlayerSnapshot get _value => super._value as _PlayerSnapshot;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? targetValue = freezed,
    Object? points = freezed,
    Object? singles = freezed,
    Object? doubles = freezed,
    Object? triples = freezed,
    Object? missed = freezed,
  }) {
    return _then(_PlayerSnapshot(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      targetValue: targetValue == freezed
          ? _value.targetValue
          : targetValue // ignore: cast_nullable_to_non_nullable
              as int,
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      singles: singles == freezed
          ? _value.singles
          : singles // ignore: cast_nullable_to_non_nullable
              as int,
      doubles: doubles == freezed
          ? _value.doubles
          : doubles // ignore: cast_nullable_to_non_nullable
              as int,
      triples: triples == freezed
          ? _value.triples
          : triples // ignore: cast_nullable_to_non_nullable
              as int,
      missed: missed == freezed
          ? _value.missed
          : missed // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@Implements(TrainingPlayerSnapshot)
class _$_PlayerSnapshot implements _PlayerSnapshot {
  const _$_PlayerSnapshot(
      {required this.id,
      required this.name,
      required this.targetValue,
      required this.points,
      required this.singles,
      required this.doubles,
      required this.triples,
      required this.missed});

  @override
  final UniqueId id;
  @override
  final String? name;
  @override
  final int targetValue;
  @override
  final int points;
  @override
  final int singles;
  @override
  final int doubles;
  @override
  final int triples;
  @override
  final int missed;

  @override
  String toString() {
    return 'PlayerSnapshot(id: $id, name: $name, targetValue: $targetValue, points: $points, singles: $singles, doubles: $doubles, triples: $triples, missed: $missed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlayerSnapshot &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.targetValue, targetValue) ||
                const DeepCollectionEquality()
                    .equals(other.targetValue, targetValue)) &&
            (identical(other.points, points) ||
                const DeepCollectionEquality().equals(other.points, points)) &&
            (identical(other.singles, singles) ||
                const DeepCollectionEquality()
                    .equals(other.singles, singles)) &&
            (identical(other.doubles, doubles) ||
                const DeepCollectionEquality()
                    .equals(other.doubles, doubles)) &&
            (identical(other.triples, triples) ||
                const DeepCollectionEquality()
                    .equals(other.triples, triples)) &&
            (identical(other.missed, missed) ||
                const DeepCollectionEquality().equals(other.missed, missed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(targetValue) ^
      const DeepCollectionEquality().hash(points) ^
      const DeepCollectionEquality().hash(singles) ^
      const DeepCollectionEquality().hash(doubles) ^
      const DeepCollectionEquality().hash(triples) ^
      const DeepCollectionEquality().hash(missed);

  @JsonKey(ignore: true)
  @override
  _$PlayerSnapshotCopyWith<_PlayerSnapshot> get copyWith =>
      __$PlayerSnapshotCopyWithImpl<_PlayerSnapshot>(this, _$identity);
}

abstract class _PlayerSnapshot
    implements PlayerSnapshot, TrainingPlayerSnapshot {
  const factory _PlayerSnapshot(
      {required UniqueId id,
      required String? name,
      required int targetValue,
      required int points,
      required int singles,
      required int doubles,
      required int triples,
      required int missed}) = _$_PlayerSnapshot;

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  int get targetValue => throw _privateConstructorUsedError;
  @override
  int get points => throw _privateConstructorUsedError;
  @override
  int get singles => throw _privateConstructorUsedError;
  @override
  int get doubles => throw _privateConstructorUsedError;
  @override
  int get triples => throw _privateConstructorUsedError;
  @override
  int get missed => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlayerSnapshotCopyWith<_PlayerSnapshot> get copyWith =>
      throw _privateConstructorUsedError;
}
