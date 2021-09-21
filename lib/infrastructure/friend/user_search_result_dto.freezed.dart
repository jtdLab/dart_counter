// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_search_result_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserSearchResultDto _$UserSearchResultDtoFromJson(Map<String, dynamic> json) {
  return _UserSearchResultDto.fromJson(json);
}

/// @nodoc
class _$UserSearchResultDtoTearOff {
  const _$UserSearchResultDtoTearOff();

  _UserSearchResultDto call(
      {required String id, String? photoUrl, required String name}) {
    return _UserSearchResultDto(
      id: id,
      photoUrl: photoUrl,
      name: name,
    );
  }

  UserSearchResultDto fromJson(Map<String, Object> json) {
    return UserSearchResultDto.fromJson(json);
  }
}

/// @nodoc
const $UserSearchResultDto = _$UserSearchResultDtoTearOff();

/// @nodoc
mixin _$UserSearchResultDto {
  String get id => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserSearchResultDtoCopyWith<UserSearchResultDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSearchResultDtoCopyWith<$Res> {
  factory $UserSearchResultDtoCopyWith(
          UserSearchResultDto value, $Res Function(UserSearchResultDto) then) =
      _$UserSearchResultDtoCopyWithImpl<$Res>;
  $Res call({String id, String? photoUrl, String name});
}

/// @nodoc
class _$UserSearchResultDtoCopyWithImpl<$Res>
    implements $UserSearchResultDtoCopyWith<$Res> {
  _$UserSearchResultDtoCopyWithImpl(this._value, this._then);

  final UserSearchResultDto _value;
  // ignore: unused_field
  final $Res Function(UserSearchResultDto) _then;

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
abstract class _$UserSearchResultDtoCopyWith<$Res>
    implements $UserSearchResultDtoCopyWith<$Res> {
  factory _$UserSearchResultDtoCopyWith(_UserSearchResultDto value,
          $Res Function(_UserSearchResultDto) then) =
      __$UserSearchResultDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, String? photoUrl, String name});
}

/// @nodoc
class __$UserSearchResultDtoCopyWithImpl<$Res>
    extends _$UserSearchResultDtoCopyWithImpl<$Res>
    implements _$UserSearchResultDtoCopyWith<$Res> {
  __$UserSearchResultDtoCopyWithImpl(
      _UserSearchResultDto _value, $Res Function(_UserSearchResultDto) _then)
      : super(_value, (v) => _then(v as _UserSearchResultDto));

  @override
  _UserSearchResultDto get _value => super._value as _UserSearchResultDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? photoUrl = freezed,
    Object? name = freezed,
  }) {
    return _then(_UserSearchResultDto(
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
class _$_UserSearchResultDto extends _UserSearchResultDto {
  const _$_UserSearchResultDto(
      {required this.id, this.photoUrl, required this.name})
      : super._();

  factory _$_UserSearchResultDto.fromJson(Map<String, dynamic> json) =>
      _$_$_UserSearchResultDtoFromJson(json);

  @override
  final String id;
  @override
  final String? photoUrl;
  @override
  final String name;

  @override
  String toString() {
    return 'UserSearchResultDto(id: $id, photoUrl: $photoUrl, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserSearchResultDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$UserSearchResultDtoCopyWith<_UserSearchResultDto> get copyWith =>
      __$UserSearchResultDtoCopyWithImpl<_UserSearchResultDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserSearchResultDtoToJson(this);
  }
}

abstract class _UserSearchResultDto extends UserSearchResultDto {
  const factory _UserSearchResultDto(
      {required String id,
      String? photoUrl,
      required String name}) = _$_UserSearchResultDto;
  const _UserSearchResultDto._() : super._();

  factory _UserSearchResultDto.fromJson(Map<String, dynamic> json) =
      _$_UserSearchResultDto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String? get photoUrl => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserSearchResultDtoCopyWith<_UserSearchResultDto> get copyWith =>
      throw _privateConstructorUsedError;
}
