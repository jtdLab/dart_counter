// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_game_response_packet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateGameResponsePacket _$CreateGameResponsePacketFromJson(
    Map<String, dynamic> json) {
  return _CreateGameResponsePacket.fromJson(json);
}

/// @nodoc
class _$CreateGameResponsePacketTearOff {
  const _$CreateGameResponsePacketTearOff();

  _CreateGameResponsePacket call(
      {required bool successful, GameSnapshotDto? snapshot}) {
    return _CreateGameResponsePacket(
      successful: successful,
      snapshot: snapshot,
    );
  }

  CreateGameResponsePacket fromJson(Map<String, Object?> json) {
    return CreateGameResponsePacket.fromJson(json);
  }
}

/// @nodoc
const $CreateGameResponsePacket = _$CreateGameResponsePacketTearOff();

/// @nodoc
mixin _$CreateGameResponsePacket {
  bool get successful => throw _privateConstructorUsedError;
  GameSnapshotDto? get snapshot => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateGameResponsePacketCopyWith<CreateGameResponsePacket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateGameResponsePacketCopyWith<$Res> {
  factory $CreateGameResponsePacketCopyWith(CreateGameResponsePacket value,
          $Res Function(CreateGameResponsePacket) then) =
      _$CreateGameResponsePacketCopyWithImpl<$Res>;
  $Res call({bool successful, GameSnapshotDto? snapshot});

  $GameSnapshotDtoCopyWith<$Res>? get snapshot;
}

/// @nodoc
class _$CreateGameResponsePacketCopyWithImpl<$Res>
    implements $CreateGameResponsePacketCopyWith<$Res> {
  _$CreateGameResponsePacketCopyWithImpl(this._value, this._then);

  final CreateGameResponsePacket _value;
  // ignore: unused_field
  final $Res Function(CreateGameResponsePacket) _then;

  @override
  $Res call({
    Object? successful = freezed,
    Object? snapshot = freezed,
  }) {
    return _then(_value.copyWith(
      successful: successful == freezed
          ? _value.successful
          : successful // ignore: cast_nullable_to_non_nullable
              as bool,
      snapshot: snapshot == freezed
          ? _value.snapshot
          : snapshot // ignore: cast_nullable_to_non_nullable
              as GameSnapshotDto?,
    ));
  }

  @override
  $GameSnapshotDtoCopyWith<$Res>? get snapshot {
    if (_value.snapshot == null) {
      return null;
    }

    return $GameSnapshotDtoCopyWith<$Res>(_value.snapshot!, (value) {
      return _then(_value.copyWith(snapshot: value));
    });
  }
}

/// @nodoc
abstract class _$CreateGameResponsePacketCopyWith<$Res>
    implements $CreateGameResponsePacketCopyWith<$Res> {
  factory _$CreateGameResponsePacketCopyWith(_CreateGameResponsePacket value,
          $Res Function(_CreateGameResponsePacket) then) =
      __$CreateGameResponsePacketCopyWithImpl<$Res>;
  @override
  $Res call({bool successful, GameSnapshotDto? snapshot});

  @override
  $GameSnapshotDtoCopyWith<$Res>? get snapshot;
}

/// @nodoc
class __$CreateGameResponsePacketCopyWithImpl<$Res>
    extends _$CreateGameResponsePacketCopyWithImpl<$Res>
    implements _$CreateGameResponsePacketCopyWith<$Res> {
  __$CreateGameResponsePacketCopyWithImpl(_CreateGameResponsePacket _value,
      $Res Function(_CreateGameResponsePacket) _then)
      : super(_value, (v) => _then(v as _CreateGameResponsePacket));

  @override
  _CreateGameResponsePacket get _value =>
      super._value as _CreateGameResponsePacket;

  @override
  $Res call({
    Object? successful = freezed,
    Object? snapshot = freezed,
  }) {
    return _then(_CreateGameResponsePacket(
      successful: successful == freezed
          ? _value.successful
          : successful // ignore: cast_nullable_to_non_nullable
              as bool,
      snapshot: snapshot == freezed
          ? _value.snapshot
          : snapshot // ignore: cast_nullable_to_non_nullable
              as GameSnapshotDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements<ResponsePacket>()
class _$_CreateGameResponsePacket extends _CreateGameResponsePacket {
  const _$_CreateGameResponsePacket({required this.successful, this.snapshot})
      : super._();

  factory _$_CreateGameResponsePacket.fromJson(Map<String, dynamic> json) =>
      _$$_CreateGameResponsePacketFromJson(json);

  @override
  final bool successful;
  @override
  final GameSnapshotDto? snapshot;

  @override
  String toString() {
    return 'CreateGameResponsePacket(successful: $successful, snapshot: $snapshot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateGameResponsePacket &&
            (identical(other.successful, successful) ||
                other.successful == successful) &&
            (identical(other.snapshot, snapshot) ||
                other.snapshot == snapshot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, successful, snapshot);

  @JsonKey(ignore: true)
  @override
  _$CreateGameResponsePacketCopyWith<_CreateGameResponsePacket> get copyWith =>
      __$CreateGameResponsePacketCopyWithImpl<_CreateGameResponsePacket>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateGameResponsePacketToJson(this);
  }
}

abstract class _CreateGameResponsePacket extends CreateGameResponsePacket
    implements ResponsePacket {
  const factory _CreateGameResponsePacket(
      {required bool successful,
      GameSnapshotDto? snapshot}) = _$_CreateGameResponsePacket;
  const _CreateGameResponsePacket._() : super._();

  factory _CreateGameResponsePacket.fromJson(Map<String, dynamic> json) =
      _$_CreateGameResponsePacket.fromJson;

  @override
  bool get successful;
  @override
  GameSnapshotDto? get snapshot;
  @override
  @JsonKey(ignore: true)
  _$CreateGameResponsePacketCopyWith<_CreateGameResponsePacket> get copyWith =>
      throw _privateConstructorUsedError;
}
