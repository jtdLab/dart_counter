// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'offline_game_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OfflineGameDto _$OfflineGameDtoFromJson(Map<String, dynamic> json) {
  return _OfflineGameDto.fromJson(json);
}

/// @nodoc
class _$OfflineGameDtoTearOff {
  const _$OfflineGameDtoTearOff();

  _OfflineGameDto call(
      {required String id,
      required int createdAt,
      required String status,
      required String mode,
      required int size,
      required String type,
      required int startingPoints,
      @AbstractPlayerDtoConverter() required List<AbstractPlayerDto> players}) {
    return _OfflineGameDto(
      id: id,
      createdAt: createdAt,
      status: status,
      mode: mode,
      size: size,
      type: type,
      startingPoints: startingPoints,
      players: players,
    );
  }

  OfflineGameDto fromJson(Map<String, Object?> json) {
    return OfflineGameDto.fromJson(json);
  }
}

/// @nodoc
const $OfflineGameDto = _$OfflineGameDtoTearOff();

/// @nodoc
mixin _$OfflineGameDto {
  String get id => throw _privateConstructorUsedError;
  int get createdAt => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get mode => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get startingPoints => throw _privateConstructorUsedError;
  @AbstractPlayerDtoConverter()
  List<AbstractPlayerDto> get players => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfflineGameDtoCopyWith<OfflineGameDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfflineGameDtoCopyWith<$Res> {
  factory $OfflineGameDtoCopyWith(
          OfflineGameDto value, $Res Function(OfflineGameDto) then) =
      _$OfflineGameDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      int createdAt,
      String status,
      String mode,
      int size,
      String type,
      int startingPoints,
      @AbstractPlayerDtoConverter() List<AbstractPlayerDto> players});
}

/// @nodoc
class _$OfflineGameDtoCopyWithImpl<$Res>
    implements $OfflineGameDtoCopyWith<$Res> {
  _$OfflineGameDtoCopyWithImpl(this._value, this._then);

  final OfflineGameDto _value;
  // ignore: unused_field
  final $Res Function(OfflineGameDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
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
              as List<AbstractPlayerDto>,
    ));
  }
}

/// @nodoc
abstract class _$OfflineGameDtoCopyWith<$Res>
    implements $OfflineGameDtoCopyWith<$Res> {
  factory _$OfflineGameDtoCopyWith(
          _OfflineGameDto value, $Res Function(_OfflineGameDto) then) =
      __$OfflineGameDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      int createdAt,
      String status,
      String mode,
      int size,
      String type,
      int startingPoints,
      @AbstractPlayerDtoConverter() List<AbstractPlayerDto> players});
}

/// @nodoc
class __$OfflineGameDtoCopyWithImpl<$Res>
    extends _$OfflineGameDtoCopyWithImpl<$Res>
    implements _$OfflineGameDtoCopyWith<$Res> {
  __$OfflineGameDtoCopyWithImpl(
      _OfflineGameDto _value, $Res Function(_OfflineGameDto) _then)
      : super(_value, (v) => _then(v as _OfflineGameDto));

  @override
  _OfflineGameDto get _value => super._value as _OfflineGameDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? status = freezed,
    Object? mode = freezed,
    Object? size = freezed,
    Object? type = freezed,
    Object? startingPoints = freezed,
    Object? players = freezed,
  }) {
    return _then(_OfflineGameDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
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
              as List<AbstractPlayerDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements<AbstractGameDto>()
class _$_OfflineGameDto extends _OfflineGameDto {
  const _$_OfflineGameDto(
      {required this.id,
      required this.createdAt,
      required this.status,
      required this.mode,
      required this.size,
      required this.type,
      required this.startingPoints,
      @AbstractPlayerDtoConverter() required this.players})
      : super._();

  factory _$_OfflineGameDto.fromJson(Map<String, dynamic> json) =>
      _$$_OfflineGameDtoFromJson(json);

  @override
  final String id;
  @override
  final int createdAt;
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
  @AbstractPlayerDtoConverter()
  final List<AbstractPlayerDto> players;

  @override
  String toString() {
    return 'OfflineGameDto(id: $id, createdAt: $createdAt, status: $status, mode: $mode, size: $size, type: $type, startingPoints: $startingPoints, players: $players)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OfflineGameDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
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
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(mode),
      const DeepCollectionEquality().hash(size),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(startingPoints),
      const DeepCollectionEquality().hash(players));

  @JsonKey(ignore: true)
  @override
  _$OfflineGameDtoCopyWith<_OfflineGameDto> get copyWith =>
      __$OfflineGameDtoCopyWithImpl<_OfflineGameDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OfflineGameDtoToJson(this);
  }
}

abstract class _OfflineGameDto extends OfflineGameDto
    implements AbstractGameDto {
  const factory _OfflineGameDto(
      {required String id,
      required int createdAt,
      required String status,
      required String mode,
      required int size,
      required String type,
      required int startingPoints,
      @AbstractPlayerDtoConverter()
          required List<AbstractPlayerDto> players}) = _$_OfflineGameDto;
  const _OfflineGameDto._() : super._();

  factory _OfflineGameDto.fromJson(Map<String, dynamic> json) =
      _$_OfflineGameDto.fromJson;

  @override
  String get id;
  @override
  int get createdAt;
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
  @AbstractPlayerDtoConverter()
  List<AbstractPlayerDto> get players;
  @override
  @JsonKey(ignore: true)
  _$OfflineGameDtoCopyWith<_OfflineGameDto> get copyWith =>
      throw _privateConstructorUsedError;
}
