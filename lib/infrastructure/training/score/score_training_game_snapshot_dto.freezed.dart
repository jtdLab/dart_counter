// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'score_training_game_snapshot_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ScoreTrainingGameSnapshotDtoTearOff {
  const _$ScoreTrainingGameSnapshotDtoTearOff();

  _ScoreTrainingGameSnapshotDto call(
      {required String status,
      required int numberOfTakes,
      required List<ScoreTrainingPlayerSnapshotDto> players,
      required ScoreTrainingPlayerSnapshotDto owner}) {
    return _ScoreTrainingGameSnapshotDto(
      status: status,
      numberOfTakes: numberOfTakes,
      players: players,
      owner: owner,
    );
  }
}

/// @nodoc
const $ScoreTrainingGameSnapshotDto = _$ScoreTrainingGameSnapshotDtoTearOff();

/// @nodoc
mixin _$ScoreTrainingGameSnapshotDto {
  String get status => throw _privateConstructorUsedError;
  int get numberOfTakes => throw _privateConstructorUsedError;
  List<ScoreTrainingPlayerSnapshotDto> get players =>
      throw _privateConstructorUsedError;
  ScoreTrainingPlayerSnapshotDto get owner =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScoreTrainingGameSnapshotDtoCopyWith<ScoreTrainingGameSnapshotDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoreTrainingGameSnapshotDtoCopyWith<$Res> {
  factory $ScoreTrainingGameSnapshotDtoCopyWith(
          ScoreTrainingGameSnapshotDto value,
          $Res Function(ScoreTrainingGameSnapshotDto) then) =
      _$ScoreTrainingGameSnapshotDtoCopyWithImpl<$Res>;
  $Res call(
      {String status,
      int numberOfTakes,
      List<ScoreTrainingPlayerSnapshotDto> players,
      ScoreTrainingPlayerSnapshotDto owner});

  $ScoreTrainingPlayerSnapshotDtoCopyWith<$Res> get owner;
}

/// @nodoc
class _$ScoreTrainingGameSnapshotDtoCopyWithImpl<$Res>
    implements $ScoreTrainingGameSnapshotDtoCopyWith<$Res> {
  _$ScoreTrainingGameSnapshotDtoCopyWithImpl(this._value, this._then);

  final ScoreTrainingGameSnapshotDto _value;
  // ignore: unused_field
  final $Res Function(ScoreTrainingGameSnapshotDto) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? numberOfTakes = freezed,
    Object? players = freezed,
    Object? owner = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfTakes: numberOfTakes == freezed
          ? _value.numberOfTakes
          : numberOfTakes // ignore: cast_nullable_to_non_nullable
              as int,
      players: players == freezed
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<ScoreTrainingPlayerSnapshotDto>,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ScoreTrainingPlayerSnapshotDto,
    ));
  }

  @override
  $ScoreTrainingPlayerSnapshotDtoCopyWith<$Res> get owner {
    return $ScoreTrainingPlayerSnapshotDtoCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }
}

/// @nodoc
abstract class _$ScoreTrainingGameSnapshotDtoCopyWith<$Res>
    implements $ScoreTrainingGameSnapshotDtoCopyWith<$Res> {
  factory _$ScoreTrainingGameSnapshotDtoCopyWith(
          _ScoreTrainingGameSnapshotDto value,
          $Res Function(_ScoreTrainingGameSnapshotDto) then) =
      __$ScoreTrainingGameSnapshotDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String status,
      int numberOfTakes,
      List<ScoreTrainingPlayerSnapshotDto> players,
      ScoreTrainingPlayerSnapshotDto owner});

  @override
  $ScoreTrainingPlayerSnapshotDtoCopyWith<$Res> get owner;
}

/// @nodoc
class __$ScoreTrainingGameSnapshotDtoCopyWithImpl<$Res>
    extends _$ScoreTrainingGameSnapshotDtoCopyWithImpl<$Res>
    implements _$ScoreTrainingGameSnapshotDtoCopyWith<$Res> {
  __$ScoreTrainingGameSnapshotDtoCopyWithImpl(
      _ScoreTrainingGameSnapshotDto _value,
      $Res Function(_ScoreTrainingGameSnapshotDto) _then)
      : super(_value, (v) => _then(v as _ScoreTrainingGameSnapshotDto));

  @override
  _ScoreTrainingGameSnapshotDto get _value =>
      super._value as _ScoreTrainingGameSnapshotDto;

  @override
  $Res call({
    Object? status = freezed,
    Object? numberOfTakes = freezed,
    Object? players = freezed,
    Object? owner = freezed,
  }) {
    return _then(_ScoreTrainingGameSnapshotDto(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfTakes: numberOfTakes == freezed
          ? _value.numberOfTakes
          : numberOfTakes // ignore: cast_nullable_to_non_nullable
              as int,
      players: players == freezed
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<ScoreTrainingPlayerSnapshotDto>,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ScoreTrainingPlayerSnapshotDto,
    ));
  }
}

/// @nodoc

class _$_ScoreTrainingGameSnapshotDto extends _ScoreTrainingGameSnapshotDto {
  const _$_ScoreTrainingGameSnapshotDto(
      {required this.status,
      required this.numberOfTakes,
      required this.players,
      required this.owner})
      : super._();

  @override
  final String status;
  @override
  final int numberOfTakes;
  @override
  final List<ScoreTrainingPlayerSnapshotDto> players;
  @override
  final ScoreTrainingPlayerSnapshotDto owner;

  @override
  String toString() {
    return 'ScoreTrainingGameSnapshotDto(status: $status, numberOfTakes: $numberOfTakes, players: $players, owner: $owner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ScoreTrainingGameSnapshotDto &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.numberOfTakes, numberOfTakes) &&
            const DeepCollectionEquality().equals(other.players, players) &&
            const DeepCollectionEquality().equals(other.owner, owner));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(numberOfTakes),
      const DeepCollectionEquality().hash(players),
      const DeepCollectionEquality().hash(owner));

  @JsonKey(ignore: true)
  @override
  _$ScoreTrainingGameSnapshotDtoCopyWith<_ScoreTrainingGameSnapshotDto>
      get copyWith => __$ScoreTrainingGameSnapshotDtoCopyWithImpl<
          _ScoreTrainingGameSnapshotDto>(this, _$identity);
}

abstract class _ScoreTrainingGameSnapshotDto
    extends ScoreTrainingGameSnapshotDto {
  const factory _ScoreTrainingGameSnapshotDto(
          {required String status,
          required int numberOfTakes,
          required List<ScoreTrainingPlayerSnapshotDto> players,
          required ScoreTrainingPlayerSnapshotDto owner}) =
      _$_ScoreTrainingGameSnapshotDto;
  const _ScoreTrainingGameSnapshotDto._() : super._();

  @override
  String get status;
  @override
  int get numberOfTakes;
  @override
  List<ScoreTrainingPlayerSnapshotDto> get players;
  @override
  ScoreTrainingPlayerSnapshotDto get owner;
  @override
  @JsonKey(ignore: true)
  _$ScoreTrainingGameSnapshotDtoCopyWith<_ScoreTrainingGameSnapshotDto>
      get copyWith => throw _privateConstructorUsedError;
}
