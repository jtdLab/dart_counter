// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'double_training_game_snapshot_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DoubleTrainingGameSnapshotDtoTearOff {
  const _$DoubleTrainingGameSnapshotDtoTearOff();

  _DoubleTrainingGameSnapshotDto call(
      {required String status,
      required String mode,
      required List<DoubleTrainingPlayerSnapshotDto> players,
      required DoubleTrainingPlayerSnapshotDto owner}) {
    return _DoubleTrainingGameSnapshotDto(
      status: status,
      mode: mode,
      players: players,
      owner: owner,
    );
  }
}

/// @nodoc
const $DoubleTrainingGameSnapshotDto = _$DoubleTrainingGameSnapshotDtoTearOff();

/// @nodoc
mixin _$DoubleTrainingGameSnapshotDto {
  String get status => throw _privateConstructorUsedError;
  String get mode => throw _privateConstructorUsedError;
  List<DoubleTrainingPlayerSnapshotDto> get players =>
      throw _privateConstructorUsedError;
  DoubleTrainingPlayerSnapshotDto get owner =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DoubleTrainingGameSnapshotDtoCopyWith<DoubleTrainingGameSnapshotDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoubleTrainingGameSnapshotDtoCopyWith<$Res> {
  factory $DoubleTrainingGameSnapshotDtoCopyWith(
          DoubleTrainingGameSnapshotDto value,
          $Res Function(DoubleTrainingGameSnapshotDto) then) =
      _$DoubleTrainingGameSnapshotDtoCopyWithImpl<$Res>;
  $Res call(
      {String status,
      String mode,
      List<DoubleTrainingPlayerSnapshotDto> players,
      DoubleTrainingPlayerSnapshotDto owner});

  $DoubleTrainingPlayerSnapshotDtoCopyWith<$Res> get owner;
}

/// @nodoc
class _$DoubleTrainingGameSnapshotDtoCopyWithImpl<$Res>
    implements $DoubleTrainingGameSnapshotDtoCopyWith<$Res> {
  _$DoubleTrainingGameSnapshotDtoCopyWithImpl(this._value, this._then);

  final DoubleTrainingGameSnapshotDto _value;
  // ignore: unused_field
  final $Res Function(DoubleTrainingGameSnapshotDto) _then;

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
              as List<DoubleTrainingPlayerSnapshotDto>,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as DoubleTrainingPlayerSnapshotDto,
    ));
  }

  @override
  $DoubleTrainingPlayerSnapshotDtoCopyWith<$Res> get owner {
    return $DoubleTrainingPlayerSnapshotDtoCopyWith<$Res>(_value.owner,
        (value) {
      return _then(_value.copyWith(owner: value));
    });
  }
}

/// @nodoc
abstract class _$DoubleTrainingGameSnapshotDtoCopyWith<$Res>
    implements $DoubleTrainingGameSnapshotDtoCopyWith<$Res> {
  factory _$DoubleTrainingGameSnapshotDtoCopyWith(
          _DoubleTrainingGameSnapshotDto value,
          $Res Function(_DoubleTrainingGameSnapshotDto) then) =
      __$DoubleTrainingGameSnapshotDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String status,
      String mode,
      List<DoubleTrainingPlayerSnapshotDto> players,
      DoubleTrainingPlayerSnapshotDto owner});

  @override
  $DoubleTrainingPlayerSnapshotDtoCopyWith<$Res> get owner;
}

/// @nodoc
class __$DoubleTrainingGameSnapshotDtoCopyWithImpl<$Res>
    extends _$DoubleTrainingGameSnapshotDtoCopyWithImpl<$Res>
    implements _$DoubleTrainingGameSnapshotDtoCopyWith<$Res> {
  __$DoubleTrainingGameSnapshotDtoCopyWithImpl(
      _DoubleTrainingGameSnapshotDto _value,
      $Res Function(_DoubleTrainingGameSnapshotDto) _then)
      : super(_value, (v) => _then(v as _DoubleTrainingGameSnapshotDto));

  @override
  _DoubleTrainingGameSnapshotDto get _value =>
      super._value as _DoubleTrainingGameSnapshotDto;

  @override
  $Res call({
    Object? status = freezed,
    Object? mode = freezed,
    Object? players = freezed,
    Object? owner = freezed,
  }) {
    return _then(_DoubleTrainingGameSnapshotDto(
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
              as List<DoubleTrainingPlayerSnapshotDto>,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as DoubleTrainingPlayerSnapshotDto,
    ));
  }
}

/// @nodoc

class _$_DoubleTrainingGameSnapshotDto extends _DoubleTrainingGameSnapshotDto {
  const _$_DoubleTrainingGameSnapshotDto(
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
  final List<DoubleTrainingPlayerSnapshotDto> players;
  @override
  final DoubleTrainingPlayerSnapshotDto owner;

  @override
  String toString() {
    return 'DoubleTrainingGameSnapshotDto(status: $status, mode: $mode, players: $players, owner: $owner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DoubleTrainingGameSnapshotDto &&
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
  _$DoubleTrainingGameSnapshotDtoCopyWith<_DoubleTrainingGameSnapshotDto>
      get copyWith => __$DoubleTrainingGameSnapshotDtoCopyWithImpl<
          _DoubleTrainingGameSnapshotDto>(this, _$identity);
}

abstract class _DoubleTrainingGameSnapshotDto
    extends DoubleTrainingGameSnapshotDto {
  const factory _DoubleTrainingGameSnapshotDto(
          {required String status,
          required String mode,
          required List<DoubleTrainingPlayerSnapshotDto> players,
          required DoubleTrainingPlayerSnapshotDto owner}) =
      _$_DoubleTrainingGameSnapshotDto;
  const _DoubleTrainingGameSnapshotDto._() : super._();

  @override
  String get status;
  @override
  String get mode;
  @override
  List<DoubleTrainingPlayerSnapshotDto> get players;
  @override
  DoubleTrainingPlayerSnapshotDto get owner;
  @override
  @JsonKey(ignore: true)
  _$DoubleTrainingGameSnapshotDtoCopyWith<_DoubleTrainingGameSnapshotDto>
      get copyWith => throw _privateConstructorUsedError;
}
