// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'player_snapshot_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlayerSnapshotDtoTearOff {
  const _$PlayerSnapshotDtoTearOff();

  _PlayerSnapshotDto call(
      {required String id,
      required String? name,
      required int? takesLeft,
      required double? average,
      required int? points}) {
    return _PlayerSnapshotDto(
      id: id,
      name: name,
      takesLeft: takesLeft,
      average: average,
      points: points,
    );
  }
}

/// @nodoc
const $PlayerSnapshotDto = _$PlayerSnapshotDtoTearOff();

/// @nodoc
mixin _$PlayerSnapshotDto {
  String get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get takesLeft => throw _privateConstructorUsedError;
  double? get average => throw _privateConstructorUsedError;
  int? get points => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayerSnapshotDtoCopyWith<PlayerSnapshotDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerSnapshotDtoCopyWith<$Res> {
  factory $PlayerSnapshotDtoCopyWith(
          PlayerSnapshotDto value, $Res Function(PlayerSnapshotDto) then) =
      _$PlayerSnapshotDtoCopyWithImpl<$Res>;
  $Res call(
      {String id, String? name, int? takesLeft, double? average, int? points});
}

/// @nodoc
class _$PlayerSnapshotDtoCopyWithImpl<$Res>
    implements $PlayerSnapshotDtoCopyWith<$Res> {
  _$PlayerSnapshotDtoCopyWithImpl(this._value, this._then);

  final PlayerSnapshotDto _value;
  // ignore: unused_field
  final $Res Function(PlayerSnapshotDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? takesLeft = freezed,
    Object? average = freezed,
    Object? points = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      takesLeft: takesLeft == freezed
          ? _value.takesLeft
          : takesLeft // ignore: cast_nullable_to_non_nullable
              as int?,
      average: average == freezed
          ? _value.average
          : average // ignore: cast_nullable_to_non_nullable
              as double?,
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$PlayerSnapshotDtoCopyWith<$Res>
    implements $PlayerSnapshotDtoCopyWith<$Res> {
  factory _$PlayerSnapshotDtoCopyWith(
          _PlayerSnapshotDto value, $Res Function(_PlayerSnapshotDto) then) =
      __$PlayerSnapshotDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id, String? name, int? takesLeft, double? average, int? points});
}

/// @nodoc
class __$PlayerSnapshotDtoCopyWithImpl<$Res>
    extends _$PlayerSnapshotDtoCopyWithImpl<$Res>
    implements _$PlayerSnapshotDtoCopyWith<$Res> {
  __$PlayerSnapshotDtoCopyWithImpl(
      _PlayerSnapshotDto _value, $Res Function(_PlayerSnapshotDto) _then)
      : super(_value, (v) => _then(v as _PlayerSnapshotDto));

  @override
  _PlayerSnapshotDto get _value => super._value as _PlayerSnapshotDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? takesLeft = freezed,
    Object? average = freezed,
    Object? points = freezed,
  }) {
    return _then(_PlayerSnapshotDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      takesLeft: takesLeft == freezed
          ? _value.takesLeft
          : takesLeft // ignore: cast_nullable_to_non_nullable
              as int?,
      average: average == freezed
          ? _value.average
          : average // ignore: cast_nullable_to_non_nullable
              as double?,
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_PlayerSnapshotDto extends _PlayerSnapshotDto {
  const _$_PlayerSnapshotDto(
      {required this.id,
      required this.name,
      required this.takesLeft,
      required this.average,
      required this.points})
      : super._();

  @override
  final String id;
  @override
  final String? name;
  @override
  final int? takesLeft;
  @override
  final double? average;
  @override
  final int? points;

  @override
  String toString() {
    return 'PlayerSnapshotDto(id: $id, name: $name, takesLeft: $takesLeft, average: $average, points: $points)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlayerSnapshotDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.takesLeft, takesLeft) ||
                const DeepCollectionEquality()
                    .equals(other.takesLeft, takesLeft)) &&
            (identical(other.average, average) ||
                const DeepCollectionEquality()
                    .equals(other.average, average)) &&
            (identical(other.points, points) ||
                const DeepCollectionEquality().equals(other.points, points)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(takesLeft) ^
      const DeepCollectionEquality().hash(average) ^
      const DeepCollectionEquality().hash(points);

  @JsonKey(ignore: true)
  @override
  _$PlayerSnapshotDtoCopyWith<_PlayerSnapshotDto> get copyWith =>
      __$PlayerSnapshotDtoCopyWithImpl<_PlayerSnapshotDto>(this, _$identity);
}

abstract class _PlayerSnapshotDto extends PlayerSnapshotDto {
  const factory _PlayerSnapshotDto(
      {required String id,
      required String? name,
      required int? takesLeft,
      required double? average,
      required int? points}) = _$_PlayerSnapshotDto;
  const _PlayerSnapshotDto._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  int? get takesLeft => throw _privateConstructorUsedError;
  @override
  double? get average => throw _privateConstructorUsedError;
  @override
  int? get points => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlayerSnapshotDtoCopyWith<_PlayerSnapshotDto> get copyWith =>
      throw _privateConstructorUsedError;
}
