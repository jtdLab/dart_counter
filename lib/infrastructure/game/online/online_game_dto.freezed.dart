// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'online_game_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OnlineGameDto _$OnlineGameDtoFromJson(Map<String, dynamic> json) {
  return _OnlineGameDto.fromJson(json);
}

/// @nodoc
class _$OnlineGameDtoTearOff {
  const _$OnlineGameDtoTearOff();

  _OnlineGameDto call(
      {required String id,
      required int createdAt,
      required String ownerId,
      required String status,
      required String mode,
      required int size,
      required String type,
      required int startingPoints,
      required List<OnlinePlayerDto> players}) {
    return _OnlineGameDto(
      id: id,
      createdAt: createdAt,
      ownerId: ownerId,
      status: status,
      mode: mode,
      size: size,
      type: type,
      startingPoints: startingPoints,
      players: players,
    );
  }

  OnlineGameDto fromJson(Map<String, Object?> json) {
    return OnlineGameDto.fromJson(json);
  }
}

/// @nodoc
const $OnlineGameDto = _$OnlineGameDtoTearOff();

/// @nodoc
mixin _$OnlineGameDto {
  String get id => throw _privateConstructorUsedError;
  int get createdAt => throw _privateConstructorUsedError;
  String get ownerId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get mode => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get startingPoints => throw _privateConstructorUsedError;
  List<OnlinePlayerDto> get players => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnlineGameDtoCopyWith<OnlineGameDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnlineGameDtoCopyWith<$Res> {
  factory $OnlineGameDtoCopyWith(
          OnlineGameDto value, $Res Function(OnlineGameDto) then) =
      _$OnlineGameDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      int createdAt,
      String ownerId,
      String status,
      String mode,
      int size,
      String type,
      int startingPoints,
      List<OnlinePlayerDto> players});
}

/// @nodoc
class _$OnlineGameDtoCopyWithImpl<$Res>
    implements $OnlineGameDtoCopyWith<$Res> {
  _$OnlineGameDtoCopyWithImpl(this._value, this._then);

  final OnlineGameDto _value;
  // ignore: unused_field
  final $Res Function(OnlineGameDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? ownerId = freezed,
    Object? status = freezed,
    Object? mode = freezed,
    Object? size = freezed,
    Object? type = freezed,
    Object? startingPoints = freezed,
    Object? players = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
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
              as List<OnlinePlayerDto>,
    ));
  }
}

/// @nodoc
abstract class _$OnlineGameDtoCopyWith<$Res>
    implements $OnlineGameDtoCopyWith<$Res> {
  factory _$OnlineGameDtoCopyWith(
          _OnlineGameDto value, $Res Function(_OnlineGameDto) then) =
      __$OnlineGameDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      int createdAt,
      String ownerId,
      String status,
      String mode,
      int size,
      String type,
      int startingPoints,
      List<OnlinePlayerDto> players});
}

/// @nodoc
class __$OnlineGameDtoCopyWithImpl<$Res>
    extends _$OnlineGameDtoCopyWithImpl<$Res>
    implements _$OnlineGameDtoCopyWith<$Res> {
  __$OnlineGameDtoCopyWithImpl(
      _OnlineGameDto _value, $Res Function(_OnlineGameDto) _then)
      : super(_value, (v) => _then(v as _OnlineGameDto));

  @override
  _OnlineGameDto get _value => super._value as _OnlineGameDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? ownerId = freezed,
    Object? status = freezed,
    Object? mode = freezed,
    Object? size = freezed,
    Object? type = freezed,
    Object? startingPoints = freezed,
    Object? players = freezed,
  }) {
    return _then(_OnlineGameDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
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
              as List<OnlinePlayerDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements<AbstractGameDto>()
class _$_OnlineGameDto extends _OnlineGameDto {
  const _$_OnlineGameDto(
      {required this.id,
      required this.createdAt,
      required this.ownerId,
      required this.status,
      required this.mode,
      required this.size,
      required this.type,
      required this.startingPoints,
      required this.players})
      : super._();

  factory _$_OnlineGameDto.fromJson(Map<String, dynamic> json) =>
      _$$_OnlineGameDtoFromJson(json);

  @override
  final String id;
  @override
  final int createdAt;
  @override
  final String ownerId;
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
  final List<OnlinePlayerDto> players;

  @override
  String toString() {
    return 'OnlineGameDto(id: $id, createdAt: $createdAt, ownerId: $ownerId, status: $status, mode: $mode, size: $size, type: $type, startingPoints: $startingPoints, players: $players)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnlineGameDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.startingPoints, startingPoints) ||
                other.startingPoints == startingPoints) &&
            const DeepCollectionEquality().equals(other.players, players));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdAt,
      ownerId,
      status,
      mode,
      size,
      type,
      startingPoints,
      const DeepCollectionEquality().hash(players));

  @JsonKey(ignore: true)
  @override
  _$OnlineGameDtoCopyWith<_OnlineGameDto> get copyWith =>
      __$OnlineGameDtoCopyWithImpl<_OnlineGameDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OnlineGameDtoToJson(this);
  }
}

abstract class _OnlineGameDto extends OnlineGameDto implements AbstractGameDto {
  const factory _OnlineGameDto(
      {required String id,
      required int createdAt,
      required String ownerId,
      required String status,
      required String mode,
      required int size,
      required String type,
      required int startingPoints,
      required List<OnlinePlayerDto> players}) = _$_OnlineGameDto;
  const _OnlineGameDto._() : super._();

  factory _OnlineGameDto.fromJson(Map<String, dynamic> json) =
      _$_OnlineGameDto.fromJson;

  @override
  String get id;
  @override
  int get createdAt;
  @override
  String get ownerId;
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
  List<OnlinePlayerDto> get players;
  @override
  @JsonKey(ignore: true)
  _$OnlineGameDtoCopyWith<_OnlineGameDto> get copyWith =>
      throw _privateConstructorUsedError;
}
