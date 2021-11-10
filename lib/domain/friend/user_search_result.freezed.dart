// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_search_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserSearchResultTearOff {
  const _$UserSearchResultTearOff();

  _UserSearchResult call(
      {required UniqueId id, String? photoUrl, required Username name}) {
    return _UserSearchResult(
      id: id,
      photoUrl: photoUrl,
      name: name,
    );
  }
}

/// @nodoc
const $UserSearchResult = _$UserSearchResultTearOff();

/// @nodoc
mixin _$UserSearchResult {
  UniqueId get id => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  Username get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserSearchResultCopyWith<UserSearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSearchResultCopyWith<$Res> {
  factory $UserSearchResultCopyWith(
          UserSearchResult value, $Res Function(UserSearchResult) then) =
      _$UserSearchResultCopyWithImpl<$Res>;
  $Res call({UniqueId id, String? photoUrl, Username name});
}

/// @nodoc
class _$UserSearchResultCopyWithImpl<$Res>
    implements $UserSearchResultCopyWith<$Res> {
  _$UserSearchResultCopyWithImpl(this._value, this._then);

  final UserSearchResult _value;
  // ignore: unused_field
  final $Res Function(UserSearchResult) _then;

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
              as UniqueId,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Username,
    ));
  }
}

/// @nodoc
abstract class _$UserSearchResultCopyWith<$Res>
    implements $UserSearchResultCopyWith<$Res> {
  factory _$UserSearchResultCopyWith(
          _UserSearchResult value, $Res Function(_UserSearchResult) then) =
      __$UserSearchResultCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, String? photoUrl, Username name});
}

/// @nodoc
class __$UserSearchResultCopyWithImpl<$Res>
    extends _$UserSearchResultCopyWithImpl<$Res>
    implements _$UserSearchResultCopyWith<$Res> {
  __$UserSearchResultCopyWithImpl(
      _UserSearchResult _value, $Res Function(_UserSearchResult) _then)
      : super(_value, (v) => _then(v as _UserSearchResult));

  @override
  _UserSearchResult get _value => super._value as _UserSearchResult;

  @override
  $Res call({
    Object? id = freezed,
    Object? photoUrl = freezed,
    Object? name = freezed,
  }) {
    return _then(_UserSearchResult(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Username,
    ));
  }
}

/// @nodoc

class _$_UserSearchResult implements _UserSearchResult {
  const _$_UserSearchResult(
      {required this.id, this.photoUrl, required this.name});

  @override
  final UniqueId id;
  @override
  final String? photoUrl;
  @override
  final Username name;

  @override
  String toString() {
    return 'UserSearchResult(id: $id, photoUrl: $photoUrl, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserSearchResult &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, photoUrl, name);

  @JsonKey(ignore: true)
  @override
  _$UserSearchResultCopyWith<_UserSearchResult> get copyWith =>
      __$UserSearchResultCopyWithImpl<_UserSearchResult>(this, _$identity);
}

abstract class _UserSearchResult implements UserSearchResult {
  const factory _UserSearchResult(
      {required UniqueId id,
      String? photoUrl,
      required Username name}) = _$_UserSearchResult;

  @override
  UniqueId get id;
  @override
  String? get photoUrl;
  @override
  Username get name;
  @override
  @JsonKey(ignore: true)
  _$UserSearchResultCopyWith<_UserSearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}
