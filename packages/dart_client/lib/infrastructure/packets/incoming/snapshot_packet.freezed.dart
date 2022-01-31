// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'snapshot_packet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SnapshotPacket _$SnapshotPacketFromJson(Map<String, dynamic> json) {
  return _SnapshotPacket.fromJson(json);
}

/// @nodoc
class _$SnapshotPacketTearOff {
  const _$SnapshotPacketTearOff();

  _SnapshotPacket call({required GameSnapshotDto snapshot}) {
    return _SnapshotPacket(
      snapshot: snapshot,
    );
  }

  SnapshotPacket fromJson(Map<String, Object?> json) {
    return SnapshotPacket.fromJson(json);
  }
}

/// @nodoc
const $SnapshotPacket = _$SnapshotPacketTearOff();

/// @nodoc
mixin _$SnapshotPacket {
  GameSnapshotDto get snapshot => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SnapshotPacketCopyWith<SnapshotPacket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnapshotPacketCopyWith<$Res> {
  factory $SnapshotPacketCopyWith(
          SnapshotPacket value, $Res Function(SnapshotPacket) then) =
      _$SnapshotPacketCopyWithImpl<$Res>;
  $Res call({GameSnapshotDto snapshot});

  $GameSnapshotDtoCopyWith<$Res> get snapshot;
}

/// @nodoc
class _$SnapshotPacketCopyWithImpl<$Res>
    implements $SnapshotPacketCopyWith<$Res> {
  _$SnapshotPacketCopyWithImpl(this._value, this._then);

  final SnapshotPacket _value;
  // ignore: unused_field
  final $Res Function(SnapshotPacket) _then;

  @override
  $Res call({
    Object? snapshot = freezed,
  }) {
    return _then(_value.copyWith(
      snapshot: snapshot == freezed
          ? _value.snapshot
          : snapshot // ignore: cast_nullable_to_non_nullable
              as GameSnapshotDto,
    ));
  }

  @override
  $GameSnapshotDtoCopyWith<$Res> get snapshot {
    return $GameSnapshotDtoCopyWith<$Res>(_value.snapshot, (value) {
      return _then(_value.copyWith(snapshot: value));
    });
  }
}

/// @nodoc
abstract class _$SnapshotPacketCopyWith<$Res>
    implements $SnapshotPacketCopyWith<$Res> {
  factory _$SnapshotPacketCopyWith(
          _SnapshotPacket value, $Res Function(_SnapshotPacket) then) =
      __$SnapshotPacketCopyWithImpl<$Res>;
  @override
  $Res call({GameSnapshotDto snapshot});

  @override
  $GameSnapshotDtoCopyWith<$Res> get snapshot;
}

/// @nodoc
class __$SnapshotPacketCopyWithImpl<$Res>
    extends _$SnapshotPacketCopyWithImpl<$Res>
    implements _$SnapshotPacketCopyWith<$Res> {
  __$SnapshotPacketCopyWithImpl(
      _SnapshotPacket _value, $Res Function(_SnapshotPacket) _then)
      : super(_value, (v) => _then(v as _SnapshotPacket));

  @override
  _SnapshotPacket get _value => super._value as _SnapshotPacket;

  @override
  $Res call({
    Object? snapshot = freezed,
  }) {
    return _then(_SnapshotPacket(
      snapshot: snapshot == freezed
          ? _value.snapshot
          : snapshot // ignore: cast_nullable_to_non_nullable
              as GameSnapshotDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements<ResponsePacket>()
class _$_SnapshotPacket extends _SnapshotPacket {
  const _$_SnapshotPacket({required this.snapshot}) : super._();

  factory _$_SnapshotPacket.fromJson(Map<String, dynamic> json) =>
      _$$_SnapshotPacketFromJson(json);

  @override
  final GameSnapshotDto snapshot;

  @override
  String toString() {
    return 'SnapshotPacket(snapshot: $snapshot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SnapshotPacket &&
            const DeepCollectionEquality().equals(other.snapshot, snapshot));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(snapshot));

  @JsonKey(ignore: true)
  @override
  _$SnapshotPacketCopyWith<_SnapshotPacket> get copyWith =>
      __$SnapshotPacketCopyWithImpl<_SnapshotPacket>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SnapshotPacketToJson(this);
  }
}

abstract class _SnapshotPacket extends SnapshotPacket
    implements ResponsePacket {
  const factory _SnapshotPacket({required GameSnapshotDto snapshot}) =
      _$_SnapshotPacket;
  const _SnapshotPacket._() : super._();

  factory _SnapshotPacket.fromJson(Map<String, dynamic> json) =
      _$_SnapshotPacket.fromJson;

  @override
  GameSnapshotDto get snapshot;
  @override
  @JsonKey(ignore: true)
  _$SnapshotPacketCopyWith<_SnapshotPacket> get copyWith =>
      throw _privateConstructorUsedError;
}
