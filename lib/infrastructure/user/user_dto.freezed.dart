// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

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
      String? idToken,
      required String email,
      required ProfileDto profile,
      required List<String> friends,
      required CareerStatsDto careerStatsOffline,
      @ServerTimestampConverter() String? createdAt}) {
    return _UserDto(
      id: id,
      idToken: idToken,
      email: email,
      profile: profile,
      friends: friends,
      careerStatsOffline: careerStatsOffline,
      createdAt: createdAt,
    );
  }

  UserDto fromJson(Map<String, Object> json) {
    return UserDto.fromJson(json);
  }
}

/// @nodoc
const $UserDto = _$UserDtoTearOff();

/// @nodoc
mixin _$UserDto {
  String get id => throw _privateConstructorUsedError;
  String? get idToken => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  ProfileDto get profile => throw _privateConstructorUsedError;
  List<String> get friends => throw _privateConstructorUsedError;
  CareerStatsDto get careerStatsOffline => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  String? get createdAt => throw _privateConstructorUsedError;

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
      String? idToken,
      String email,
      ProfileDto profile,
      List<String> friends,
      CareerStatsDto careerStatsOffline,
      @ServerTimestampConverter() String? createdAt});

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
    Object? friends = freezed,
    Object? careerStatsOffline = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      idToken: idToken == freezed
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileDto,
      friends: friends == freezed
          ? _value.friends
          : friends // ignore: cast_nullable_to_non_nullable
              as List<String>,
      careerStatsOffline: careerStatsOffline == freezed
          ? _value.careerStatsOffline
          : careerStatsOffline // ignore: cast_nullable_to_non_nullable
              as CareerStatsDto,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
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
      String? idToken,
      String email,
      ProfileDto profile,
      List<String> friends,
      CareerStatsDto careerStatsOffline,
      @ServerTimestampConverter() String? createdAt});

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
    Object? friends = freezed,
    Object? careerStatsOffline = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_UserDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      idToken: idToken == freezed
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileDto,
      friends: friends == freezed
          ? _value.friends
          : friends // ignore: cast_nullable_to_non_nullable
              as List<String>,
      careerStatsOffline: careerStatsOffline == freezed
          ? _value.careerStatsOffline
          : careerStatsOffline // ignore: cast_nullable_to_non_nullable
              as CareerStatsDto,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDto extends _UserDto {
  const _$_UserDto(
      {required this.id,
      this.idToken,
      required this.email,
      required this.profile,
      required this.friends,
      required this.careerStatsOffline,
      @ServerTimestampConverter() this.createdAt})
      : super._();

  factory _$_UserDto.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDtoFromJson(json);

  @override
  final String id;
  @override
  final String? idToken;
  @override
  final String email;
  @override
  final ProfileDto profile;
  @override
  final List<String> friends;
  @override
  final CareerStatsDto careerStatsOffline;
  @override
  @ServerTimestampConverter()
  final String? createdAt;

  @override
  String toString() {
    return 'UserDto(id: $id, idToken: $idToken, email: $email, profile: $profile, friends: $friends, careerStatsOffline: $careerStatsOffline, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.idToken, idToken) ||
                const DeepCollectionEquality()
                    .equals(other.idToken, idToken)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality()
                    .equals(other.profile, profile)) &&
            (identical(other.friends, friends) ||
                const DeepCollectionEquality()
                    .equals(other.friends, friends)) &&
            (identical(other.careerStatsOffline, careerStatsOffline) ||
                const DeepCollectionEquality()
                    .equals(other.careerStatsOffline, careerStatsOffline)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(idToken) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(profile) ^
      const DeepCollectionEquality().hash(friends) ^
      const DeepCollectionEquality().hash(careerStatsOffline) ^
      const DeepCollectionEquality().hash(createdAt);

  @JsonKey(ignore: true)
  @override
  _$UserDtoCopyWith<_UserDto> get copyWith =>
      __$UserDtoCopyWithImpl<_UserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserDtoToJson(this);
  }
}

abstract class _UserDto extends UserDto {
  const factory _UserDto(
      {required String id,
      String? idToken,
      required String email,
      required ProfileDto profile,
      required List<String> friends,
      required CareerStatsDto careerStatsOffline,
      @ServerTimestampConverter() String? createdAt}) = _$_UserDto;
  const _UserDto._() : super._();

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$_UserDto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String? get idToken => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  ProfileDto get profile => throw _privateConstructorUsedError;
  @override
  List<String> get friends => throw _privateConstructorUsedError;
  @override
  CareerStatsDto get careerStatsOffline => throw _privateConstructorUsedError;
  @override
  @ServerTimestampConverter()
  String? get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserDtoCopyWith<_UserDto> get copyWith =>
      throw _privateConstructorUsedError;
}
