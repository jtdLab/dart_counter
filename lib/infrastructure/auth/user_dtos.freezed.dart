// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_dtos.dart';

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
      @JsonKey(includeIfNull: false)
      @ServerTimestampConverter()
          FieldValue? createdAt}) {
    return _UserDto(
      id: id,
      emailAddress: emailAddress,
      profile: profile,
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
      @JsonKey(includeIfNull: false)
      @ServerTimestampConverter()
          FieldValue? createdAt});

  $ProfileDtoCopyWith<$Res> get profile;
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
      @JsonKey(includeIfNull: false)
      @ServerTimestampConverter()
          FieldValue? createdAt});

  @override
  $ProfileDtoCopyWith<$Res> get profile;
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
  @JsonKey(includeIfNull: false)
  @ServerTimestampConverter()
  final FieldValue? createdAt;

  @override
  String toString() {
    return 'UserDto(id: $id, emailAddress: $emailAddress, profile: $profile, createdAt: $createdAt)';
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
  @JsonKey(includeIfNull: false)
  @ServerTimestampConverter()
  FieldValue? get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserDtoCopyWith<_UserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileDto _$ProfileDtoFromJson(Map<String, dynamic> json) {
  return _ProfileDto.fromJson(json);
}

/// @nodoc
class _$ProfileDtoTearOff {
  const _$ProfileDtoTearOff();

  _ProfileDto call({required String? photoUrl, required String username}) {
    return _ProfileDto(
      photoUrl: photoUrl,
      username: username,
    );
  }

  ProfileDto fromJson(Map<String, Object> json) {
    return ProfileDto.fromJson(json);
  }
}

/// @nodoc
const $ProfileDto = _$ProfileDtoTearOff();

/// @nodoc
mixin _$ProfileDto {
  String? get photoUrl => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileDtoCopyWith<ProfileDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileDtoCopyWith<$Res> {
  factory $ProfileDtoCopyWith(
          ProfileDto value, $Res Function(ProfileDto) then) =
      _$ProfileDtoCopyWithImpl<$Res>;
  $Res call({String? photoUrl, String username});
}

/// @nodoc
class _$ProfileDtoCopyWithImpl<$Res> implements $ProfileDtoCopyWith<$Res> {
  _$ProfileDtoCopyWithImpl(this._value, this._then);

  final ProfileDto _value;
  // ignore: unused_field
  final $Res Function(ProfileDto) _then;

  @override
  $Res call({
    Object? photoUrl = freezed,
    Object? username = freezed,
  }) {
    return _then(_value.copyWith(
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ProfileDtoCopyWith<$Res> implements $ProfileDtoCopyWith<$Res> {
  factory _$ProfileDtoCopyWith(
          _ProfileDto value, $Res Function(_ProfileDto) then) =
      __$ProfileDtoCopyWithImpl<$Res>;
  @override
  $Res call({String? photoUrl, String username});
}

/// @nodoc
class __$ProfileDtoCopyWithImpl<$Res> extends _$ProfileDtoCopyWithImpl<$Res>
    implements _$ProfileDtoCopyWith<$Res> {
  __$ProfileDtoCopyWithImpl(
      _ProfileDto _value, $Res Function(_ProfileDto) _then)
      : super(_value, (v) => _then(v as _ProfileDto));

  @override
  _ProfileDto get _value => super._value as _ProfileDto;

  @override
  $Res call({
    Object? photoUrl = freezed,
    Object? username = freezed,
  }) {
    return _then(_ProfileDto(
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ProfileDto extends _ProfileDto {
  const _$_ProfileDto({required this.photoUrl, required this.username})
      : super._();

  factory _$_ProfileDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ProfileDtoFromJson(json);

  @override
  final String? photoUrl;
  @override
  final String username;

  @override
  String toString() {
    return 'ProfileDto(photoUrl: $photoUrl, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileDto &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(username);

  @JsonKey(ignore: true)
  @override
  _$ProfileDtoCopyWith<_ProfileDto> get copyWith =>
      __$ProfileDtoCopyWithImpl<_ProfileDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProfileDtoToJson(this);
  }
}

abstract class _ProfileDto extends ProfileDto {
  const factory _ProfileDto(
      {required String? photoUrl, required String username}) = _$_ProfileDto;
  const _ProfileDto._() : super._();

  factory _ProfileDto.fromJson(Map<String, dynamic> json) =
      _$_ProfileDto.fromJson;

  @override
  String? get photoUrl => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProfileDtoCopyWith<_ProfileDto> get copyWith =>
      throw _privateConstructorUsedError;
}

CareerStatsDto _$CareerStatsDtoFromJson(Map<String, dynamic> json) {
  return _CareerStatsDto.fromJson(json);
}

/// @nodoc
class _$CareerStatsDtoTearOff {
  const _$CareerStatsDtoTearOff();

  _CareerStatsDto call(
      {required double average,
      required String averageTrend,
      required double checkoutPercentage,
      required String checkoutPercentageTrend,
      required double firstNine,
      required String firstNineTrend,
      required int games,
      required int wins,
      required int defeats}) {
    return _CareerStatsDto(
      average: average,
      averageTrend: averageTrend,
      checkoutPercentage: checkoutPercentage,
      checkoutPercentageTrend: checkoutPercentageTrend,
      firstNine: firstNine,
      firstNineTrend: firstNineTrend,
      games: games,
      wins: wins,
      defeats: defeats,
    );
  }

  CareerStatsDto fromJson(Map<String, Object> json) {
    return CareerStatsDto.fromJson(json);
  }
}

/// @nodoc
const $CareerStatsDto = _$CareerStatsDtoTearOff();

/// @nodoc
mixin _$CareerStatsDto {
  double get average => throw _privateConstructorUsedError;
  String get averageTrend => throw _privateConstructorUsedError;
  double get checkoutPercentage => throw _privateConstructorUsedError;
  String get checkoutPercentageTrend => throw _privateConstructorUsedError;
  double get firstNine => throw _privateConstructorUsedError;
  String get firstNineTrend => throw _privateConstructorUsedError;
  int get games => throw _privateConstructorUsedError;
  int get wins => throw _privateConstructorUsedError;
  int get defeats => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CareerStatsDtoCopyWith<CareerStatsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CareerStatsDtoCopyWith<$Res> {
  factory $CareerStatsDtoCopyWith(
          CareerStatsDto value, $Res Function(CareerStatsDto) then) =
      _$CareerStatsDtoCopyWithImpl<$Res>;
  $Res call(
      {double average,
      String averageTrend,
      double checkoutPercentage,
      String checkoutPercentageTrend,
      double firstNine,
      String firstNineTrend,
      int games,
      int wins,
      int defeats});
}

/// @nodoc
class _$CareerStatsDtoCopyWithImpl<$Res>
    implements $CareerStatsDtoCopyWith<$Res> {
  _$CareerStatsDtoCopyWithImpl(this._value, this._then);

  final CareerStatsDto _value;
  // ignore: unused_field
  final $Res Function(CareerStatsDto) _then;

  @override
  $Res call({
    Object? average = freezed,
    Object? averageTrend = freezed,
    Object? checkoutPercentage = freezed,
    Object? checkoutPercentageTrend = freezed,
    Object? firstNine = freezed,
    Object? firstNineTrend = freezed,
    Object? games = freezed,
    Object? wins = freezed,
    Object? defeats = freezed,
  }) {
    return _then(_value.copyWith(
      average: average == freezed
          ? _value.average
          : average // ignore: cast_nullable_to_non_nullable
              as double,
      averageTrend: averageTrend == freezed
          ? _value.averageTrend
          : averageTrend // ignore: cast_nullable_to_non_nullable
              as String,
      checkoutPercentage: checkoutPercentage == freezed
          ? _value.checkoutPercentage
          : checkoutPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      checkoutPercentageTrend: checkoutPercentageTrend == freezed
          ? _value.checkoutPercentageTrend
          : checkoutPercentageTrend // ignore: cast_nullable_to_non_nullable
              as String,
      firstNine: firstNine == freezed
          ? _value.firstNine
          : firstNine // ignore: cast_nullable_to_non_nullable
              as double,
      firstNineTrend: firstNineTrend == freezed
          ? _value.firstNineTrend
          : firstNineTrend // ignore: cast_nullable_to_non_nullable
              as String,
      games: games == freezed
          ? _value.games
          : games // ignore: cast_nullable_to_non_nullable
              as int,
      wins: wins == freezed
          ? _value.wins
          : wins // ignore: cast_nullable_to_non_nullable
              as int,
      defeats: defeats == freezed
          ? _value.defeats
          : defeats // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CareerStatsDtoCopyWith<$Res>
    implements $CareerStatsDtoCopyWith<$Res> {
  factory _$CareerStatsDtoCopyWith(
          _CareerStatsDto value, $Res Function(_CareerStatsDto) then) =
      __$CareerStatsDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {double average,
      String averageTrend,
      double checkoutPercentage,
      String checkoutPercentageTrend,
      double firstNine,
      String firstNineTrend,
      int games,
      int wins,
      int defeats});
}

/// @nodoc
class __$CareerStatsDtoCopyWithImpl<$Res>
    extends _$CareerStatsDtoCopyWithImpl<$Res>
    implements _$CareerStatsDtoCopyWith<$Res> {
  __$CareerStatsDtoCopyWithImpl(
      _CareerStatsDto _value, $Res Function(_CareerStatsDto) _then)
      : super(_value, (v) => _then(v as _CareerStatsDto));

  @override
  _CareerStatsDto get _value => super._value as _CareerStatsDto;

  @override
  $Res call({
    Object? average = freezed,
    Object? averageTrend = freezed,
    Object? checkoutPercentage = freezed,
    Object? checkoutPercentageTrend = freezed,
    Object? firstNine = freezed,
    Object? firstNineTrend = freezed,
    Object? games = freezed,
    Object? wins = freezed,
    Object? defeats = freezed,
  }) {
    return _then(_CareerStatsDto(
      average: average == freezed
          ? _value.average
          : average // ignore: cast_nullable_to_non_nullable
              as double,
      averageTrend: averageTrend == freezed
          ? _value.averageTrend
          : averageTrend // ignore: cast_nullable_to_non_nullable
              as String,
      checkoutPercentage: checkoutPercentage == freezed
          ? _value.checkoutPercentage
          : checkoutPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      checkoutPercentageTrend: checkoutPercentageTrend == freezed
          ? _value.checkoutPercentageTrend
          : checkoutPercentageTrend // ignore: cast_nullable_to_non_nullable
              as String,
      firstNine: firstNine == freezed
          ? _value.firstNine
          : firstNine // ignore: cast_nullable_to_non_nullable
              as double,
      firstNineTrend: firstNineTrend == freezed
          ? _value.firstNineTrend
          : firstNineTrend // ignore: cast_nullable_to_non_nullable
              as String,
      games: games == freezed
          ? _value.games
          : games // ignore: cast_nullable_to_non_nullable
              as int,
      wins: wins == freezed
          ? _value.wins
          : wins // ignore: cast_nullable_to_non_nullable
              as int,
      defeats: defeats == freezed
          ? _value.defeats
          : defeats // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CareerStatsDto extends _CareerStatsDto {
  const _$_CareerStatsDto(
      {required this.average,
      required this.averageTrend,
      required this.checkoutPercentage,
      required this.checkoutPercentageTrend,
      required this.firstNine,
      required this.firstNineTrend,
      required this.games,
      required this.wins,
      required this.defeats})
      : super._();

  factory _$_CareerStatsDto.fromJson(Map<String, dynamic> json) =>
      _$_$_CareerStatsDtoFromJson(json);

  @override
  final double average;
  @override
  final String averageTrend;
  @override
  final double checkoutPercentage;
  @override
  final String checkoutPercentageTrend;
  @override
  final double firstNine;
  @override
  final String firstNineTrend;
  @override
  final int games;
  @override
  final int wins;
  @override
  final int defeats;

  @override
  String toString() {
    return 'CareerStatsDto(average: $average, averageTrend: $averageTrend, checkoutPercentage: $checkoutPercentage, checkoutPercentageTrend: $checkoutPercentageTrend, firstNine: $firstNine, firstNineTrend: $firstNineTrend, games: $games, wins: $wins, defeats: $defeats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CareerStatsDto &&
            (identical(other.average, average) ||
                const DeepCollectionEquality()
                    .equals(other.average, average)) &&
            (identical(other.averageTrend, averageTrend) ||
                const DeepCollectionEquality()
                    .equals(other.averageTrend, averageTrend)) &&
            (identical(other.checkoutPercentage, checkoutPercentage) ||
                const DeepCollectionEquality()
                    .equals(other.checkoutPercentage, checkoutPercentage)) &&
            (identical(
                    other.checkoutPercentageTrend, checkoutPercentageTrend) ||
                const DeepCollectionEquality().equals(
                    other.checkoutPercentageTrend, checkoutPercentageTrend)) &&
            (identical(other.firstNine, firstNine) ||
                const DeepCollectionEquality()
                    .equals(other.firstNine, firstNine)) &&
            (identical(other.firstNineTrend, firstNineTrend) ||
                const DeepCollectionEquality()
                    .equals(other.firstNineTrend, firstNineTrend)) &&
            (identical(other.games, games) ||
                const DeepCollectionEquality().equals(other.games, games)) &&
            (identical(other.wins, wins) ||
                const DeepCollectionEquality().equals(other.wins, wins)) &&
            (identical(other.defeats, defeats) ||
                const DeepCollectionEquality().equals(other.defeats, defeats)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(average) ^
      const DeepCollectionEquality().hash(averageTrend) ^
      const DeepCollectionEquality().hash(checkoutPercentage) ^
      const DeepCollectionEquality().hash(checkoutPercentageTrend) ^
      const DeepCollectionEquality().hash(firstNine) ^
      const DeepCollectionEquality().hash(firstNineTrend) ^
      const DeepCollectionEquality().hash(games) ^
      const DeepCollectionEquality().hash(wins) ^
      const DeepCollectionEquality().hash(defeats);

  @JsonKey(ignore: true)
  @override
  _$CareerStatsDtoCopyWith<_CareerStatsDto> get copyWith =>
      __$CareerStatsDtoCopyWithImpl<_CareerStatsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CareerStatsDtoToJson(this);
  }
}

abstract class _CareerStatsDto extends CareerStatsDto {
  const factory _CareerStatsDto(
      {required double average,
      required String averageTrend,
      required double checkoutPercentage,
      required String checkoutPercentageTrend,
      required double firstNine,
      required String firstNineTrend,
      required int games,
      required int wins,
      required int defeats}) = _$_CareerStatsDto;
  const _CareerStatsDto._() : super._();

  factory _CareerStatsDto.fromJson(Map<String, dynamic> json) =
      _$_CareerStatsDto.fromJson;

  @override
  double get average => throw _privateConstructorUsedError;
  @override
  String get averageTrend => throw _privateConstructorUsedError;
  @override
  double get checkoutPercentage => throw _privateConstructorUsedError;
  @override
  String get checkoutPercentageTrend => throw _privateConstructorUsedError;
  @override
  double get firstNine => throw _privateConstructorUsedError;
  @override
  String get firstNineTrend => throw _privateConstructorUsedError;
  @override
  int get games => throw _privateConstructorUsedError;
  @override
  int get wins => throw _privateConstructorUsedError;
  @override
  int get defeats => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CareerStatsDtoCopyWith<_CareerStatsDto> get copyWith =>
      throw _privateConstructorUsedError;
}
