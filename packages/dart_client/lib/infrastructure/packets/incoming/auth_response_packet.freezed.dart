// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_response_packet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthResponsePacket _$AuthResponsePacketFromJson(Map<String, dynamic> json) {
  return _AuthResponsePacket.fromJson(json);
}

/// @nodoc
class _$AuthResponsePacketTearOff {
  const _$AuthResponsePacketTearOff();

  _AuthResponsePacket call({required bool successful}) {
    return _AuthResponsePacket(
      successful: successful,
    );
  }

  AuthResponsePacket fromJson(Map<String, Object?> json) {
    return AuthResponsePacket.fromJson(json);
  }
}

/// @nodoc
const $AuthResponsePacket = _$AuthResponsePacketTearOff();

/// @nodoc
mixin _$AuthResponsePacket {
  bool get successful => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthResponsePacketCopyWith<AuthResponsePacket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthResponsePacketCopyWith<$Res> {
  factory $AuthResponsePacketCopyWith(
          AuthResponsePacket value, $Res Function(AuthResponsePacket) then) =
      _$AuthResponsePacketCopyWithImpl<$Res>;
  $Res call({bool successful});
}

/// @nodoc
class _$AuthResponsePacketCopyWithImpl<$Res>
    implements $AuthResponsePacketCopyWith<$Res> {
  _$AuthResponsePacketCopyWithImpl(this._value, this._then);

  final AuthResponsePacket _value;
  // ignore: unused_field
  final $Res Function(AuthResponsePacket) _then;

  @override
  $Res call({
    Object? successful = freezed,
  }) {
    return _then(_value.copyWith(
      successful: successful == freezed
          ? _value.successful
          : successful // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$AuthResponsePacketCopyWith<$Res>
    implements $AuthResponsePacketCopyWith<$Res> {
  factory _$AuthResponsePacketCopyWith(
          _AuthResponsePacket value, $Res Function(_AuthResponsePacket) then) =
      __$AuthResponsePacketCopyWithImpl<$Res>;
  @override
  $Res call({bool successful});
}

/// @nodoc
class __$AuthResponsePacketCopyWithImpl<$Res>
    extends _$AuthResponsePacketCopyWithImpl<$Res>
    implements _$AuthResponsePacketCopyWith<$Res> {
  __$AuthResponsePacketCopyWithImpl(
      _AuthResponsePacket _value, $Res Function(_AuthResponsePacket) _then)
      : super(_value, (v) => _then(v as _AuthResponsePacket));

  @override
  _AuthResponsePacket get _value => super._value as _AuthResponsePacket;

  @override
  $Res call({
    Object? successful = freezed,
  }) {
    return _then(_AuthResponsePacket(
      successful: successful == freezed
          ? _value.successful
          : successful // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements<ResponsePacket>()
class _$_AuthResponsePacket extends _AuthResponsePacket {
  const _$_AuthResponsePacket({required this.successful}) : super._();

  factory _$_AuthResponsePacket.fromJson(Map<String, dynamic> json) =>
      _$$_AuthResponsePacketFromJson(json);

  @override
  final bool successful;

  @override
  String toString() {
    return 'AuthResponsePacket(successful: $successful)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthResponsePacket &&
            const DeepCollectionEquality()
                .equals(other.successful, successful));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(successful));

  @JsonKey(ignore: true)
  @override
  _$AuthResponsePacketCopyWith<_AuthResponsePacket> get copyWith =>
      __$AuthResponsePacketCopyWithImpl<_AuthResponsePacket>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthResponsePacketToJson(this);
  }
}

abstract class _AuthResponsePacket extends AuthResponsePacket
    implements ResponsePacket {
  const factory _AuthResponsePacket({required bool successful}) =
      _$_AuthResponsePacket;
  const _AuthResponsePacket._() : super._();

  factory _AuthResponsePacket.fromJson(Map<String, dynamic> json) =
      _$_AuthResponsePacket.fromJson;

  @override
  bool get successful;
  @override
  @JsonKey(ignore: true)
  _$AuthResponsePacketCopyWith<_AuthResponsePacket> get copyWith =>
      throw _privateConstructorUsedError;
}
