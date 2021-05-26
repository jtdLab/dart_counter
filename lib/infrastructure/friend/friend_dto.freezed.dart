// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

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

  _FriendDto call(
      {@JsonKey(ignore: true) String? id,
      required ProfileDto profile,
      required CareerStatsDto careerStatsOnline,
      required List<GameDto> gameHistoryOnline}) {
    return _FriendDto(
      id: id,
      profile: profile,
      careerStatsOnline: careerStatsOnline,
      gameHistoryOnline: gameHistoryOnline,
    );
  }

  FriendDto fromJson(Map<String, Object> json) {
    return FriendDto.fromJson(json);
  }
}

/// @nodoc
const $FriendDto = _$FriendDtoTearOff();

/// @nodoc
mixin _$FriendDto {
  @JsonKey(ignore: true)
  String? get id =>
      throw _privateConstructorUsedError; // TODO ignore and nullable fix
  ProfileDto get profile => throw _privateConstructorUsedError;
  CareerStatsDto get careerStatsOnline => throw _privateConstructorUsedError;
  List<GameDto> get gameHistoryOnline => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FriendDtoCopyWith<FriendDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendDtoCopyWith<$Res> {
  factory $FriendDtoCopyWith(FriendDto value, $Res Function(FriendDto) then) =
      _$FriendDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      ProfileDto profile,
      CareerStatsDto careerStatsOnline,
      List<GameDto> gameHistoryOnline});

  $ProfileDtoCopyWith<$Res> get profile;
  $CareerStatsDtoCopyWith<$Res> get careerStatsOnline;
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
    Object? careerStatsOnline = freezed,
    Object? gameHistoryOnline = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileDto,
      careerStatsOnline: careerStatsOnline == freezed
          ? _value.careerStatsOnline
          : careerStatsOnline // ignore: cast_nullable_to_non_nullable
              as CareerStatsDto,
      gameHistoryOnline: gameHistoryOnline == freezed
          ? _value.gameHistoryOnline
          : gameHistoryOnline // ignore: cast_nullable_to_non_nullable
              as List<GameDto>,
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
}

/// @nodoc
abstract class _$FriendDtoCopyWith<$Res> implements $FriendDtoCopyWith<$Res> {
  factory _$FriendDtoCopyWith(
          _FriendDto value, $Res Function(_FriendDto) then) =
      __$FriendDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      ProfileDto profile,
      CareerStatsDto careerStatsOnline,
      List<GameDto> gameHistoryOnline});

  @override
  $ProfileDtoCopyWith<$Res> get profile;
  @override
  $CareerStatsDtoCopyWith<$Res> get careerStatsOnline;
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
    Object? careerStatsOnline = freezed,
    Object? gameHistoryOnline = freezed,
  }) {
    return _then(_FriendDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileDto,
      careerStatsOnline: careerStatsOnline == freezed
          ? _value.careerStatsOnline
          : careerStatsOnline // ignore: cast_nullable_to_non_nullable
              as CareerStatsDto,
      gameHistoryOnline: gameHistoryOnline == freezed
          ? _value.gameHistoryOnline
          : gameHistoryOnline // ignore: cast_nullable_to_non_nullable
              as List<GameDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FriendDto extends _FriendDto {
  const _$_FriendDto(
      {@JsonKey(ignore: true) this.id,
      required this.profile,
      required this.careerStatsOnline,
      required this.gameHistoryOnline})
      : super._();

  factory _$_FriendDto.fromJson(Map<String, dynamic> json) =>
      _$_$_FriendDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override // TODO ignore and nullable fix
  final ProfileDto profile;
  @override
  final CareerStatsDto careerStatsOnline;
  @override
  final List<GameDto> gameHistoryOnline;

  @override
  String toString() {
    return 'FriendDto(id: $id, profile: $profile, careerStatsOnline: $careerStatsOnline, gameHistoryOnline: $gameHistoryOnline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FriendDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality()
                    .equals(other.profile, profile)) &&
            (identical(other.careerStatsOnline, careerStatsOnline) ||
                const DeepCollectionEquality()
                    .equals(other.careerStatsOnline, careerStatsOnline)) &&
            (identical(other.gameHistoryOnline, gameHistoryOnline) ||
                const DeepCollectionEquality()
                    .equals(other.gameHistoryOnline, gameHistoryOnline)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(profile) ^
      const DeepCollectionEquality().hash(careerStatsOnline) ^
      const DeepCollectionEquality().hash(gameHistoryOnline);

  @JsonKey(ignore: true)
  @override
  _$FriendDtoCopyWith<_FriendDto> get copyWith =>
      __$FriendDtoCopyWithImpl<_FriendDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FriendDtoToJson(this);
  }
}

abstract class _FriendDto extends FriendDto {
  const factory _FriendDto(
      {@JsonKey(ignore: true) String? id,
      required ProfileDto profile,
      required CareerStatsDto careerStatsOnline,
      required List<GameDto> gameHistoryOnline}) = _$_FriendDto;
  const _FriendDto._() : super._();

  factory _FriendDto.fromJson(Map<String, dynamic> json) =
      _$_FriendDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @override // TODO ignore and nullable fix
  ProfileDto get profile => throw _privateConstructorUsedError;
  @override
  CareerStatsDto get careerStatsOnline => throw _privateConstructorUsedError;
  @override
  List<GameDto> get gameHistoryOnline => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FriendDtoCopyWith<_FriendDto> get copyWith =>
      throw _privateConstructorUsedError;
}
