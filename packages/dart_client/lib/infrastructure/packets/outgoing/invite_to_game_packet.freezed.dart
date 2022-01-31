// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'invite_to_game_packet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InviteToGamePacket _$InviteToGamePacketFromJson(Map<String, dynamic> json) {
  return _InviteToGamePacket.fromJson(json);
}

/// @nodoc
class _$InviteToGamePacketTearOff {
  const _$InviteToGamePacketTearOff();

  _InviteToGamePacket call({required String uid}) {
    return _InviteToGamePacket(
      uid: uid,
    );
  }

  InviteToGamePacket fromJson(Map<String, Object?> json) {
    return InviteToGamePacket.fromJson(json);
  }
}

/// @nodoc
const $InviteToGamePacket = _$InviteToGamePacketTearOff();

/// @nodoc
mixin _$InviteToGamePacket {
  String get uid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InviteToGamePacketCopyWith<InviteToGamePacket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InviteToGamePacketCopyWith<$Res> {
  factory $InviteToGamePacketCopyWith(
          InviteToGamePacket value, $Res Function(InviteToGamePacket) then) =
      _$InviteToGamePacketCopyWithImpl<$Res>;
  $Res call({String uid});
}

/// @nodoc
class _$InviteToGamePacketCopyWithImpl<$Res>
    implements $InviteToGamePacketCopyWith<$Res> {
  _$InviteToGamePacketCopyWithImpl(this._value, this._then);

  final InviteToGamePacket _value;
  // ignore: unused_field
  final $Res Function(InviteToGamePacket) _then;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$InviteToGamePacketCopyWith<$Res>
    implements $InviteToGamePacketCopyWith<$Res> {
  factory _$InviteToGamePacketCopyWith(
          _InviteToGamePacket value, $Res Function(_InviteToGamePacket) then) =
      __$InviteToGamePacketCopyWithImpl<$Res>;
  @override
  $Res call({String uid});
}

/// @nodoc
class __$InviteToGamePacketCopyWithImpl<$Res>
    extends _$InviteToGamePacketCopyWithImpl<$Res>
    implements _$InviteToGamePacketCopyWith<$Res> {
  __$InviteToGamePacketCopyWithImpl(
      _InviteToGamePacket _value, $Res Function(_InviteToGamePacket) _then)
      : super(_value, (v) => _then(v as _InviteToGamePacket));

  @override
  _InviteToGamePacket get _value => super._value as _InviteToGamePacket;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(_InviteToGamePacket(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements<RequestPacket>()
class _$_InviteToGamePacket extends _InviteToGamePacket {
  const _$_InviteToGamePacket({required this.uid}) : super._();

  factory _$_InviteToGamePacket.fromJson(Map<String, dynamic> json) =>
      _$$_InviteToGamePacketFromJson(json);

  @override
  final String uid;

  @override
  String toString() {
    return 'InviteToGamePacket(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InviteToGamePacket &&
            const DeepCollectionEquality().equals(other.uid, uid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(uid));

  @JsonKey(ignore: true)
  @override
  _$InviteToGamePacketCopyWith<_InviteToGamePacket> get copyWith =>
      __$InviteToGamePacketCopyWithImpl<_InviteToGamePacket>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InviteToGamePacketToJson(this);
  }
}

abstract class _InviteToGamePacket extends InviteToGamePacket
    implements RequestPacket {
  const factory _InviteToGamePacket({required String uid}) =
      _$_InviteToGamePacket;
  const _InviteToGamePacket._() : super._();

  factory _InviteToGamePacket.fromJson(Map<String, dynamic> json) =
      _$_InviteToGamePacket.fromJson;

  @override
  String get uid;
  @override
  @JsonKey(ignore: true)
  _$InviteToGamePacketCopyWith<_InviteToGamePacket> get copyWith =>
      throw _privateConstructorUsedError;
}
