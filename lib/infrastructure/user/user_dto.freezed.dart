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
      {@JsonKey(ignore: true)
          String? id,
      required String emailAddress,
      required ProfileDto profile,
      required CareerStatsDto careerStatsOnline,
      required CareerStatsDto careerStatsOffline,
      required List<GameDto> gameHistoryOnline,
      required List<GameDto> gameHistoryOffline,
      @JsonKey(includeIfNull: false)
      @ServerTimestampConverter()
          FieldValue? createdAt}) {
    return _UserDto(
      id: id,
      emailAddress: emailAddress,
      profile: profile,
      careerStatsOnline: careerStatsOnline,
      careerStatsOffline: careerStatsOffline,
      gameHistoryOnline: gameHistoryOnline,
      gameHistoryOffline: gameHistoryOffline,
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
  @JsonKey(ignore: true)
  String? get id =>
      throw _privateConstructorUsedError; // TODO ignore and nullable fix
  String get emailAddress => throw _privateConstructorUsedError;
  ProfileDto get profile => throw _privateConstructorUsedError;
  CareerStatsDto get careerStatsOnline => throw _privateConstructorUsedError;
  CareerStatsDto get careerStatsOffline => throw _privateConstructorUsedError;
  List<GameDto> get gameHistoryOnline => throw _privateConstructorUsedError;
  List<GameDto> get gameHistoryOffline => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  @ServerTimestampConverter()
  FieldValue? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDtoCopyWith<UserDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true)
          String? id,
      String emailAddress,
      ProfileDto profile,
      CareerStatsDto careerStatsOnline,
      CareerStatsDto careerStatsOffline,
      List<GameDto> gameHistoryOnline,
      List<GameDto> gameHistoryOffline,
      @JsonKey(includeIfNull: false)
      @ServerTimestampConverter()
          FieldValue? createdAt});

  $ProfileDtoCopyWith<$Res> get profile;
  $CareerStatsDtoCopyWith<$Res> get careerStatsOnline;
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
    Object? emailAddress = freezed,
    Object? profile = freezed,
    Object? careerStatsOnline = freezed,
    Object? careerStatsOffline = freezed,
    Object? gameHistoryOnline = freezed,
    Object? gameHistoryOffline = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileDto,
      careerStatsOnline: careerStatsOnline == freezed
          ? _value.careerStatsOnline
          : careerStatsOnline // ignore: cast_nullable_to_non_nullable
              as CareerStatsDto,
      careerStatsOffline: careerStatsOffline == freezed
          ? _value.careerStatsOffline
          : careerStatsOffline // ignore: cast_nullable_to_non_nullable
              as CareerStatsDto,
      gameHistoryOnline: gameHistoryOnline == freezed
          ? _value.gameHistoryOnline
          : gameHistoryOnline // ignore: cast_nullable_to_non_nullable
              as List<GameDto>,
      gameHistoryOffline: gameHistoryOffline == freezed
          ? _value.gameHistoryOffline
          : gameHistoryOffline // ignore: cast_nullable_to_non_nullable
              as List<GameDto>,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as FieldValue?,
    ));
  }

  @override
  $ProfileDtoCopyWith<$Res> get profile {
    return $ProfileDtoCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }

  @override
  $CareerStatsDtoCopyWith<$Res> get careerStatsOnline {
    return $CareerStatsDtoCopyWith<$Res>(_value.careerStatsOnline, (value) {
      return _then(_value.copyWith(careerStatsOnline: value));
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
      {@JsonKey(ignore: true)
          String? id,
      String emailAddress,
      ProfileDto profile,
      CareerStatsDto careerStatsOnline,
      CareerStatsDto careerStatsOffline,
      List<GameDto> gameHistoryOnline,
      List<GameDto> gameHistoryOffline,
      @JsonKey(includeIfNull: false)
      @ServerTimestampConverter()
          FieldValue? createdAt});

  @override
  $ProfileDtoCopyWith<$Res> get profile;
  @override
  $CareerStatsDtoCopyWith<$Res> get careerStatsOnline;
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
    Object? emailAddress = freezed,
    Object? profile = freezed,
    Object? careerStatsOnline = freezed,
    Object? careerStatsOffline = freezed,
    Object? gameHistoryOnline = freezed,
    Object? gameHistoryOffline = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_UserDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileDto,
      careerStatsOnline: careerStatsOnline == freezed
          ? _value.careerStatsOnline
          : careerStatsOnline // ignore: cast_nullable_to_non_nullable
              as CareerStatsDto,
      careerStatsOffline: careerStatsOffline == freezed
          ? _value.careerStatsOffline
          : careerStatsOffline // ignore: cast_nullable_to_non_nullable
              as CareerStatsDto,
      gameHistoryOnline: gameHistoryOnline == freezed
          ? _value.gameHistoryOnline
          : gameHistoryOnline // ignore: cast_nullable_to_non_nullable
              as List<GameDto>,
      gameHistoryOffline: gameHistoryOffline == freezed
          ? _value.gameHistoryOffline
          : gameHistoryOffline // ignore: cast_nullable_to_non_nullable
              as List<GameDto>,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as FieldValue?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserDto extends _UserDto {
  const _$_UserDto(
      {@JsonKey(ignore: true)
          this.id,
      required this.emailAddress,
      required this.profile,
      required this.careerStatsOnline,
      required this.careerStatsOffline,
      required this.gameHistoryOnline,
      required this.gameHistoryOffline,
      @JsonKey(includeIfNull: false)
      @ServerTimestampConverter()
          this.createdAt})
      : super._();

  factory _$_UserDto.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override // TODO ignore and nullable fix
  final String emailAddress;
  @override
  final ProfileDto profile;
  @override
  final CareerStatsDto careerStatsOnline;
  @override
  final CareerStatsDto careerStatsOffline;
  @override
  final List<GameDto> gameHistoryOnline;
  @override
  final List<GameDto> gameHistoryOffline;
  @override
  @JsonKey(includeIfNull: false)
  @ServerTimestampConverter()
  final FieldValue? createdAt;

  @override
  String toString() {
    return 'UserDto(id: $id, emailAddress: $emailAddress, profile: $profile, careerStatsOnline: $careerStatsOnline, careerStatsOffline: $careerStatsOffline, gameHistoryOnline: $gameHistoryOnline, gameHistoryOffline: $gameHistoryOffline, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality()
                    .equals(other.profile, profile)) &&
            (identical(other.careerStatsOnline, careerStatsOnline) ||
                const DeepCollectionEquality()
                    .equals(other.careerStatsOnline, careerStatsOnline)) &&
            (identical(other.careerStatsOffline, careerStatsOffline) ||
                const DeepCollectionEquality()
                    .equals(other.careerStatsOffline, careerStatsOffline)) &&
            (identical(other.gameHistoryOnline, gameHistoryOnline) ||
                const DeepCollectionEquality()
                    .equals(other.gameHistoryOnline, gameHistoryOnline)) &&
            (identical(other.gameHistoryOffline, gameHistoryOffline) ||
                const DeepCollectionEquality()
                    .equals(other.gameHistoryOffline, gameHistoryOffline)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(profile) ^
      const DeepCollectionEquality().hash(careerStatsOnline) ^
      const DeepCollectionEquality().hash(careerStatsOffline) ^
      const DeepCollectionEquality().hash(gameHistoryOnline) ^
      const DeepCollectionEquality().hash(gameHistoryOffline) ^
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
      {@JsonKey(ignore: true)
          String? id,
      required String emailAddress,
      required ProfileDto profile,
      required CareerStatsDto careerStatsOnline,
      required CareerStatsDto careerStatsOffline,
      required List<GameDto> gameHistoryOnline,
      required List<GameDto> gameHistoryOffline,
      @JsonKey(includeIfNull: false)
      @ServerTimestampConverter()
          FieldValue? createdAt}) = _$_UserDto;
  const _UserDto._() : super._();

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$_UserDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @override // TODO ignore and nullable fix
  String get emailAddress => throw _privateConstructorUsedError;
  @override
  ProfileDto get profile => throw _privateConstructorUsedError;
  @override
  CareerStatsDto get careerStatsOnline => throw _privateConstructorUsedError;
  @override
  CareerStatsDto get careerStatsOffline => throw _privateConstructorUsedError;
  @override
  List<GameDto> get gameHistoryOnline => throw _privateConstructorUsedError;
  @override
  List<GameDto> get gameHistoryOffline => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  @ServerTimestampConverter()
  FieldValue? get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserDtoCopyWith<_UserDto> get copyWith =>
      throw _privateConstructorUsedError;
}
