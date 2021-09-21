// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

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
      {required UniqueId id, String? photoUrl, required Username username}) {
    return _UserSearchResult(
      id: id,
      photoUrl: photoUrl,
      username: username,
    );
  }
}

/// @nodoc
const $UserSearchResult = _$UserSearchResultTearOff();

/// @nodoc
mixin _$UserSearchResult {
  UniqueId get id => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  Username get username => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserSearchResultCopyWith<UserSearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSearchResultCopyWith<$Res> {
  factory $UserSearchResultCopyWith(
          UserSearchResult value, $Res Function(UserSearchResult) then) =
      _$UserSearchResultCopyWithImpl<$Res>;
  $Res call({UniqueId id, String? photoUrl, Username username});
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
    Object? username = freezed,
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
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
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
  $Res call({UniqueId id, String? photoUrl, Username username});
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
    Object? username = freezed,
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
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
    ));
  }
}

/// @nodoc

class _$_UserSearchResult implements _UserSearchResult {
  const _$_UserSearchResult(
      {required this.id, this.photoUrl, required this.username});

  @override
  final UniqueId id;
  @override
  final String? photoUrl;
  @override
  final Username username;

  @override
  String toString() {
    return 'UserSearchResult(id: $id, photoUrl: $photoUrl, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserSearchResult &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
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
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(username);

  @JsonKey(ignore: true)
  @override
  _$UserSearchResultCopyWith<_UserSearchResult> get copyWith =>
      __$UserSearchResultCopyWithImpl<_UserSearchResult>(this, _$identity);
}

abstract class _UserSearchResult implements UserSearchResult {
  const factory _UserSearchResult(
      {required UniqueId id,
      String? photoUrl,
      required Username username}) = _$_UserSearchResult;

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  String? get photoUrl => throw _privateConstructorUsedError;
  @override
  Username get username => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserSearchResultCopyWith<_UserSearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}
