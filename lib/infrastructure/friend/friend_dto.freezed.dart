// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'friend_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FriendDto _$FriendDtoFromJson(Map<String, dynamic> json) {
  return _FriendDto.fromJson(json);
}

/// @nodoc
class _$FriendDtoTearOff {
  const _$FriendDtoTearOff();

  _FriendDto call({required String id, required ProfileDto profile}) {
    return _FriendDto(
      id: id,
      profile: profile,
    );
  }

  FriendDto fromJson(Map<String, Object?> json) {
    return FriendDto.fromJson(json);
  }
}

/// @nodoc
const $FriendDto = _$FriendDtoTearOff();

/// @nodoc
mixin _$FriendDto {
  String get id => throw _privateConstructorUsedError;
  ProfileDto get profile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FriendDtoCopyWith<FriendDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendDtoCopyWith<$Res> {
  factory $FriendDtoCopyWith(FriendDto value, $Res Function(FriendDto) then) =
      _$FriendDtoCopyWithImpl<$Res>;
  $Res call({String id, ProfileDto profile});

  $ProfileDtoCopyWith<$Res> get profile;
}

/// @nodoc
class _$FriendDtoCopyWithImpl<$Res> implements $FriendDtoCopyWith<$Res> {
  _$FriendDtoCopyWithImpl(this._value, this._then);

  final FriendDto _value;
  // ignore: unused_field
  final $Res Function(FriendDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? profile = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileDto,
    ));
  }

  @override
  $ProfileDtoCopyWith<$Res> get profile {
    return $ProfileDtoCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc
abstract class _$FriendDtoCopyWith<$Res> implements $FriendDtoCopyWith<$Res> {
  factory _$FriendDtoCopyWith(
          _FriendDto value, $Res Function(_FriendDto) then) =
      __$FriendDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, ProfileDto profile});

  @override
  $ProfileDtoCopyWith<$Res> get profile;
}

/// @nodoc
class __$FriendDtoCopyWithImpl<$Res> extends _$FriendDtoCopyWithImpl<$Res>
    implements _$FriendDtoCopyWith<$Res> {
  __$FriendDtoCopyWithImpl(_FriendDto _value, $Res Function(_FriendDto) _then)
      : super(_value, (v) => _then(v as _FriendDto));

  @override
  _FriendDto get _value => super._value as _FriendDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? profile = freezed,
  }) {
    return _then(_FriendDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FriendDto extends _FriendDto {
  const _$_FriendDto({required this.id, required this.profile}) : super._();

  factory _$_FriendDto.fromJson(Map<String, dynamic> json) =>
      _$$_FriendDtoFromJson(json);

  @override
  final String id;
  @override
  final ProfileDto profile;

  @override
  String toString() {
    return 'FriendDto(id: $id, profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FriendDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.profile, profile));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(profile));

  @JsonKey(ignore: true)
  @override
  _$FriendDtoCopyWith<_FriendDto> get copyWith =>
      __$FriendDtoCopyWithImpl<_FriendDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FriendDtoToJson(this);
  }
}

abstract class _FriendDto extends FriendDto {
  const factory _FriendDto({required String id, required ProfileDto profile}) =
      _$_FriendDto;
  const _FriendDto._() : super._();

  factory _FriendDto.fromJson(Map<String, dynamic> json) =
      _$_FriendDto.fromJson;

  @override
  String get id;
  @override
  ProfileDto get profile;
  @override
  @JsonKey(ignore: true)
  _$FriendDtoCopyWith<_FriendDto> get copyWith =>
      throw _privateConstructorUsedError;
}
