// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'perform_throw_packet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PerformThrowPacket _$PerformThrowPacketFromJson(Map<String, dynamic> json) {
  return _PerformThrowPacket.fromJson(json);
}

/// @nodoc
class _$PerformThrowPacketTearOff {
  const _$PerformThrowPacketTearOff();

  _PerformThrowPacket call({required ThrowDto t}) {
    return _PerformThrowPacket(
      t: t,
    );
  }

  PerformThrowPacket fromJson(Map<String, Object?> json) {
    return PerformThrowPacket.fromJson(json);
  }
}

/// @nodoc
const $PerformThrowPacket = _$PerformThrowPacketTearOff();

/// @nodoc
mixin _$PerformThrowPacket {
  ThrowDto get t => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PerformThrowPacketCopyWith<PerformThrowPacket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PerformThrowPacketCopyWith<$Res> {
  factory $PerformThrowPacketCopyWith(
          PerformThrowPacket value, $Res Function(PerformThrowPacket) then) =
      _$PerformThrowPacketCopyWithImpl<$Res>;
  $Res call({ThrowDto t});

  $ThrowDtoCopyWith<$Res> get t;
}

/// @nodoc
class _$PerformThrowPacketCopyWithImpl<$Res>
    implements $PerformThrowPacketCopyWith<$Res> {
  _$PerformThrowPacketCopyWithImpl(this._value, this._then);

  final PerformThrowPacket _value;
  // ignore: unused_field
  final $Res Function(PerformThrowPacket) _then;

  @override
  $Res call({
    Object? t = freezed,
  }) {
    return _then(_value.copyWith(
      t: t == freezed
          ? _value.t
          : t // ignore: cast_nullable_to_non_nullable
              as ThrowDto,
    ));
  }

  @override
  $ThrowDtoCopyWith<$Res> get t {
    return $ThrowDtoCopyWith<$Res>(_value.t, (value) {
      return _then(_value.copyWith(t: value));
    });
  }
}

/// @nodoc
abstract class _$PerformThrowPacketCopyWith<$Res>
    implements $PerformThrowPacketCopyWith<$Res> {
  factory _$PerformThrowPacketCopyWith(
          _PerformThrowPacket value, $Res Function(_PerformThrowPacket) then) =
      __$PerformThrowPacketCopyWithImpl<$Res>;
  @override
  $Res call({ThrowDto t});

  @override
  $ThrowDtoCopyWith<$Res> get t;
}

/// @nodoc
class __$PerformThrowPacketCopyWithImpl<$Res>
    extends _$PerformThrowPacketCopyWithImpl<$Res>
    implements _$PerformThrowPacketCopyWith<$Res> {
  __$PerformThrowPacketCopyWithImpl(
      _PerformThrowPacket _value, $Res Function(_PerformThrowPacket) _then)
      : super(_value, (v) => _then(v as _PerformThrowPacket));

  @override
  _PerformThrowPacket get _value => super._value as _PerformThrowPacket;

  @override
  $Res call({
    Object? t = freezed,
  }) {
    return _then(_PerformThrowPacket(
      t: t == freezed
          ? _value.t
          : t // ignore: cast_nullable_to_non_nullable
              as ThrowDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements<RequestPacket>()
class _$_PerformThrowPacket extends _PerformThrowPacket {
  const _$_PerformThrowPacket({required this.t}) : super._();

  factory _$_PerformThrowPacket.fromJson(Map<String, dynamic> json) =>
      _$$_PerformThrowPacketFromJson(json);

  @override
  final ThrowDto t;

  @override
  String toString() {
    return 'PerformThrowPacket(t: $t)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PerformThrowPacket &&
            const DeepCollectionEquality().equals(other.t, t));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(t));

  @JsonKey(ignore: true)
  @override
  _$PerformThrowPacketCopyWith<_PerformThrowPacket> get copyWith =>
      __$PerformThrowPacketCopyWithImpl<_PerformThrowPacket>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PerformThrowPacketToJson(this);
  }
}

abstract class _PerformThrowPacket extends PerformThrowPacket
    implements RequestPacket {
  const factory _PerformThrowPacket({required ThrowDto t}) =
      _$_PerformThrowPacket;
  const _PerformThrowPacket._() : super._();

  factory _PerformThrowPacket.fromJson(Map<String, dynamic> json) =
      _$_PerformThrowPacket.fromJson;

  @override
  ThrowDto get t;
  @override
  @JsonKey(ignore: true)
  _$PerformThrowPacketCopyWith<_PerformThrowPacket> get copyWith =>
      throw _privateConstructorUsedError;
}
