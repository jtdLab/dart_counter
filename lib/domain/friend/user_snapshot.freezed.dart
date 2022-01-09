// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_snapshot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserSnapshotTearOff {
  const _$UserSnapshotTearOff();

  _UserSnapshot call(
      {required UniqueId id, String? photoUrl, required Username name}) {
    return _UserSnapshot(
      id: id,
      photoUrl: photoUrl,
      name: name,
    );
  }
}

/// @nodoc
const $UserSnapshot = _$UserSnapshotTearOff();

/// @nodoc
mixin _$UserSnapshot {
  UniqueId get id => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  Username get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserSnapshotCopyWith<UserSnapshot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSnapshotCopyWith<$Res> {
  factory $UserSnapshotCopyWith(
          UserSnapshot value, $Res Function(UserSnapshot) then) =
      _$UserSnapshotCopyWithImpl<$Res>;
  $Res call({UniqueId id, String? photoUrl, Username name});
}

/// @nodoc
class _$UserSnapshotCopyWithImpl<$Res> implements $UserSnapshotCopyWith<$Res> {
  _$UserSnapshotCopyWithImpl(this._value, this._then);

  final UserSnapshot _value;
  // ignore: unused_field
  final $Res Function(UserSnapshot) _then;

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
abstract class _$UserSnapshotCopyWith<$Res>
    implements $UserSnapshotCopyWith<$Res> {
  factory _$UserSnapshotCopyWith(
          _UserSnapshot value, $Res Function(_UserSnapshot) then) =
      __$UserSnapshotCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, String? photoUrl, Username name});
}

/// @nodoc
class __$UserSnapshotCopyWithImpl<$Res> extends _$UserSnapshotCopyWithImpl<$Res>
    implements _$UserSnapshotCopyWith<$Res> {
  __$UserSnapshotCopyWithImpl(
      _UserSnapshot _value, $Res Function(_UserSnapshot) _then)
      : super(_value, (v) => _then(v as _UserSnapshot));

  @override
  _UserSnapshot get _value => super._value as _UserSnapshot;

  @override
  $Res call({
    Object? id = freezed,
    Object? photoUrl = freezed,
    Object? name = freezed,
  }) {
    return _then(_UserSnapshot(
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

class _$_UserSnapshot implements _UserSnapshot {
  const _$_UserSnapshot({required this.id, this.photoUrl, required this.name});

  @override
  final UniqueId id;
  @override
  final String? photoUrl;
  @override
  final Username name;

  @override
  String toString() {
    return 'UserSnapshot(id: $id, photoUrl: $photoUrl, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserSnapshot &&
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
  _$UserSnapshotCopyWith<_UserSnapshot> get copyWith =>
      __$UserSnapshotCopyWithImpl<_UserSnapshot>(this, _$identity);
}

abstract class _UserSnapshot implements UserSnapshot {
  const factory _UserSnapshot(
      {required UniqueId id,
      String? photoUrl,
      required Username name}) = _$_UserSnapshot;

  @override
  UniqueId get id;
  @override
  String? get photoUrl;
  @override
  Username get name;
  @override
  @JsonKey(ignore: true)
  _$UserSnapshotCopyWith<_UserSnapshot> get copyWith =>
      throw _privateConstructorUsedError;
}
