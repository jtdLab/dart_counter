// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileTearOff {
  const _$ProfileTearOff();

  _Profile call(
      {Uint8List? photo,
      String? photoUrl,
      required Username name,
      required CareerStats careerStatsOnline}) {
    return _Profile(
      photo: photo,
      photoUrl: photoUrl,
      name: name,
      careerStatsOnline: careerStatsOnline,
    );
  }
}

/// @nodoc
const $Profile = _$ProfileTearOff();

/// @nodoc
mixin _$Profile {
  Uint8List? get photo => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  Username get name => throw _privateConstructorUsedError;
  CareerStats get careerStatsOnline => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileCopyWith<Profile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res>;
  $Res call(
      {Uint8List? photo,
      String? photoUrl,
      Username name,
      CareerStats careerStatsOnline});

  $CareerStatsCopyWith<$Res> get careerStatsOnline;
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res> implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._value, this._then);

  final Profile _value;
  // ignore: unused_field
  final $Res Function(Profile) _then;

  @override
  $Res call({
    Object? photo = freezed,
    Object? photoUrl = freezed,
    Object? name = freezed,
    Object? careerStatsOnline = freezed,
  }) {
    return _then(_value.copyWith(
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Username,
      careerStatsOnline: careerStatsOnline == freezed
          ? _value.careerStatsOnline
          : careerStatsOnline // ignore: cast_nullable_to_non_nullable
              as CareerStats,
    ));
  }

  @override
  $CareerStatsCopyWith<$Res> get careerStatsOnline {
    return $CareerStatsCopyWith<$Res>(_value.careerStatsOnline, (value) {
      return _then(_value.copyWith(careerStatsOnline: value));
    });
  }
}

/// @nodoc
abstract class _$ProfileCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$ProfileCopyWith(_Profile value, $Res Function(_Profile) then) =
      __$ProfileCopyWithImpl<$Res>;
  @override
  $Res call(
      {Uint8List? photo,
      String? photoUrl,
      Username name,
      CareerStats careerStatsOnline});

  @override
  $CareerStatsCopyWith<$Res> get careerStatsOnline;
}

/// @nodoc
class __$ProfileCopyWithImpl<$Res> extends _$ProfileCopyWithImpl<$Res>
    implements _$ProfileCopyWith<$Res> {
  __$ProfileCopyWithImpl(_Profile _value, $Res Function(_Profile) _then)
      : super(_value, (v) => _then(v as _Profile));

  @override
  _Profile get _value => super._value as _Profile;

  @override
  $Res call({
    Object? photo = freezed,
    Object? photoUrl = freezed,
    Object? name = freezed,
    Object? careerStatsOnline = freezed,
  }) {
    return _then(_Profile(
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Username,
      careerStatsOnline: careerStatsOnline == freezed
          ? _value.careerStatsOnline
          : careerStatsOnline // ignore: cast_nullable_to_non_nullable
              as CareerStats,
    ));
  }
}

/// @nodoc

class _$_Profile implements _Profile {
  const _$_Profile(
      {this.photo,
      this.photoUrl,
      required this.name,
      required this.careerStatsOnline});

  @override
  final Uint8List? photo;
  @override
  final String? photoUrl;
  @override
  final Username name;
  @override
  final CareerStats careerStatsOnline;

  @override
  String toString() {
    return 'Profile(photo: $photo, photoUrl: $photoUrl, name: $name, careerStatsOnline: $careerStatsOnline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Profile &&
            const DeepCollectionEquality().equals(other.photo, photo) &&
            const DeepCollectionEquality().equals(other.photoUrl, photoUrl) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.careerStatsOnline, careerStatsOnline));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(photo),
      const DeepCollectionEquality().hash(photoUrl),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(careerStatsOnline));

  @JsonKey(ignore: true)
  @override
  _$ProfileCopyWith<_Profile> get copyWith =>
      __$ProfileCopyWithImpl<_Profile>(this, _$identity);
}

abstract class _Profile implements Profile {
  const factory _Profile(
      {Uint8List? photo,
      String? photoUrl,
      required Username name,
      required CareerStats careerStatsOnline}) = _$_Profile;

  @override
  Uint8List? get photo;
  @override
  String? get photoUrl;
  @override
  Username get name;
  @override
  CareerStats get careerStatsOnline;
  @override
  @JsonKey(ignore: true)
  _$ProfileCopyWith<_Profile> get copyWith =>
      throw _privateConstructorUsedError;
}
