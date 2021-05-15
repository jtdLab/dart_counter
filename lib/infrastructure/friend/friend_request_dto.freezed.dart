// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

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
      {@JsonKey(ignore: true) String? id,
      required String from,
      bool? accepted,
      required bool read}) {
    return _FriendRequestDto(
      id: id,
      from: from,
      accepted: accepted,
      read: read,
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
  @JsonKey(ignore: true)
  String? get id =>
      throw _privateConstructorUsedError; // TODO ignore and nullable fix
  String get from => throw _privateConstructorUsedError;
  bool? get accepted => throw _privateConstructorUsedError;
  bool get read => throw _privateConstructorUsedError;

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
      {@JsonKey(ignore: true) String? id,
      String from,
      bool? accepted,
      bool read});
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
    Object? from = freezed,
    Object? accepted = freezed,
    Object? read = freezed,
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
      accepted: accepted == freezed
          ? _value.accepted
          : accepted // ignore: cast_nullable_to_non_nullable
              as bool?,
      read: read == freezed
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
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
      {@JsonKey(ignore: true) String? id,
      String from,
      bool? accepted,
      bool read});
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
    Object? from = freezed,
    Object? accepted = freezed,
    Object? read = freezed,
  }) {
    return _then(_FriendRequestDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      accepted: accepted == freezed
          ? _value.accepted
          : accepted // ignore: cast_nullable_to_non_nullable
              as bool?,
      read: read == freezed
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_FriendRequestDto extends _FriendRequestDto {
  const _$_FriendRequestDto(
      {@JsonKey(ignore: true) this.id,
      required this.from,
      this.accepted,
      required this.read})
      : super._();

  factory _$_FriendRequestDto.fromJson(Map<String, dynamic> json) =>
      _$_$_FriendRequestDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override // TODO ignore and nullable fix
  final String from;
  @override
  final bool? accepted;
  @override
  final bool read;

  @override
  String toString() {
    return 'FriendRequestDto(id: $id, from: $from, accepted: $accepted, read: $read)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FriendRequestDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.accepted, accepted) ||
                const DeepCollectionEquality()
                    .equals(other.accepted, accepted)) &&
            (identical(other.read, read) ||
                const DeepCollectionEquality().equals(other.read, read)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(accepted) ^
      const DeepCollectionEquality().hash(read);

  @JsonKey(ignore: true)
  @override
  _$FriendRequestDtoCopyWith<_FriendRequestDto> get copyWith =>
      __$FriendRequestDtoCopyWithImpl<_FriendRequestDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FriendRequestDtoToJson(this);
  }
}

abstract class _FriendRequestDto extends FriendRequestDto {
  const factory _FriendRequestDto(
      {@JsonKey(ignore: true) String? id,
      required String from,
      bool? accepted,
      required bool read}) = _$_FriendRequestDto;
  const _FriendRequestDto._() : super._();

  factory _FriendRequestDto.fromJson(Map<String, dynamic> json) =
      _$_FriendRequestDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @override // TODO ignore and nullable fix
  String get from => throw _privateConstructorUsedError;
  @override
  bool? get accepted => throw _privateConstructorUsedError;
  @override
  bool get read => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FriendRequestDtoCopyWith<_FriendRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}
