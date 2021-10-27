// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_snapshot_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GameSnapshotDtoTearOff {
  const _$GameSnapshotDtoTearOff();

  _GameSnapshotDto call(
      {required String status,
      required int numberOfTakes,
      required KtList<PlayerSnapshotDto> players,
      required PlayerSnapshotDto owner}) {
    return _GameSnapshotDto(
      status: status,
      numberOfTakes: numberOfTakes,
      players: players,
      owner: owner,
    );
  }
}

/// @nodoc
const $GameSnapshotDto = _$GameSnapshotDtoTearOff();

/// @nodoc
mixin _$GameSnapshotDto {
  String get status => throw _privateConstructorUsedError;
  int get numberOfTakes => throw _privateConstructorUsedError;
  KtList<PlayerSnapshotDto> get players => throw _privateConstructorUsedError;
  PlayerSnapshotDto get owner => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameSnapshotDtoCopyWith<GameSnapshotDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameSnapshotDtoCopyWith<$Res> {
  factory $GameSnapshotDtoCopyWith(
          GameSnapshotDto value, $Res Function(GameSnapshotDto) then) =
      _$GameSnapshotDtoCopyWithImpl<$Res>;
  $Res call(
      {String status,
      int numberOfTakes,
      KtList<PlayerSnapshotDto> players,
      PlayerSnapshotDto owner});

  $PlayerSnapshotDtoCopyWith<$Res> get owner;
}

/// @nodoc
class _$GameSnapshotDtoCopyWithImpl<$Res>
    implements $GameSnapshotDtoCopyWith<$Res> {
  _$GameSnapshotDtoCopyWithImpl(this._value, this._then);

  final GameSnapshotDto _value;
  // ignore: unused_field
  final $Res Function(GameSnapshotDto) _then;

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
              as KtList<PlayerSnapshotDto>,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as PlayerSnapshotDto,
    ));
  }

  @override
  $PlayerSnapshotDtoCopyWith<$Res> get owner {
    return $PlayerSnapshotDtoCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }
}

/// @nodoc
abstract class _$GameSnapshotDtoCopyWith<$Res>
    implements $GameSnapshotDtoCopyWith<$Res> {
  factory _$GameSnapshotDtoCopyWith(
          _GameSnapshotDto value, $Res Function(_GameSnapshotDto) then) =
      __$GameSnapshotDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String status,
      int numberOfTakes,
      KtList<PlayerSnapshotDto> players,
      PlayerSnapshotDto owner});

  @override
  $PlayerSnapshotDtoCopyWith<$Res> get owner;
}

/// @nodoc
class __$GameSnapshotDtoCopyWithImpl<$Res>
    extends _$GameSnapshotDtoCopyWithImpl<$Res>
    implements _$GameSnapshotDtoCopyWith<$Res> {
  __$GameSnapshotDtoCopyWithImpl(
      _GameSnapshotDto _value, $Res Function(_GameSnapshotDto) _then)
      : super(_value, (v) => _then(v as _GameSnapshotDto));

  @override
  _GameSnapshotDto get _value => super._value as _GameSnapshotDto;

  @override
  $Res call({
    Object? status = freezed,
    Object? numberOfTakes = freezed,
    Object? players = freezed,
    Object? owner = freezed,
  }) {
    return _then(_GameSnapshotDto(
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
              as KtList<PlayerSnapshotDto>,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as PlayerSnapshotDto,
    ));
  }
}

/// @nodoc

class _$_GameSnapshotDto extends _GameSnapshotDto {
  const _$_GameSnapshotDto(
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
  final KtList<PlayerSnapshotDto> players;
  @override
  final PlayerSnapshotDto owner;

  @override
  String toString() {
    return 'GameSnapshotDto(status: $status, numberOfTakes: $numberOfTakes, players: $players, owner: $owner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GameSnapshotDto &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.numberOfTakes, numberOfTakes) ||
                const DeepCollectionEquality()
                    .equals(other.numberOfTakes, numberOfTakes)) &&
            (identical(other.players, players) ||
                const DeepCollectionEquality()
                    .equals(other.players, players)) &&
            (identical(other.owner, owner) ||
                const DeepCollectionEquality().equals(other.owner, owner)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(numberOfTakes) ^
      const DeepCollectionEquality().hash(players) ^
      const DeepCollectionEquality().hash(owner);

  @JsonKey(ignore: true)
  @override
  _$GameSnapshotDtoCopyWith<_GameSnapshotDto> get copyWith =>
      __$GameSnapshotDtoCopyWithImpl<_GameSnapshotDto>(this, _$identity);
}

abstract class _GameSnapshotDto extends GameSnapshotDto {
  const factory _GameSnapshotDto(
      {required String status,
      required int numberOfTakes,
      required KtList<PlayerSnapshotDto> players,
      required PlayerSnapshotDto owner}) = _$_GameSnapshotDto;
  const _GameSnapshotDto._() : super._();

  @override
  String get status => throw _privateConstructorUsedError;
  @override
  int get numberOfTakes => throw _privateConstructorUsedError;
  @override
  KtList<PlayerSnapshotDto> get players => throw _privateConstructorUsedError;
  @override
  PlayerSnapshotDto get owner => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GameSnapshotDtoCopyWith<_GameSnapshotDto> get copyWith =>
      throw _privateConstructorUsedError;
}
