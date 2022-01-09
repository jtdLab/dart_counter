// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_snapshot_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserSnapshotDto _$UserSnapshotDtoFromJson(Map<String, dynamic> json) {
  return _UserSnapshotDto.fromJson(json);
}

/// @nodoc
class _$UserSnapshotDtoTearOff {
  const _$UserSnapshotDtoTearOff();

  _UserSnapshotDto call(
      {required String id, String? photoUrl, required String name}) {
    return _UserSnapshotDto(
      id: id,
      photoUrl: photoUrl,
      name: name,
    );
  }

  UserSnapshotDto fromJson(Map<String, Object?> json) {
    return UserSnapshotDto.fromJson(json);
  }
}

/// @nodoc
const $UserSnapshotDto = _$UserSnapshotDtoTearOff();

/// @nodoc
mixin _$UserSnapshotDto {
  String get id => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserSnapshotDtoCopyWith<UserSnapshotDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSnapshotDtoCopyWith<$Res> {
  factory $UserSnapshotDtoCopyWith(
          UserSnapshotDto value, $Res Function(UserSnapshotDto) then) =
      _$UserSnapshotDtoCopyWithImpl<$Res>;
  $Res call({String id, String? photoUrl, String name});
}

/// @nodoc
class _$UserSnapshotDtoCopyWithImpl<$Res>
    implements $UserSnapshotDtoCopyWith<$Res> {
  _$UserSnapshotDtoCopyWithImpl(this._value, this._then);

  final UserSnapshotDto _value;
  // ignore: unused_field
  final $Res Function(UserSnapshotDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? photoUrl = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserSnapshotDtoCopyWith<$Res>
    implements $UserSnapshotDtoCopyWith<$Res> {
  factory _$UserSnapshotDtoCopyWith(
          _UserSnapshotDto value, $Res Function(_UserSnapshotDto) then) =
      __$UserSnapshotDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, String? photoUrl, String name});
}

/// @nodoc
class __$UserSnapshotDtoCopyWithImpl<$Res>
    extends _$UserSnapshotDtoCopyWithImpl<$Res>
    implements _$UserSnapshotDtoCopyWith<$Res> {
  __$UserSnapshotDtoCopyWithImpl(
      _UserSnapshotDto _value, $Res Function(_UserSnapshotDto) _then)
      : super(_value, (v) => _then(v as _UserSnapshotDto));

  @override
  _UserSnapshotDto get _value => super._value as _UserSnapshotDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? photoUrl = freezed,
    Object? name = freezed,
  }) {
    return _then(_UserSnapshotDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserSnapshotDto extends _UserSnapshotDto {
  const _$_UserSnapshotDto(
      {required this.id, this.photoUrl, required this.name})
      : super._();

  factory _$_UserSnapshotDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserSnapshotDtoFromJson(json);

  @override
  final String id;
  @override
  final String? photoUrl;
  @override
  final String name;

  @override
  String toString() {
    return 'UserSnapshotDto(id: $id, photoUrl: $photoUrl, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserSnapshotDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.photoUrl, photoUrl) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(photoUrl),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$UserSnapshotDtoCopyWith<_UserSnapshotDto> get copyWith =>
      __$UserSnapshotDtoCopyWithImpl<_UserSnapshotDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserSnapshotDtoToJson(this);
  }
}

abstract class _UserSnapshotDto extends UserSnapshotDto {
  const factory _UserSnapshotDto(
      {required String id,
      String? photoUrl,
      required String name}) = _$_UserSnapshotDto;
  const _UserSnapshotDto._() : super._();

  factory _UserSnapshotDto.fromJson(Map<String, dynamic> json) =
      _$_UserSnapshotDto.fromJson;

  @override
  String get id;
  @override
  String? get photoUrl;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$UserSnapshotDtoCopyWith<_UserSnapshotDto> get copyWith =>
      throw _privateConstructorUsedError;
}
