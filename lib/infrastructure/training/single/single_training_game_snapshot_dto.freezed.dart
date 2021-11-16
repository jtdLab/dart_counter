// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'single_training_game_snapshot_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SingleTrainingGameSnapshotDtoTearOff {
  const _$SingleTrainingGameSnapshotDtoTearOff();

  _SingleTrainingGameSnapshotDto call(
      {required String status,
      required String mode,
      required List<SingleTrainingPlayerSnapshotDto> players,
      required SingleTrainingPlayerSnapshotDto owner}) {
    return _SingleTrainingGameSnapshotDto(
      status: status,
      mode: mode,
      players: players,
      owner: owner,
    );
  }
}

/// @nodoc
const $SingleTrainingGameSnapshotDto = _$SingleTrainingGameSnapshotDtoTearOff();

/// @nodoc
mixin _$SingleTrainingGameSnapshotDto {
  String get status => throw _privateConstructorUsedError;
  String get mode => throw _privateConstructorUsedError;
  List<SingleTrainingPlayerSnapshotDto> get players =>
      throw _privateConstructorUsedError;
  SingleTrainingPlayerSnapshotDto get owner =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SingleTrainingGameSnapshotDtoCopyWith<SingleTrainingGameSnapshotDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleTrainingGameSnapshotDtoCopyWith<$Res> {
  factory $SingleTrainingGameSnapshotDtoCopyWith(
          SingleTrainingGameSnapshotDto value,
          $Res Function(SingleTrainingGameSnapshotDto) then) =
      _$SingleTrainingGameSnapshotDtoCopyWithImpl<$Res>;
  $Res call(
      {String status,
      String mode,
      List<SingleTrainingPlayerSnapshotDto> players,
      SingleTrainingPlayerSnapshotDto owner});

  $SingleTrainingPlayerSnapshotDtoCopyWith<$Res> get owner;
}

/// @nodoc
class _$SingleTrainingGameSnapshotDtoCopyWithImpl<$Res>
    implements $SingleTrainingGameSnapshotDtoCopyWith<$Res> {
  _$SingleTrainingGameSnapshotDtoCopyWithImpl(this._value, this._then);

  final SingleTrainingGameSnapshotDto _value;
  // ignore: unused_field
  final $Res Function(SingleTrainingGameSnapshotDto) _then;

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
              as List<SingleTrainingPlayerSnapshotDto>,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as SingleTrainingPlayerSnapshotDto,
    ));
  }

  @override
  $SingleTrainingPlayerSnapshotDtoCopyWith<$Res> get owner {
    return $SingleTrainingPlayerSnapshotDtoCopyWith<$Res>(_value.owner,
        (value) {
      return _then(_value.copyWith(owner: value));
    });
  }
}

/// @nodoc
abstract class _$SingleTrainingGameSnapshotDtoCopyWith<$Res>
    implements $SingleTrainingGameSnapshotDtoCopyWith<$Res> {
  factory _$SingleTrainingGameSnapshotDtoCopyWith(
          _SingleTrainingGameSnapshotDto value,
          $Res Function(_SingleTrainingGameSnapshotDto) then) =
      __$SingleTrainingGameSnapshotDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String status,
      String mode,
      List<SingleTrainingPlayerSnapshotDto> players,
      SingleTrainingPlayerSnapshotDto owner});

  @override
  $SingleTrainingPlayerSnapshotDtoCopyWith<$Res> get owner;
}

/// @nodoc
class __$SingleTrainingGameSnapshotDtoCopyWithImpl<$Res>
    extends _$SingleTrainingGameSnapshotDtoCopyWithImpl<$Res>
    implements _$SingleTrainingGameSnapshotDtoCopyWith<$Res> {
  __$SingleTrainingGameSnapshotDtoCopyWithImpl(
      _SingleTrainingGameSnapshotDto _value,
      $Res Function(_SingleTrainingGameSnapshotDto) _then)
      : super(_value, (v) => _then(v as _SingleTrainingGameSnapshotDto));

  @override
  _SingleTrainingGameSnapshotDto get _value =>
      super._value as _SingleTrainingGameSnapshotDto;

  @override
  $Res call({
    Object? status = freezed,
    Object? mode = freezed,
    Object? players = freezed,
    Object? owner = freezed,
  }) {
    return _then(_SingleTrainingGameSnapshotDto(
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
              as List<SingleTrainingPlayerSnapshotDto>,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as SingleTrainingPlayerSnapshotDto,
    ));
  }
}

/// @nodoc

class _$_SingleTrainingGameSnapshotDto extends _SingleTrainingGameSnapshotDto {
  const _$_SingleTrainingGameSnapshotDto(
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
  final List<SingleTrainingPlayerSnapshotDto> players;
  @override
  final SingleTrainingPlayerSnapshotDto owner;

  @override
  String toString() {
    return 'SingleTrainingGameSnapshotDto(status: $status, mode: $mode, players: $players, owner: $owner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SingleTrainingGameSnapshotDto &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            const DeepCollectionEquality().equals(other.players, players) &&
            (identical(other.owner, owner) || other.owner == owner));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, mode,
      const DeepCollectionEquality().hash(players), owner);

  @JsonKey(ignore: true)
  @override
  _$SingleTrainingGameSnapshotDtoCopyWith<_SingleTrainingGameSnapshotDto>
      get copyWith => __$SingleTrainingGameSnapshotDtoCopyWithImpl<
          _SingleTrainingGameSnapshotDto>(this, _$identity);
}

abstract class _SingleTrainingGameSnapshotDto
    extends SingleTrainingGameSnapshotDto {
  const factory _SingleTrainingGameSnapshotDto(
          {required String status,
          required String mode,
          required List<SingleTrainingPlayerSnapshotDto> players,
          required SingleTrainingPlayerSnapshotDto owner}) =
      _$_SingleTrainingGameSnapshotDto;
  const _SingleTrainingGameSnapshotDto._() : super._();

  @override
  String get status;
  @override
  String get mode;
  @override
  List<SingleTrainingPlayerSnapshotDto> get players;
  @override
  SingleTrainingPlayerSnapshotDto get owner;
  @override
  @JsonKey(ignore: true)
  _$SingleTrainingGameSnapshotDtoCopyWith<_SingleTrainingGameSnapshotDto>
      get copyWith => throw _privateConstructorUsedError;
}
