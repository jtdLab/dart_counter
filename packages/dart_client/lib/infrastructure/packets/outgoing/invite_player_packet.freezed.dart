// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'invite_player_packet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InvitePlayerPacket _$InvitePlayerPacketFromJson(Map<String, dynamic> json) {
  return _InvitePlayerPacket.fromJson(json);
}

/// @nodoc
class _$InvitePlayerPacketTearOff {
  const _$InvitePlayerPacketTearOff();

  _InvitePlayerPacket call({required String uid}) {
    return _InvitePlayerPacket(
      uid: uid,
    );
  }

  InvitePlayerPacket fromJson(Map<String, Object> json) {
    return InvitePlayerPacket.fromJson(json);
  }
}

/// @nodoc
const $InvitePlayerPacket = _$InvitePlayerPacketTearOff();

/// @nodoc
mixin _$InvitePlayerPacket {
  String get uid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvitePlayerPacketCopyWith<InvitePlayerPacket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvitePlayerPacketCopyWith<$Res> {
  factory $InvitePlayerPacketCopyWith(
          InvitePlayerPacket value, $Res Function(InvitePlayerPacket) then) =
      _$InvitePlayerPacketCopyWithImpl<$Res>;
  $Res call({String uid});
}

/// @nodoc
class _$InvitePlayerPacketCopyWithImpl<$Res>
    implements $InvitePlayerPacketCopyWith<$Res> {
  _$InvitePlayerPacketCopyWithImpl(this._value, this._then);

  final InvitePlayerPacket _value;
  // ignore: unused_field
  final $Res Function(InvitePlayerPacket) _then;

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
abstract class _$InvitePlayerPacketCopyWith<$Res>
    implements $InvitePlayerPacketCopyWith<$Res> {
  factory _$InvitePlayerPacketCopyWith(
          _InvitePlayerPacket value, $Res Function(_InvitePlayerPacket) then) =
      __$InvitePlayerPacketCopyWithImpl<$Res>;
  @override
  $Res call({String uid});
}

/// @nodoc
class __$InvitePlayerPacketCopyWithImpl<$Res>
    extends _$InvitePlayerPacketCopyWithImpl<$Res>
    implements _$InvitePlayerPacketCopyWith<$Res> {
  __$InvitePlayerPacketCopyWithImpl(
      _InvitePlayerPacket _value, $Res Function(_InvitePlayerPacket) _then)
      : super(_value, (v) => _then(v as _InvitePlayerPacket));

  @override
  _InvitePlayerPacket get _value => super._value as _InvitePlayerPacket;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(_InvitePlayerPacket(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements(RequestPacket)
class _$_InvitePlayerPacket extends _InvitePlayerPacket {
  const _$_InvitePlayerPacket({required this.uid}) : super._();

  factory _$_InvitePlayerPacket.fromJson(Map<String, dynamic> json) =>
      _$_$_InvitePlayerPacketFromJson(json);

  @override
  final String uid;

  @override
  String toString() {
    return 'InvitePlayerPacket(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvitePlayerPacket &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(uid);

  @JsonKey(ignore: true)
  @override
  _$InvitePlayerPacketCopyWith<_InvitePlayerPacket> get copyWith =>
      __$InvitePlayerPacketCopyWithImpl<_InvitePlayerPacket>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_InvitePlayerPacketToJson(this);
  }
}

abstract class _InvitePlayerPacket extends InvitePlayerPacket
    implements RequestPacket {
  const factory _InvitePlayerPacket({required String uid}) =
      _$_InvitePlayerPacket;
  const _InvitePlayerPacket._() : super._();

  factory _InvitePlayerPacket.fromJson(Map<String, dynamic> json) =
      _$_InvitePlayerPacket.fromJson;

  @override
  String get uid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InvitePlayerPacketCopyWith<_InvitePlayerPacket> get copyWith =>
      throw _privateConstructorUsedError;
}
