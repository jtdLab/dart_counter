// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'set_starting_points_packet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SetStartingPointsPacket _$SetStartingPointsPacketFromJson(
    Map<String, dynamic> json) {
  return _SetStartingPointsPacket.fromJson(json);
}

/// @nodoc
class _$SetStartingPointsPacketTearOff {
  const _$SetStartingPointsPacketTearOff();

  _SetStartingPointsPacket call({required int startingPoints}) {
    return _SetStartingPointsPacket(
      startingPoints: startingPoints,
    );
  }

  SetStartingPointsPacket fromJson(Map<String, Object> json) {
    return SetStartingPointsPacket.fromJson(json);
  }
}

/// @nodoc
const $SetStartingPointsPacket = _$SetStartingPointsPacketTearOff();

/// @nodoc
mixin _$SetStartingPointsPacket {
  int get startingPoints => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetStartingPointsPacketCopyWith<SetStartingPointsPacket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetStartingPointsPacketCopyWith<$Res> {
  factory $SetStartingPointsPacketCopyWith(SetStartingPointsPacket value,
          $Res Function(SetStartingPointsPacket) then) =
      _$SetStartingPointsPacketCopyWithImpl<$Res>;
  $Res call({int startingPoints});
}

/// @nodoc
class _$SetStartingPointsPacketCopyWithImpl<$Res>
    implements $SetStartingPointsPacketCopyWith<$Res> {
  _$SetStartingPointsPacketCopyWithImpl(this._value, this._then);

  final SetStartingPointsPacket _value;
  // ignore: unused_field
  final $Res Function(SetStartingPointsPacket) _then;

  @override
  $Res call({
    Object? startingPoints = freezed,
  }) {
    return _then(_value.copyWith(
      startingPoints: startingPoints == freezed
          ? _value.startingPoints
          : startingPoints // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$SetStartingPointsPacketCopyWith<$Res>
    implements $SetStartingPointsPacketCopyWith<$Res> {
  factory _$SetStartingPointsPacketCopyWith(_SetStartingPointsPacket value,
          $Res Function(_SetStartingPointsPacket) then) =
      __$SetStartingPointsPacketCopyWithImpl<$Res>;
  @override
  $Res call({int startingPoints});
}

/// @nodoc
class __$SetStartingPointsPacketCopyWithImpl<$Res>
    extends _$SetStartingPointsPacketCopyWithImpl<$Res>
    implements _$SetStartingPointsPacketCopyWith<$Res> {
  __$SetStartingPointsPacketCopyWithImpl(_SetStartingPointsPacket _value,
      $Res Function(_SetStartingPointsPacket) _then)
      : super(_value, (v) => _then(v as _SetStartingPointsPacket));

  @override
  _SetStartingPointsPacket get _value =>
      super._value as _SetStartingPointsPacket;

  @override
  $Res call({
    Object? startingPoints = freezed,
  }) {
    return _then(_SetStartingPointsPacket(
      startingPoints: startingPoints == freezed
          ? _value.startingPoints
          : startingPoints // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements(RequestPacket)
class _$_SetStartingPointsPacket extends _SetStartingPointsPacket {
  const _$_SetStartingPointsPacket({required this.startingPoints}) : super._();

  factory _$_SetStartingPointsPacket.fromJson(Map<String, dynamic> json) =>
      _$_$_SetStartingPointsPacketFromJson(json);

  @override
  final int startingPoints;

  @override
  String toString() {
    return 'SetStartingPointsPacket(startingPoints: $startingPoints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetStartingPointsPacket &&
            (identical(other.startingPoints, startingPoints) ||
                const DeepCollectionEquality()
                    .equals(other.startingPoints, startingPoints)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(startingPoints);

  @JsonKey(ignore: true)
  @override
  _$SetStartingPointsPacketCopyWith<_SetStartingPointsPacket> get copyWith =>
      __$SetStartingPointsPacketCopyWithImpl<_SetStartingPointsPacket>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SetStartingPointsPacketToJson(this);
  }
}

abstract class _SetStartingPointsPacket extends SetStartingPointsPacket
    implements RequestPacket {
  const factory _SetStartingPointsPacket({required int startingPoints}) =
      _$_SetStartingPointsPacket;
  const _SetStartingPointsPacket._() : super._();

  factory _SetStartingPointsPacket.fromJson(Map<String, dynamic> json) =
      _$_SetStartingPointsPacket.fromJson;

  @override
  int get startingPoints => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SetStartingPointsPacketCopyWith<_SetStartingPointsPacket> get copyWith =>
      throw _privateConstructorUsedError;
}
