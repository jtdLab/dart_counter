// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileDto _$ProfileDtoFromJson(Map<String, dynamic> json) {
  return _ProfileDto.fromJson(json);
}

/// @nodoc
class _$ProfileDtoTearOff {
  const _$ProfileDtoTearOff();

  _ProfileDto call(
      {required String? photoUrl,
      required String name,
      required CareerStatsDto careerStatsOnline}) {
    return _ProfileDto(
      photoUrl: photoUrl,
      name: name,
      careerStatsOnline: careerStatsOnline,
    );
  }

  ProfileDto fromJson(Map<String, Object?> json) {
    return ProfileDto.fromJson(json);
  }
}

/// @nodoc
const $ProfileDto = _$ProfileDtoTearOff();

/// @nodoc
mixin _$ProfileDto {
  String? get photoUrl => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  CareerStatsDto get careerStatsOnline => throw _privateConstructorUsedError;

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
  $Res call({String? photoUrl, String name, CareerStatsDto careerStatsOnline});

  $CareerStatsDtoCopyWith<$Res> get careerStatsOnline;
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
    Object? name = freezed,
    Object? careerStatsOnline = freezed,
  }) {
    return _then(_value.copyWith(
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      careerStatsOnline: careerStatsOnline == freezed
          ? _value.careerStatsOnline
          : careerStatsOnline // ignore: cast_nullable_to_non_nullable
              as CareerStatsDto,
    ));
  }

  @override
  $CareerStatsDtoCopyWith<$Res> get careerStatsOnline {
    return $CareerStatsDtoCopyWith<$Res>(_value.careerStatsOnline, (value) {
      return _then(_value.copyWith(careerStatsOnline: value));
    });
  }
}

/// @nodoc
abstract class _$ProfileDtoCopyWith<$Res> implements $ProfileDtoCopyWith<$Res> {
  factory _$ProfileDtoCopyWith(
          _ProfileDto value, $Res Function(_ProfileDto) then) =
      __$ProfileDtoCopyWithImpl<$Res>;
  @override
  $Res call({String? photoUrl, String name, CareerStatsDto careerStatsOnline});

  @override
  $CareerStatsDtoCopyWith<$Res> get careerStatsOnline;
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
    Object? name = freezed,
    Object? careerStatsOnline = freezed,
  }) {
    return _then(_ProfileDto(
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      careerStatsOnline: careerStatsOnline == freezed
          ? _value.careerStatsOnline
          : careerStatsOnline // ignore: cast_nullable_to_non_nullable
              as CareerStatsDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileDto extends _ProfileDto {
  const _$_ProfileDto(
      {required this.photoUrl,
      required this.name,
      required this.careerStatsOnline})
      : super._();

  factory _$_ProfileDto.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileDtoFromJson(json);

  @override
  final String? photoUrl;
  @override
  final String name;
  @override
  final CareerStatsDto careerStatsOnline;

  @override
  String toString() {
    return 'ProfileDto(photoUrl: $photoUrl, name: $name, careerStatsOnline: $careerStatsOnline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileDto &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.careerStatsOnline, careerStatsOnline) ||
                other.careerStatsOnline == careerStatsOnline));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, photoUrl, name, careerStatsOnline);

  @JsonKey(ignore: true)
  @override
  _$ProfileDtoCopyWith<_ProfileDto> get copyWith =>
      __$ProfileDtoCopyWithImpl<_ProfileDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileDtoToJson(this);
  }
}

abstract class _ProfileDto extends ProfileDto {
  const factory _ProfileDto(
      {required String? photoUrl,
      required String name,
      required CareerStatsDto careerStatsOnline}) = _$_ProfileDto;
  const _ProfileDto._() : super._();

  factory _ProfileDto.fromJson(Map<String, dynamic> json) =
      _$_ProfileDto.fromJson;

  @override
  String? get photoUrl;
  @override
  String get name;
  @override
  CareerStatsDto get careerStatsOnline;
  @override
  @JsonKey(ignore: true)
  _$ProfileDtoCopyWith<_ProfileDto> get copyWith =>
      throw _privateConstructorUsedError;
}
