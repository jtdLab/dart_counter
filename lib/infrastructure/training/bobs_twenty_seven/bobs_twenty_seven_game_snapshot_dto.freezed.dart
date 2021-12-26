// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bobs_twenty_seven_game_snapshot_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BobsTwentySevenGameSnapshotDtoTearOff {
  const _$BobsTwentySevenGameSnapshotDtoTearOff();

  _BobsTwentySevenGameSnapshotDto call(
      {required String status,
      required String mode,
      required List<BobsTwentySevenPlayerSnapshotDto> players,
      required BobsTwentySevenPlayerSnapshotDto owner}) {
    return _BobsTwentySevenGameSnapshotDto(
      status: status,
      mode: mode,
      players: players,
      owner: owner,
    );
  }
}

/// @nodoc
const $BobsTwentySevenGameSnapshotDto =
    _$BobsTwentySevenGameSnapshotDtoTearOff();

/// @nodoc
mixin _$BobsTwentySevenGameSnapshotDto {
  String get status => throw _privateConstructorUsedError;
  String get mode => throw _privateConstructorUsedError;
  List<BobsTwentySevenPlayerSnapshotDto> get players =>
      throw _privateConstructorUsedError;
  BobsTwentySevenPlayerSnapshotDto get owner =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BobsTwentySevenGameSnapshotDtoCopyWith<BobsTwentySevenGameSnapshotDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BobsTwentySevenGameSnapshotDtoCopyWith<$Res> {
  factory $BobsTwentySevenGameSnapshotDtoCopyWith(
          BobsTwentySevenGameSnapshotDto value,
          $Res Function(BobsTwentySevenGameSnapshotDto) then) =
      _$BobsTwentySevenGameSnapshotDtoCopyWithImpl<$Res>;
  $Res call(
      {String status,
      String mode,
      List<BobsTwentySevenPlayerSnapshotDto> players,
      BobsTwentySevenPlayerSnapshotDto owner});

  $BobsTwentySevenPlayerSnapshotDtoCopyWith<$Res> get owner;
}

/// @nodoc
class _$BobsTwentySevenGameSnapshotDtoCopyWithImpl<$Res>
    implements $BobsTwentySevenGameSnapshotDtoCopyWith<$Res> {
  _$BobsTwentySevenGameSnapshotDtoCopyWithImpl(this._value, this._then);

  final BobsTwentySevenGameSnapshotDto _value;
  // ignore: unused_field
  final $Res Function(BobsTwentySevenGameSnapshotDto) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? mode = freezed,
    Object? players = freezed,
    Object? owner = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as String,
      players: players == freezed
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<BobsTwentySevenPlayerSnapshotDto>,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as BobsTwentySevenPlayerSnapshotDto,
    ));
  }

  @override
  $BobsTwentySevenPlayerSnapshotDtoCopyWith<$Res> get owner {
    return $BobsTwentySevenPlayerSnapshotDtoCopyWith<$Res>(_value.owner,
        (value) {
      return _then(_value.copyWith(owner: value));
    });
  }
}

/// @nodoc
abstract class _$BobsTwentySevenGameSnapshotDtoCopyWith<$Res>
    implements $BobsTwentySevenGameSnapshotDtoCopyWith<$Res> {
  factory _$BobsTwentySevenGameSnapshotDtoCopyWith(
          _BobsTwentySevenGameSnapshotDto value,
          $Res Function(_BobsTwentySevenGameSnapshotDto) then) =
      __$BobsTwentySevenGameSnapshotDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String status,
      String mode,
      List<BobsTwentySevenPlayerSnapshotDto> players,
      BobsTwentySevenPlayerSnapshotDto owner});

  @override
  $BobsTwentySevenPlayerSnapshotDtoCopyWith<$Res> get owner;
}

/// @nodoc
class __$BobsTwentySevenGameSnapshotDtoCopyWithImpl<$Res>
    extends _$BobsTwentySevenGameSnapshotDtoCopyWithImpl<$Res>
    implements _$BobsTwentySevenGameSnapshotDtoCopyWith<$Res> {
  __$BobsTwentySevenGameSnapshotDtoCopyWithImpl(
      _BobsTwentySevenGameSnapshotDto _value,
      $Res Function(_BobsTwentySevenGameSnapshotDto) _then)
      : super(_value, (v) => _then(v as _BobsTwentySevenGameSnapshotDto));

  @override
  _BobsTwentySevenGameSnapshotDto get _value =>
      super._value as _BobsTwentySevenGameSnapshotDto;

  @override
  $Res call({
    Object? status = freezed,
    Object? mode = freezed,
    Object? players = freezed,
    Object? owner = freezed,
  }) {
    return _then(_BobsTwentySevenGameSnapshotDto(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as String,
      players: players == freezed
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<BobsTwentySevenPlayerSnapshotDto>,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as BobsTwentySevenPlayerSnapshotDto,
    ));
  }
}

/// @nodoc

class _$_BobsTwentySevenGameSnapshotDto
    extends _BobsTwentySevenGameSnapshotDto {
  const _$_BobsTwentySevenGameSnapshotDto(
      {required this.status,
      required this.mode,
      required this.players,
      required this.owner})
      : super._();

  @override
  final String status;
  @override
  final String mode;
  @override
  final List<BobsTwentySevenPlayerSnapshotDto> players;
  @override
  final BobsTwentySevenPlayerSnapshotDto owner;

  @override
  String toString() {
    return 'BobsTwentySevenGameSnapshotDto(status: $status, mode: $mode, players: $players, owner: $owner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BobsTwentySevenGameSnapshotDto &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.mode, mode) &&
            const DeepCollectionEquality().equals(other.players, players) &&
            const DeepCollectionEquality().equals(other.owner, owner));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(mode),
      const DeepCollectionEquality().hash(players),
      const DeepCollectionEquality().hash(owner));

  @JsonKey(ignore: true)
  @override
  _$BobsTwentySevenGameSnapshotDtoCopyWith<_BobsTwentySevenGameSnapshotDto>
      get copyWith => __$BobsTwentySevenGameSnapshotDtoCopyWithImpl<
          _BobsTwentySevenGameSnapshotDto>(this, _$identity);
}

abstract class _BobsTwentySevenGameSnapshotDto
    extends BobsTwentySevenGameSnapshotDto {
  const factory _BobsTwentySevenGameSnapshotDto(
          {required String status,
          required String mode,
          required List<BobsTwentySevenPlayerSnapshotDto> players,
          required BobsTwentySevenPlayerSnapshotDto owner}) =
      _$_BobsTwentySevenGameSnapshotDto;
  const _BobsTwentySevenGameSnapshotDto._() : super._();

  @override
  String get status;
  @override
  String get mode;
  @override
  List<BobsTwentySevenPlayerSnapshotDto> get players;
  @override
  BobsTwentySevenPlayerSnapshotDto get owner;
  @override
  @JsonKey(ignore: true)
  _$BobsTwentySevenGameSnapshotDtoCopyWith<_BobsTwentySevenGameSnapshotDto>
      get copyWith => throw _privateConstructorUsedError;
}
