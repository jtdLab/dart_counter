// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
  return _UserDto.fromJson(json);
}

/// @nodoc
class _$UserDtoTearOff {
  const _$UserDtoTearOff();

  _UserDto call(
      {required String id,
      required String idToken,
      required String email,
      required ProfileDto profile,
      required List<String> friendIds,
      required CareerStatsDto careerStatsOffline}) {
    return _UserDto(
      id: id,
      idToken: idToken,
      email: email,
      profile: profile,
      friendIds: friendIds,
      careerStatsOffline: careerStatsOffline,
    );
  }

  UserDto fromJson(Map<String, Object?> json) {
    return UserDto.fromJson(json);
  }
}

/// @nodoc
const $UserDto = _$UserDtoTearOff();

/// @nodoc
mixin _$UserDto {
  String get id => throw _privateConstructorUsedError;
  String get idToken => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  ProfileDto get profile => throw _privateConstructorUsedError;
  List<String> get friendIds => throw _privateConstructorUsedError;
  CareerStatsDto get careerStatsOffline => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDtoCopyWith<UserDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String idToken,
      String email,
      ProfileDto profile,
      List<String> friendIds,
      CareerStatsDto careerStatsOffline});

  $ProfileDtoCopyWith<$Res> get profile;
  $CareerStatsDtoCopyWith<$Res> get careerStatsOffline;
}

/// @nodoc
class _$UserDtoCopyWithImpl<$Res> implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  final UserDto _value;
  // ignore: unused_field
  final $Res Function(UserDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? idToken = freezed,
    Object? email = freezed,
    Object? profile = freezed,
    Object? friendIds = freezed,
    Object? careerStatsOffline = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      idToken: idToken == freezed
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileDto,
      friendIds: friendIds == freezed
          ? _value.friendIds
          : friendIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      careerStatsOffline: careerStatsOffline == freezed
          ? _value.careerStatsOffline
          : careerStatsOffline // ignore: cast_nullable_to_non_nullable
              as CareerStatsDto,
    ));
  }

  @override
  $ProfileDtoCopyWith<$Res> get profile {
    return $ProfileDtoCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }

  @override
  $CareerStatsDtoCopyWith<$Res> get careerStatsOffline {
    return $CareerStatsDtoCopyWith<$Res>(_value.careerStatsOffline, (value) {
      return _then(_value.copyWith(careerStatsOffline: value));
    });
  }
}

/// @nodoc
abstract class _$UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$UserDtoCopyWith(_UserDto value, $Res Function(_UserDto) then) =
      __$UserDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String idToken,
      String email,
      ProfileDto profile,
      List<String> friendIds,
      CareerStatsDto careerStatsOffline});

  @override
  $ProfileDtoCopyWith<$Res> get profile;
  @override
  $CareerStatsDtoCopyWith<$Res> get careerStatsOffline;
}

/// @nodoc
class __$UserDtoCopyWithImpl<$Res> extends _$UserDtoCopyWithImpl<$Res>
    implements _$UserDtoCopyWith<$Res> {
  __$UserDtoCopyWithImpl(_UserDto _value, $Res Function(_UserDto) _then)
      : super(_value, (v) => _then(v as _UserDto));

  @override
  _UserDto get _value => super._value as _UserDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? idToken = freezed,
    Object? email = freezed,
    Object? profile = freezed,
    Object? friendIds = freezed,
    Object? careerStatsOffline = freezed,
  }) {
    return _then(_UserDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      idToken: idToken == freezed
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileDto,
      friendIds: friendIds == freezed
          ? _value.friendIds
          : friendIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      careerStatsOffline: careerStatsOffline == freezed
          ? _value.careerStatsOffline
          : careerStatsOffline // ignore: cast_nullable_to_non_nullable
              as CareerStatsDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDto extends _UserDto {
  const _$_UserDto(
      {required this.id,
      required this.idToken,
      required this.email,
      required this.profile,
      required this.friendIds,
      required this.careerStatsOffline})
      : super._();

  factory _$_UserDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserDtoFromJson(json);

  @override
  final String id;
  @override
  final String idToken;
  @override
  final String email;
  @override
  final ProfileDto profile;
  @override
  final List<String> friendIds;
  @override
  final CareerStatsDto careerStatsOffline;

  @override
  String toString() {
    return 'UserDto(id: $id, idToken: $idToken, email: $email, profile: $profile, friendIds: $friendIds, careerStatsOffline: $careerStatsOffline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.idToken, idToken) || other.idToken == idToken) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            const DeepCollectionEquality().equals(other.friendIds, friendIds) &&
            (identical(other.careerStatsOffline, careerStatsOffline) ||
                other.careerStatsOffline == careerStatsOffline));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, idToken, email, profile,
      const DeepCollectionEquality().hash(friendIds), careerStatsOffline);

  @JsonKey(ignore: true)
  @override
  _$UserDtoCopyWith<_UserDto> get copyWith =>
      __$UserDtoCopyWithImpl<_UserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDtoToJson(this);
  }
}

abstract class _UserDto extends UserDto {
  const factory _UserDto(
      {required String id,
      required String idToken,
      required String email,
      required ProfileDto profile,
      required List<String> friendIds,
      required CareerStatsDto careerStatsOffline}) = _$_UserDto;
  const _UserDto._() : super._();

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$_UserDto.fromJson;

  @override
  String get id;
  @override
  String get idToken;
  @override
  String get email;
  @override
  ProfileDto get profile;
  @override
  List<String> get friendIds;
  @override
  CareerStatsDto get careerStatsOffline;
  @override
  @JsonKey(ignore: true)
  _$UserDtoCopyWith<_UserDto> get copyWith =>
      throw _privateConstructorUsedError;
}
