// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'offline_game_snapshot_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OfflineGameSnapshotDtoTearOff {
  const _$OfflineGameSnapshotDtoTearOff();

  _OfflineGameSnapshotDto call(
      {required String status,
      required String mode,
      required int size,
      required String type,
      required int startingPoints,
      required List<AbstractPlayerSnapshotDto> players}) {
    return _OfflineGameSnapshotDto(
      status: status,
      mode: mode,
      size: size,
      type: type,
      startingPoints: startingPoints,
      players: players,
    );
  }
}

/// @nodoc
const $OfflineGameSnapshotDto = _$OfflineGameSnapshotDtoTearOff();

/// @nodoc
mixin _$OfflineGameSnapshotDto {
  String get status => throw _privateConstructorUsedError;
  String get mode => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get startingPoints => throw _privateConstructorUsedError;
  List<AbstractPlayerSnapshotDto> get players =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OfflineGameSnapshotDtoCopyWith<OfflineGameSnapshotDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfflineGameSnapshotDtoCopyWith<$Res> {
  factory $OfflineGameSnapshotDtoCopyWith(OfflineGameSnapshotDto value,
          $Res Function(OfflineGameSnapshotDto) then) =
      _$OfflineGameSnapshotDtoCopyWithImpl<$Res>;
  $Res call(
      {String status,
      String mode,
      int size,
      String type,
      int startingPoints,
      List<AbstractPlayerSnapshotDto> players});
}

/// @nodoc
class _$OfflineGameSnapshotDtoCopyWithImpl<$Res>
    implements $OfflineGameSnapshotDtoCopyWith<$Res> {
  _$OfflineGameSnapshotDtoCopyWithImpl(this._value, this._then);

  final OfflineGameSnapshotDto _value;
  // ignore: unused_field
  final $Res Function(OfflineGameSnapshotDto) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? mode = freezed,
    Object? size = freezed,
    Object? type = freezed,
    Object? startingPoints = freezed,
    Object? players = freezed,
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
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      startingPoints: startingPoints == freezed
          ? _value.startingPoints
          : startingPoints // ignore: cast_nullable_to_non_nullable
              as int,
      players: players == freezed
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<AbstractPlayerSnapshotDto>,
    ));
  }
}

/// @nodoc
abstract class _$OfflineGameSnapshotDtoCopyWith<$Res>
    implements $OfflineGameSnapshotDtoCopyWith<$Res> {
  factory _$OfflineGameSnapshotDtoCopyWith(_OfflineGameSnapshotDto value,
          $Res Function(_OfflineGameSnapshotDto) then) =
      __$OfflineGameSnapshotDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String status,
      String mode,
      int size,
      String type,
      int startingPoints,
      List<AbstractPlayerSnapshotDto> players});
}

/// @nodoc
class __$OfflineGameSnapshotDtoCopyWithImpl<$Res>
    extends _$OfflineGameSnapshotDtoCopyWithImpl<$Res>
    implements _$OfflineGameSnapshotDtoCopyWith<$Res> {
  __$OfflineGameSnapshotDtoCopyWithImpl(_OfflineGameSnapshotDto _value,
      $Res Function(_OfflineGameSnapshotDto) _then)
      : super(_value, (v) => _then(v as _OfflineGameSnapshotDto));

  @override
  _OfflineGameSnapshotDto get _value => super._value as _OfflineGameSnapshotDto;

  @override
  $Res call({
    Object? status = freezed,
    Object? mode = freezed,
    Object? size = freezed,
    Object? type = freezed,
    Object? startingPoints = freezed,
    Object? players = freezed,
  }) {
    return _then(_OfflineGameSnapshotDto(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      startingPoints: startingPoints == freezed
          ? _value.startingPoints
          : startingPoints // ignore: cast_nullable_to_non_nullable
              as int,
      players: players == freezed
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<AbstractPlayerSnapshotDto>,
    ));
  }
}

/// @nodoc

@Implements<AbstractGameSnapshotDto>()
class _$_OfflineGameSnapshotDto extends _OfflineGameSnapshotDto {
  const _$_OfflineGameSnapshotDto(
      {required this.status,
      required this.mode,
      required this.size,
      required this.type,
      required this.startingPoints,
      required this.players})
      : super._();

  @override
  final String status;
  @override
  final String mode;
  @override
  final int size;
  @override
  final String type;
  @override
  final int startingPoints;
  @override
  final List<AbstractPlayerSnapshotDto> players;

  @override
  String toString() {
    return 'OfflineGameSnapshotDto(status: $status, mode: $mode, size: $size, type: $type, startingPoints: $startingPoints, players: $players)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OfflineGameSnapshotDto &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.mode, mode) &&
            const DeepCollectionEquality().equals(other.size, size) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.startingPoints, startingPoints) &&
            const DeepCollectionEquality().equals(other.players, players));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(mode),
      const DeepCollectionEquality().hash(size),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(startingPoints),
      const DeepCollectionEquality().hash(players));

  @JsonKey(ignore: true)
  @override
  _$OfflineGameSnapshotDtoCopyWith<_OfflineGameSnapshotDto> get copyWith =>
      __$OfflineGameSnapshotDtoCopyWithImpl<_OfflineGameSnapshotDto>(
          this, _$identity);
}

abstract class _OfflineGameSnapshotDto extends OfflineGameSnapshotDto
    implements AbstractGameSnapshotDto {
  const factory _OfflineGameSnapshotDto(
          {required String status,
          required String mode,
          required int size,
          required String type,
          required int startingPoints,
          required List<AbstractPlayerSnapshotDto> players}) =
      _$_OfflineGameSnapshotDto;
  const _OfflineGameSnapshotDto._() : super._();

  @override
  String get status;
  @override
  String get mode;
  @override
  int get size;
  @override
  String get type;
  @override
  int get startingPoints;
  @override
  List<AbstractPlayerSnapshotDto> get players;
  @override
  @JsonKey(ignore: true)
  _$OfflineGameSnapshotDtoCopyWith<_OfflineGameSnapshotDto> get copyWith =>
      throw _privateConstructorUsedError;
}
