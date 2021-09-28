// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'friend_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FriendRequestDto _$FriendRequestDtoFromJson(Map<String, dynamic> json) {
  return _FriendRequestDto.fromJson(json);
}

/// @nodoc
class _$FriendRequestDtoTearOff {
  const _$FriendRequestDtoTearOff();

  _FriendRequestDto call(
      {required String id,
      required String toId,
      required String fromId,
      required String fromName,
      required bool read,
      @ServerTimestampConverter() String? createdAt}) {
    return _FriendRequestDto(
      id: id,
      toId: toId,
      fromId: fromId,
      fromName: fromName,
      read: read,
      createdAt: createdAt,
    );
  }

  FriendRequestDto fromJson(Map<String, Object> json) {
    return FriendRequestDto.fromJson(json);
  }
}

/// @nodoc
const $FriendRequestDto = _$FriendRequestDtoTearOff();

/// @nodoc
mixin _$FriendRequestDto {
  String get id => throw _privateConstructorUsedError;
  String get toId => throw _privateConstructorUsedError;
  String get fromId => throw _privateConstructorUsedError;
  String get fromName => throw _privateConstructorUsedError;
  bool get read => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  String? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FriendRequestDtoCopyWith<FriendRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendRequestDtoCopyWith<$Res> {
  factory $FriendRequestDtoCopyWith(
          FriendRequestDto value, $Res Function(FriendRequestDto) then) =
      _$FriendRequestDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String toId,
      String fromId,
      String fromName,
      bool read,
      @ServerTimestampConverter() String? createdAt});
}

/// @nodoc
class _$FriendRequestDtoCopyWithImpl<$Res>
    implements $FriendRequestDtoCopyWith<$Res> {
  _$FriendRequestDtoCopyWithImpl(this._value, this._then);

  final FriendRequestDto _value;
  // ignore: unused_field
  final $Res Function(FriendRequestDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? toId = freezed,
    Object? fromId = freezed,
    Object? fromName = freezed,
    Object? read = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      toId: toId == freezed
          ? _value.toId
          : toId // ignore: cast_nullable_to_non_nullable
              as String,
      fromId: fromId == freezed
          ? _value.fromId
          : fromId // ignore: cast_nullable_to_non_nullable
              as String,
      fromName: fromName == freezed
          ? _value.fromName
          : fromName // ignore: cast_nullable_to_non_nullable
              as String,
      read: read == freezed
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$FriendRequestDtoCopyWith<$Res>
    implements $FriendRequestDtoCopyWith<$Res> {
  factory _$FriendRequestDtoCopyWith(
          _FriendRequestDto value, $Res Function(_FriendRequestDto) then) =
      __$FriendRequestDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String toId,
      String fromId,
      String fromName,
      bool read,
      @ServerTimestampConverter() String? createdAt});
}

/// @nodoc
class __$FriendRequestDtoCopyWithImpl<$Res>
    extends _$FriendRequestDtoCopyWithImpl<$Res>
    implements _$FriendRequestDtoCopyWith<$Res> {
  __$FriendRequestDtoCopyWithImpl(
      _FriendRequestDto _value, $Res Function(_FriendRequestDto) _then)
      : super(_value, (v) => _then(v as _FriendRequestDto));

  @override
  _FriendRequestDto get _value => super._value as _FriendRequestDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? toId = freezed,
    Object? fromId = freezed,
    Object? fromName = freezed,
    Object? read = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_FriendRequestDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      toId: toId == freezed
          ? _value.toId
          : toId // ignore: cast_nullable_to_non_nullable
              as String,
      fromId: fromId == freezed
          ? _value.fromId
          : fromId // ignore: cast_nullable_to_non_nullable
              as String,
      fromName: fromName == freezed
          ? _value.fromName
          : fromName // ignore: cast_nullable_to_non_nullable
              as String,
      read: read == freezed
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FriendRequestDto extends _FriendRequestDto {
  const _$_FriendRequestDto(
      {required this.id,
      required this.toId,
      required this.fromId,
      required this.fromName,
      required this.read,
      @ServerTimestampConverter() this.createdAt})
      : super._();

  factory _$_FriendRequestDto.fromJson(Map<String, dynamic> json) =>
      _$$_FriendRequestDtoFromJson(json);

  @override
  final String id;
  @override
  final String toId;
  @override
  final String fromId;
  @override
  final String fromName;
  @override
  final bool read;
  @override
  @ServerTimestampConverter()
  final String? createdAt;

  @override
  String toString() {
    return 'FriendRequestDto(id: $id, toId: $toId, fromId: $fromId, fromName: $fromName, read: $read, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FriendRequestDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.toId, toId) ||
                const DeepCollectionEquality().equals(other.toId, toId)) &&
            (identical(other.fromId, fromId) ||
                const DeepCollectionEquality().equals(other.fromId, fromId)) &&
            (identical(other.fromName, fromName) ||
                const DeepCollectionEquality()
                    .equals(other.fromName, fromName)) &&
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
      const DeepCollectionEquality().hash(toId) ^
      const DeepCollectionEquality().hash(fromId) ^
      const DeepCollectionEquality().hash(fromName) ^
      const DeepCollectionEquality().hash(read) ^
      const DeepCollectionEquality().hash(createdAt);

  @JsonKey(ignore: true)
  @override
  _$FriendRequestDtoCopyWith<_FriendRequestDto> get copyWith =>
      __$FriendRequestDtoCopyWithImpl<_FriendRequestDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FriendRequestDtoToJson(this);
  }
}

abstract class _FriendRequestDto extends FriendRequestDto {
  const factory _FriendRequestDto(
      {required String id,
      required String toId,
      required String fromId,
      required String fromName,
      required bool read,
      @ServerTimestampConverter() String? createdAt}) = _$_FriendRequestDto;
  const _FriendRequestDto._() : super._();

  factory _FriendRequestDto.fromJson(Map<String, dynamic> json) =
      _$_FriendRequestDto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get toId => throw _privateConstructorUsedError;
  @override
  String get fromId => throw _privateConstructorUsedError;
  @override
  String get fromName => throw _privateConstructorUsedError;
  @override
  bool get read => throw _privateConstructorUsedError;
  @override
  @ServerTimestampConverter()
  String? get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FriendRequestDtoCopyWith<_FriendRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}
