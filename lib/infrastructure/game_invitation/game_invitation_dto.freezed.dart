// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'game_invitation_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GameInvitationDto _$GameInvitationDtoFromJson(Map<String, dynamic> json) {
  return _GameInvitationDto.fromJson(json);
}

/// @nodoc
class _$GameInvitationDtoTearOff {
  const _$GameInvitationDtoTearOff();

  _GameInvitationDto call(
      {@JsonKey(ignore: true)
          String? id,
      required String from,
      required int lobbyCode,
      required bool? accepted,
      required bool read,
      @JsonKey(includeIfNull: false)
      @ServerTimestampConverter()
          FieldValue? createdAt}) {
    return _GameInvitationDto(
      id: id,
      from: from,
      lobbyCode: lobbyCode,
      accepted: accepted,
      read: read,
      createdAt: createdAt,
    );
  }

  GameInvitationDto fromJson(Map<String, Object> json) {
    return GameInvitationDto.fromJson(json);
  }
}

/// @nodoc
const $GameInvitationDto = _$GameInvitationDtoTearOff();

/// @nodoc
mixin _$GameInvitationDto {
  @JsonKey(ignore: true)
  String? get id =>
      throw _privateConstructorUsedError; // TODO ignore and nullable fix
  String get from => throw _privateConstructorUsedError;
  int get lobbyCode => throw _privateConstructorUsedError;
  bool? get accepted => throw _privateConstructorUsedError;
  bool get read => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  @ServerTimestampConverter()
  FieldValue? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameInvitationDtoCopyWith<GameInvitationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameInvitationDtoCopyWith<$Res> {
  factory $GameInvitationDtoCopyWith(
          GameInvitationDto value, $Res Function(GameInvitationDto) then) =
      _$GameInvitationDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true)
          String? id,
      String from,
      int lobbyCode,
      bool? accepted,
      bool read,
      @JsonKey(includeIfNull: false)
      @ServerTimestampConverter()
          FieldValue? createdAt});
}

/// @nodoc
class _$GameInvitationDtoCopyWithImpl<$Res>
    implements $GameInvitationDtoCopyWith<$Res> {
  _$GameInvitationDtoCopyWithImpl(this._value, this._then);

  final GameInvitationDto _value;
  // ignore: unused_field
  final $Res Function(GameInvitationDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? from = freezed,
    Object? lobbyCode = freezed,
    Object? accepted = freezed,
    Object? read = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      lobbyCode: lobbyCode == freezed
          ? _value.lobbyCode
          : lobbyCode // ignore: cast_nullable_to_non_nullable
              as int,
      accepted: accepted == freezed
          ? _value.accepted
          : accepted // ignore: cast_nullable_to_non_nullable
              as bool?,
      read: read == freezed
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as FieldValue?,
    ));
  }
}

/// @nodoc
abstract class _$GameInvitationDtoCopyWith<$Res>
    implements $GameInvitationDtoCopyWith<$Res> {
  factory _$GameInvitationDtoCopyWith(
          _GameInvitationDto value, $Res Function(_GameInvitationDto) then) =
      __$GameInvitationDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true)
          String? id,
      String from,
      int lobbyCode,
      bool? accepted,
      bool read,
      @JsonKey(includeIfNull: false)
      @ServerTimestampConverter()
          FieldValue? createdAt});
}

/// @nodoc
class __$GameInvitationDtoCopyWithImpl<$Res>
    extends _$GameInvitationDtoCopyWithImpl<$Res>
    implements _$GameInvitationDtoCopyWith<$Res> {
  __$GameInvitationDtoCopyWithImpl(
      _GameInvitationDto _value, $Res Function(_GameInvitationDto) _then)
      : super(_value, (v) => _then(v as _GameInvitationDto));

  @override
  _GameInvitationDto get _value => super._value as _GameInvitationDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? from = freezed,
    Object? lobbyCode = freezed,
    Object? accepted = freezed,
    Object? read = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_GameInvitationDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      lobbyCode: lobbyCode == freezed
          ? _value.lobbyCode
          : lobbyCode // ignore: cast_nullable_to_non_nullable
              as int,
      accepted: accepted == freezed
          ? _value.accepted
          : accepted // ignore: cast_nullable_to_non_nullable
              as bool?,
      read: read == freezed
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as FieldValue?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GameInvitationDto extends _GameInvitationDto {
  const _$_GameInvitationDto(
      {@JsonKey(ignore: true)
          this.id,
      required this.from,
      required this.lobbyCode,
      required this.accepted,
      required this.read,
      @JsonKey(includeIfNull: false)
      @ServerTimestampConverter()
          this.createdAt})
      : super._();

  factory _$_GameInvitationDto.fromJson(Map<String, dynamic> json) =>
      _$_$_GameInvitationDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override // TODO ignore and nullable fix
  final String from;
  @override
  final int lobbyCode;
  @override
  final bool? accepted;
  @override
  final bool read;
  @override
  @JsonKey(includeIfNull: false)
  @ServerTimestampConverter()
  final FieldValue? createdAt;

  @override
  String toString() {
    return 'GameInvitationDto(id: $id, from: $from, lobbyCode: $lobbyCode, accepted: $accepted, read: $read, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GameInvitationDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.lobbyCode, lobbyCode) ||
                const DeepCollectionEquality()
                    .equals(other.lobbyCode, lobbyCode)) &&
            (identical(other.accepted, accepted) ||
                const DeepCollectionEquality()
                    .equals(other.accepted, accepted)) &&
            (identical(other.read, read) ||
                const DeepCollectionEquality().equals(other.read, read)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(lobbyCode) ^
      const DeepCollectionEquality().hash(accepted) ^
      const DeepCollectionEquality().hash(read) ^
      const DeepCollectionEquality().hash(createdAt);

  @JsonKey(ignore: true)
  @override
  _$GameInvitationDtoCopyWith<_GameInvitationDto> get copyWith =>
      __$GameInvitationDtoCopyWithImpl<_GameInvitationDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GameInvitationDtoToJson(this);
  }
}

abstract class _GameInvitationDto extends GameInvitationDto {
  const factory _GameInvitationDto(
      {@JsonKey(ignore: true)
          String? id,
      required String from,
      required int lobbyCode,
      required bool? accepted,
      required bool read,
      @JsonKey(includeIfNull: false)
      @ServerTimestampConverter()
          FieldValue? createdAt}) = _$_GameInvitationDto;
  const _GameInvitationDto._() : super._();

  factory _GameInvitationDto.fromJson(Map<String, dynamic> json) =
      _$_GameInvitationDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @override // TODO ignore and nullable fix
  String get from => throw _privateConstructorUsedError;
  @override
  int get lobbyCode => throw _privateConstructorUsedError;
  @override
  bool? get accepted => throw _privateConstructorUsedError;
  @override
  bool get read => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  @ServerTimestampConverter()
  FieldValue? get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GameInvitationDtoCopyWith<_GameInvitationDto> get copyWith =>
      throw _privateConstructorUsedError;
}
