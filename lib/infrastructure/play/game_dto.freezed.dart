// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'game_dto.dart';

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
      required String status,
      required String mode,
      required int size,
      required String type,
      required int startingPoints,
      required List<OnlinePlayerDto> players}) {
    return _OnlineGameDto(
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

  OnlineGameDto fromJson(Map<String, Object> json) {
    return OnlineGameDto.fromJson(json);
  }
}

/// @nodoc
const $OnlineGameDto = _$OnlineGameDtoTearOff();

/// @nodoc
mixin _$OnlineGameDto {
  String get id => throw _privateConstructorUsedError;
  int get createdAt => throw _privateConstructorUsedError;
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
@Implements(GameDto)
class _$_OnlineGameDto extends _OnlineGameDto {
  const _$_OnlineGameDto(
      {required this.id,
      required this.createdAt,
      required this.status,
      required this.mode,
      required this.size,
      required this.type,
      required this.startingPoints,
      required this.players})
      : super._();

  factory _$_OnlineGameDto.fromJson(Map<String, dynamic> json) =>
      _$_$_OnlineGameDtoFromJson(json);

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
  final List<OnlinePlayerDto> players;

  @override
  String toString() {
    return 'OnlineGameDto(id: $id, createdAt: $createdAt, status: $status, mode: $mode, size: $size, type: $type, startingPoints: $startingPoints, players: $players)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnlineGameDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
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
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(mode) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(startingPoints) ^
      const DeepCollectionEquality().hash(players);

  @JsonKey(ignore: true)
  @override
  _$OnlineGameDtoCopyWith<_OnlineGameDto> get copyWith =>
      __$OnlineGameDtoCopyWithImpl<_OnlineGameDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OnlineGameDtoToJson(this);
  }
}

abstract class _OnlineGameDto extends OnlineGameDto implements GameDto {
  const factory _OnlineGameDto(
      {required String id,
      required int createdAt,
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
  String get id => throw _privateConstructorUsedError;
  @override
  int get createdAt => throw _privateConstructorUsedError;
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
  List<OnlinePlayerDto> get players => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OnlineGameDtoCopyWith<_OnlineGameDto> get copyWith =>
      throw _privateConstructorUsedError;
}

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
      @AbstractOfflinePlayerDtoConverter()
          required List<AbstractOfflinePlayerDto> players}) {
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

  OfflineGameDto fromJson(Map<String, Object> json) {
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
  @AbstractOfflinePlayerDtoConverter()
  List<AbstractOfflinePlayerDto> get players =>
      throw _privateConstructorUsedError;

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
      @AbstractOfflinePlayerDtoConverter()
          List<AbstractOfflinePlayerDto> players});
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
              as List<AbstractOfflinePlayerDto>,
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
      @AbstractOfflinePlayerDtoConverter()
          List<AbstractOfflinePlayerDto> players});
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
              as List<AbstractOfflinePlayerDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements(GameDto)
class _$_OfflineGameDto extends _OfflineGameDto {
  const _$_OfflineGameDto(
      {required this.id,
      required this.createdAt,
      required this.status,
      required this.mode,
      required this.size,
      required this.type,
      required this.startingPoints,
      @AbstractOfflinePlayerDtoConverter() required this.players})
      : super._();

  factory _$_OfflineGameDto.fromJson(Map<String, dynamic> json) =>
      _$_$_OfflineGameDtoFromJson(json);

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
  @AbstractOfflinePlayerDtoConverter()
  final List<AbstractOfflinePlayerDto> players;

  @override
  String toString() {
    return 'OfflineGameDto(id: $id, createdAt: $createdAt, status: $status, mode: $mode, size: $size, type: $type, startingPoints: $startingPoints, players: $players)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OfflineGameDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
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
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(mode) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(startingPoints) ^
      const DeepCollectionEquality().hash(players);

  @JsonKey(ignore: true)
  @override
  _$OfflineGameDtoCopyWith<_OfflineGameDto> get copyWith =>
      __$OfflineGameDtoCopyWithImpl<_OfflineGameDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OfflineGameDtoToJson(this);
  }
}

abstract class _OfflineGameDto extends OfflineGameDto implements GameDto {
  const factory _OfflineGameDto(
      {required String id,
      required int createdAt,
      required String status,
      required String mode,
      required int size,
      required String type,
      required int startingPoints,
      @AbstractOfflinePlayerDtoConverter()
          required List<AbstractOfflinePlayerDto> players}) = _$_OfflineGameDto;
  const _OfflineGameDto._() : super._();

  factory _OfflineGameDto.fromJson(Map<String, dynamic> json) =
      _$_OfflineGameDto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  int get createdAt => throw _privateConstructorUsedError;
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
  @AbstractOfflinePlayerDtoConverter()
  List<AbstractOfflinePlayerDto> get players =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OfflineGameDtoCopyWith<_OfflineGameDto> get copyWith =>
      throw _privateConstructorUsedError;
}
