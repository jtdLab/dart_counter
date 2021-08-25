// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'game_invitation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GameInvitationTearOff {
  const _$GameInvitationTearOff();

  _GameInvitation call(
      {required UniqueId id,
      required Username from,
      required String lobbyCode,
      required bool read}) {
    return _GameInvitation(
      id: id,
      from: from,
      lobbyCode: lobbyCode,
      read: read,
    );
  }
}

/// @nodoc
const $GameInvitation = _$GameInvitationTearOff();

/// @nodoc
mixin _$GameInvitation {
  UniqueId get id => throw _privateConstructorUsedError;
  Username get from => throw _privateConstructorUsedError;
  String get lobbyCode => throw _privateConstructorUsedError;
  bool get read => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameInvitationCopyWith<GameInvitation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameInvitationCopyWith<$Res> {
  factory $GameInvitationCopyWith(
          GameInvitation value, $Res Function(GameInvitation) then) =
      _$GameInvitationCopyWithImpl<$Res>;
  $Res call({UniqueId id, Username from, String lobbyCode, bool read});
}

/// @nodoc
class _$GameInvitationCopyWithImpl<$Res>
    implements $GameInvitationCopyWith<$Res> {
  _$GameInvitationCopyWithImpl(this._value, this._then);

  final GameInvitation _value;
  // ignore: unused_field
  final $Res Function(GameInvitation) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? from = freezed,
    Object? lobbyCode = freezed,
    Object? read = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as Username,
      lobbyCode: lobbyCode == freezed
          ? _value.lobbyCode
          : lobbyCode // ignore: cast_nullable_to_non_nullable
              as String,
      read: read == freezed
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$GameInvitationCopyWith<$Res>
    implements $GameInvitationCopyWith<$Res> {
  factory _$GameInvitationCopyWith(
          _GameInvitation value, $Res Function(_GameInvitation) then) =
      __$GameInvitationCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, Username from, String lobbyCode, bool read});
}

/// @nodoc
class __$GameInvitationCopyWithImpl<$Res>
    extends _$GameInvitationCopyWithImpl<$Res>
    implements _$GameInvitationCopyWith<$Res> {
  __$GameInvitationCopyWithImpl(
      _GameInvitation _value, $Res Function(_GameInvitation) _then)
      : super(_value, (v) => _then(v as _GameInvitation));

  @override
  _GameInvitation get _value => super._value as _GameInvitation;

  @override
  $Res call({
    Object? id = freezed,
    Object? from = freezed,
    Object? lobbyCode = freezed,
    Object? read = freezed,
  }) {
    return _then(_GameInvitation(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as Username,
      lobbyCode: lobbyCode == freezed
          ? _value.lobbyCode
          : lobbyCode // ignore: cast_nullable_to_non_nullable
              as String,
      read: read == freezed
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_GameInvitation implements _GameInvitation {
  const _$_GameInvitation(
      {required this.id,
      required this.from,
      required this.lobbyCode,
      required this.read});

  @override
  final UniqueId id;
  @override
  final Username from;
  @override
  final String lobbyCode;
  @override
  final bool read;

  @override
  String toString() {
    return 'GameInvitation(id: $id, from: $from, lobbyCode: $lobbyCode, read: $read)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GameInvitation &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.lobbyCode, lobbyCode) ||
                const DeepCollectionEquality()
                    .equals(other.lobbyCode, lobbyCode)) &&
            (identical(other.read, read) ||
                const DeepCollectionEquality().equals(other.read, read)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(lobbyCode) ^
      const DeepCollectionEquality().hash(read);

  @JsonKey(ignore: true)
  @override
  _$GameInvitationCopyWith<_GameInvitation> get copyWith =>
      __$GameInvitationCopyWithImpl<_GameInvitation>(this, _$identity);
}

abstract class _GameInvitation implements GameInvitation {
  const factory _GameInvitation(
      {required UniqueId id,
      required Username from,
      required String lobbyCode,
      required bool read}) = _$_GameInvitation;

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  Username get from => throw _privateConstructorUsedError;
  @override
  String get lobbyCode => throw _privateConstructorUsedError;
  @override
  bool get read => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GameInvitationCopyWith<_GameInvitation> get copyWith =>
      throw _privateConstructorUsedError;
}
