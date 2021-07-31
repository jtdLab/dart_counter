// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_request_packet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthRequestPacket _$AuthRequestPacketFromJson(Map<String, dynamic> json) {
  return _AuthRequestPacket.fromJson(json);
}

/// @nodoc
class _$AuthRequestPacketTearOff {
  const _$AuthRequestPacketTearOff();

  _AuthRequestPacket call({required String idToken}) {
    return _AuthRequestPacket(
      idToken: idToken,
    );
  }

  AuthRequestPacket fromJson(Map<String, Object> json) {
    return AuthRequestPacket.fromJson(json);
  }
}

/// @nodoc
const $AuthRequestPacket = _$AuthRequestPacketTearOff();

/// @nodoc
mixin _$AuthRequestPacket {
  String get idToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthRequestPacketCopyWith<AuthRequestPacket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthRequestPacketCopyWith<$Res> {
  factory $AuthRequestPacketCopyWith(
          AuthRequestPacket value, $Res Function(AuthRequestPacket) then) =
      _$AuthRequestPacketCopyWithImpl<$Res>;
  $Res call({String idToken});
}

/// @nodoc
class _$AuthRequestPacketCopyWithImpl<$Res>
    implements $AuthRequestPacketCopyWith<$Res> {
  _$AuthRequestPacketCopyWithImpl(this._value, this._then);

  final AuthRequestPacket _value;
  // ignore: unused_field
  final $Res Function(AuthRequestPacket) _then;

  @override
  $Res call({
    Object? idToken = freezed,
  }) {
    return _then(_value.copyWith(
      idToken: idToken == freezed
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AuthRequestPacketCopyWith<$Res>
    implements $AuthRequestPacketCopyWith<$Res> {
  factory _$AuthRequestPacketCopyWith(
          _AuthRequestPacket value, $Res Function(_AuthRequestPacket) then) =
      __$AuthRequestPacketCopyWithImpl<$Res>;
  @override
  $Res call({String idToken});
}

/// @nodoc
class __$AuthRequestPacketCopyWithImpl<$Res>
    extends _$AuthRequestPacketCopyWithImpl<$Res>
    implements _$AuthRequestPacketCopyWith<$Res> {
  __$AuthRequestPacketCopyWithImpl(
      _AuthRequestPacket _value, $Res Function(_AuthRequestPacket) _then)
      : super(_value, (v) => _then(v as _AuthRequestPacket));

  @override
  _AuthRequestPacket get _value => super._value as _AuthRequestPacket;

  @override
  $Res call({
    Object? idToken = freezed,
  }) {
    return _then(_AuthRequestPacket(
      idToken: idToken == freezed
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements(RequestPacket)
class _$_AuthRequestPacket extends _AuthRequestPacket {
  const _$_AuthRequestPacket({required this.idToken}) : super._();

  factory _$_AuthRequestPacket.fromJson(Map<String, dynamic> json) =>
      _$_$_AuthRequestPacketFromJson(json);

  @override
  final String idToken;

  @override
  String toString() {
    return 'AuthRequestPacket(idToken: $idToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthRequestPacket &&
            (identical(other.idToken, idToken) ||
                const DeepCollectionEquality().equals(other.idToken, idToken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(idToken);

  @JsonKey(ignore: true)
  @override
  _$AuthRequestPacketCopyWith<_AuthRequestPacket> get copyWith =>
      __$AuthRequestPacketCopyWithImpl<_AuthRequestPacket>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AuthRequestPacketToJson(this);
  }
}

abstract class _AuthRequestPacket extends AuthRequestPacket
    implements RequestPacket {
  const factory _AuthRequestPacket({required String idToken}) =
      _$_AuthRequestPacket;
  const _AuthRequestPacket._() : super._();

  factory _AuthRequestPacket.fromJson(Map<String, dynamic> json) =
      _$_AuthRequestPacket.fromJson;

  @override
  String get idToken => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AuthRequestPacketCopyWith<_AuthRequestPacket> get copyWith =>
      throw _privateConstructorUsedError;
}
