// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'join_game_response_packet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JoinGameResponsePacket _$JoinGameResponsePacketFromJson(
    Map<String, dynamic> json) {
  return _JoinGameResponsePacket.fromJson(json);
}

/// @nodoc
class _$JoinGameResponsePacketTearOff {
  const _$JoinGameResponsePacketTearOff();

  _JoinGameResponsePacket call(
      {required bool successful, GameSnapshotDto? snapshot}) {
    return _JoinGameResponsePacket(
      successful: successful,
      snapshot: snapshot,
    );
  }

  JoinGameResponsePacket fromJson(Map<String, Object> json) {
    return JoinGameResponsePacket.fromJson(json);
  }
}

/// @nodoc
const $JoinGameResponsePacket = _$JoinGameResponsePacketTearOff();

/// @nodoc
mixin _$JoinGameResponsePacket {
  bool get successful => throw _privateConstructorUsedError;
  GameSnapshotDto? get snapshot => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JoinGameResponsePacketCopyWith<JoinGameResponsePacket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinGameResponsePacketCopyWith<$Res> {
  factory $JoinGameResponsePacketCopyWith(JoinGameResponsePacket value,
          $Res Function(JoinGameResponsePacket) then) =
      _$JoinGameResponsePacketCopyWithImpl<$Res>;
  $Res call({bool successful, GameSnapshotDto? snapshot});

  $GameSnapshotDtoCopyWith<$Res>? get snapshot;
}

/// @nodoc
class _$JoinGameResponsePacketCopyWithImpl<$Res>
    implements $JoinGameResponsePacketCopyWith<$Res> {
  _$JoinGameResponsePacketCopyWithImpl(this._value, this._then);

  final JoinGameResponsePacket _value;
  // ignore: unused_field
  final $Res Function(JoinGameResponsePacket) _then;

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
abstract class _$JoinGameResponsePacketCopyWith<$Res>
    implements $JoinGameResponsePacketCopyWith<$Res> {
  factory _$JoinGameResponsePacketCopyWith(_JoinGameResponsePacket value,
          $Res Function(_JoinGameResponsePacket) then) =
      __$JoinGameResponsePacketCopyWithImpl<$Res>;
  @override
  $Res call({bool successful, GameSnapshotDto? snapshot});

  @override
  $GameSnapshotDtoCopyWith<$Res>? get snapshot;
}

/// @nodoc
class __$JoinGameResponsePacketCopyWithImpl<$Res>
    extends _$JoinGameResponsePacketCopyWithImpl<$Res>
    implements _$JoinGameResponsePacketCopyWith<$Res> {
  __$JoinGameResponsePacketCopyWithImpl(_JoinGameResponsePacket _value,
      $Res Function(_JoinGameResponsePacket) _then)
      : super(_value, (v) => _then(v as _JoinGameResponsePacket));

  @override
  _JoinGameResponsePacket get _value => super._value as _JoinGameResponsePacket;

  @override
  $Res call({
    Object? successful = freezed,
    Object? snapshot = freezed,
  }) {
    return _then(_JoinGameResponsePacket(
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
@Implements(ResponsePacket)
class _$_JoinGameResponsePacket extends _JoinGameResponsePacket {
  const _$_JoinGameResponsePacket({required this.successful, this.snapshot})
      : super._();

  factory _$_JoinGameResponsePacket.fromJson(Map<String, dynamic> json) =>
      _$_$_JoinGameResponsePacketFromJson(json);

  @override
  final bool successful;
  @override
  final GameSnapshotDto? snapshot;

  @override
  String toString() {
    return 'JoinGameResponsePacket(successful: $successful, snapshot: $snapshot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JoinGameResponsePacket &&
            (identical(other.successful, successful) ||
                const DeepCollectionEquality()
                    .equals(other.successful, successful)) &&
            (identical(other.snapshot, snapshot) ||
                const DeepCollectionEquality()
                    .equals(other.snapshot, snapshot)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(successful) ^
      const DeepCollectionEquality().hash(snapshot);

  @JsonKey(ignore: true)
  @override
  _$JoinGameResponsePacketCopyWith<_JoinGameResponsePacket> get copyWith =>
      __$JoinGameResponsePacketCopyWithImpl<_JoinGameResponsePacket>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_JoinGameResponsePacketToJson(this);
  }
}

abstract class _JoinGameResponsePacket extends JoinGameResponsePacket
    implements ResponsePacket {
  const factory _JoinGameResponsePacket(
      {required bool successful,
      GameSnapshotDto? snapshot}) = _$_JoinGameResponsePacket;
  const _JoinGameResponsePacket._() : super._();

  factory _JoinGameResponsePacket.fromJson(Map<String, dynamic> json) =
      _$_JoinGameResponsePacket.fromJson;

  @override
  bool get successful => throw _privateConstructorUsedError;
  @override
  GameSnapshotDto? get snapshot => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$JoinGameResponsePacketCopyWith<_JoinGameResponsePacket> get copyWith =>
      throw _privateConstructorUsedError;
}
