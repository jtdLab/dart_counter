// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'game_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GameDto _$GameDtoFromJson(Map<String, dynamic> json) {
  return _GameDto.fromJson(json);
}

/// @nodoc
class _$GameDtoTearOff {
  const _$GameDtoTearOff();

  _GameDto call(
      {required String? id,
      required String status,
      required String mode,
      required int size,
      required String type,
      required int startingPoints,
      required List<PlayerDto> players}) {
    return _GameDto(
      id: id,
      status: status,
      mode: mode,
      size: size,
      type: type,
      startingPoints: startingPoints,
      players: players,
    );
  }

  GameDto fromJson(Map<String, Object> json) {
    return GameDto.fromJson(json);
  }
}

/// @nodoc
const $GameDto = _$GameDtoTearOff();

/// @nodoc
mixin _$GameDto {
  String? get id => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get mode => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get startingPoints => throw _privateConstructorUsedError;
  List<PlayerDto> get players => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameDtoCopyWith<GameDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameDtoCopyWith<$Res> {
  factory $GameDtoCopyWith(GameDto value, $Res Function(GameDto) then) =
      _$GameDtoCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String status,
      String mode,
      int size,
      String type,
      int startingPoints,
      List<PlayerDto> players});
}

/// @nodoc
class _$GameDtoCopyWithImpl<$Res> implements $GameDtoCopyWith<$Res> {
  _$GameDtoCopyWithImpl(this._value, this._then);

  final GameDto _value;
  // ignore: unused_field
  final $Res Function(GameDto) _then;

  @override
  $Res call({
    Object? id = freezed,
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
              as String?,
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
              as List<PlayerDto>,
    ));
  }
}

/// @nodoc
abstract class _$GameDtoCopyWith<$Res> implements $GameDtoCopyWith<$Res> {
  factory _$GameDtoCopyWith(_GameDto value, $Res Function(_GameDto) then) =
      __$GameDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String status,
      String mode,
      int size,
      String type,
      int startingPoints,
      List<PlayerDto> players});
}

/// @nodoc
class __$GameDtoCopyWithImpl<$Res> extends _$GameDtoCopyWithImpl<$Res>
    implements _$GameDtoCopyWith<$Res> {
  __$GameDtoCopyWithImpl(_GameDto _value, $Res Function(_GameDto) _then)
      : super(_value, (v) => _then(v as _GameDto));

  @override
  _GameDto get _value => super._value as _GameDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? mode = freezed,
    Object? size = freezed,
    Object? type = freezed,
    Object? startingPoints = freezed,
    Object? players = freezed,
  }) {
    return _then(_GameDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as List<PlayerDto>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_GameDto extends _GameDto {
  const _$_GameDto(
      {required this.id,
      required this.status,
      required this.mode,
      required this.size,
      required this.type,
      required this.startingPoints,
      required this.players})
      : super._();

  factory _$_GameDto.fromJson(Map<String, dynamic> json) =>
      _$_$_GameDtoFromJson(json);

  @override
  final String? id;
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
  final List<PlayerDto> players;

  @override
  String toString() {
    return 'GameDto(id: $id, status: $status, mode: $mode, size: $size, type: $type, startingPoints: $startingPoints, players: $players)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GameDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.mode, mode) ||
                const DeepCollectionEquality().equals(other.mode, mode)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.startingPoints, startingPoints) ||
                const DeepCollectionEquality()
                    .equals(other.startingPoints, startingPoints)) &&
            (identical(other.players, players) ||
                const DeepCollectionEquality().equals(other.players, players)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(mode) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(startingPoints) ^
      const DeepCollectionEquality().hash(players);

  @JsonKey(ignore: true)
  @override
  _$GameDtoCopyWith<_GameDto> get copyWith =>
      __$GameDtoCopyWithImpl<_GameDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GameDtoToJson(this);
  }
}

abstract class _GameDto extends GameDto {
  const factory _GameDto(
      {required String? id,
      required String status,
      required String mode,
      required int size,
      required String type,
      required int startingPoints,
      required List<PlayerDto> players}) = _$_GameDto;
  const _GameDto._() : super._();

  factory _GameDto.fromJson(Map<String, dynamic> json) = _$_GameDto.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  String get mode => throw _privateConstructorUsedError;
  @override
  int get size => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  int get startingPoints => throw _privateConstructorUsedError;
  @override
  List<PlayerDto> get players => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GameDtoCopyWith<_GameDto> get copyWith =>
      throw _privateConstructorUsedError;
}
