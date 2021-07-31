// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'set_mode_packet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SetModePacket _$SetModePacketFromJson(Map<String, dynamic> json) {
  return _SetModePacket.fromJson(json);
}

/// @nodoc
class _$SetModePacketTearOff {
  const _$SetModePacketTearOff();

  _SetModePacket call({required Mode mode}) {
    return _SetModePacket(
      mode: mode,
    );
  }

  SetModePacket fromJson(Map<String, Object> json) {
    return SetModePacket.fromJson(json);
  }
}

/// @nodoc
const $SetModePacket = _$SetModePacketTearOff();

/// @nodoc
mixin _$SetModePacket {
  Mode get mode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetModePacketCopyWith<SetModePacket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetModePacketCopyWith<$Res> {
  factory $SetModePacketCopyWith(
          SetModePacket value, $Res Function(SetModePacket) then) =
      _$SetModePacketCopyWithImpl<$Res>;
  $Res call({Mode mode});
}

/// @nodoc
class _$SetModePacketCopyWithImpl<$Res>
    implements $SetModePacketCopyWith<$Res> {
  _$SetModePacketCopyWithImpl(this._value, this._then);

  final SetModePacket _value;
  // ignore: unused_field
  final $Res Function(SetModePacket) _then;

  @override
  $Res call({
    Object? mode = freezed,
  }) {
    return _then(_value.copyWith(
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as Mode,
    ));
  }
}

/// @nodoc
abstract class _$SetModePacketCopyWith<$Res>
    implements $SetModePacketCopyWith<$Res> {
  factory _$SetModePacketCopyWith(
          _SetModePacket value, $Res Function(_SetModePacket) then) =
      __$SetModePacketCopyWithImpl<$Res>;
  @override
  $Res call({Mode mode});
}

/// @nodoc
class __$SetModePacketCopyWithImpl<$Res>
    extends _$SetModePacketCopyWithImpl<$Res>
    implements _$SetModePacketCopyWith<$Res> {
  __$SetModePacketCopyWithImpl(
      _SetModePacket _value, $Res Function(_SetModePacket) _then)
      : super(_value, (v) => _then(v as _SetModePacket));

  @override
  _SetModePacket get _value => super._value as _SetModePacket;

  @override
  $Res call({
    Object? mode = freezed,
  }) {
    return _then(_SetModePacket(
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as Mode,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements(RequestPacket)
class _$_SetModePacket extends _SetModePacket {
  const _$_SetModePacket({required this.mode}) : super._();

  factory _$_SetModePacket.fromJson(Map<String, dynamic> json) =>
      _$_$_SetModePacketFromJson(json);

  @override
  final Mode mode;

  @override
  String toString() {
    return 'SetModePacket(mode: $mode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetModePacket &&
            (identical(other.mode, mode) ||
                const DeepCollectionEquality().equals(other.mode, mode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(mode);

  @JsonKey(ignore: true)
  @override
  _$SetModePacketCopyWith<_SetModePacket> get copyWith =>
      __$SetModePacketCopyWithImpl<_SetModePacket>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SetModePacketToJson(this);
  }
}

abstract class _SetModePacket extends SetModePacket implements RequestPacket {
  const factory _SetModePacket({required Mode mode}) = _$_SetModePacket;
  const _SetModePacket._() : super._();

  factory _SetModePacket.fromJson(Map<String, dynamic> json) =
      _$_SetModePacket.fromJson;

  @override
  Mode get mode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SetModePacketCopyWith<_SetModePacket> get copyWith =>
      throw _privateConstructorUsedError;
}
