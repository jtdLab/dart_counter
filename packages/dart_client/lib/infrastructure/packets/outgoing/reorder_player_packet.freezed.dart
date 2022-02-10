// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reorder_player_packet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReorderPlayerPacket _$ReorderPlayerPacketFromJson(Map<String, dynamic> json) {
  return _ReorderPlayerPacket.fromJson(json);
}

/// @nodoc
class _$ReorderPlayerPacketTearOff {
  const _$ReorderPlayerPacketTearOff();

  _ReorderPlayerPacket call({required int oldIndex, required int newIndex}) {
    return _ReorderPlayerPacket(
      oldIndex: oldIndex,
      newIndex: newIndex,
    );
  }

  ReorderPlayerPacket fromJson(Map<String, Object?> json) {
    return ReorderPlayerPacket.fromJson(json);
  }
}

/// @nodoc
const $ReorderPlayerPacket = _$ReorderPlayerPacketTearOff();

/// @nodoc
mixin _$ReorderPlayerPacket {
  int get oldIndex => throw _privateConstructorUsedError;
  int get newIndex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReorderPlayerPacketCopyWith<ReorderPlayerPacket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReorderPlayerPacketCopyWith<$Res> {
  factory $ReorderPlayerPacketCopyWith(
          ReorderPlayerPacket value, $Res Function(ReorderPlayerPacket) then) =
      _$ReorderPlayerPacketCopyWithImpl<$Res>;
  $Res call({int oldIndex, int newIndex});
}

/// @nodoc
class _$ReorderPlayerPacketCopyWithImpl<$Res>
    implements $ReorderPlayerPacketCopyWith<$Res> {
  _$ReorderPlayerPacketCopyWithImpl(this._value, this._then);

  final ReorderPlayerPacket _value;
  // ignore: unused_field
  final $Res Function(ReorderPlayerPacket) _then;

  @override
  $Res call({
    Object? oldIndex = freezed,
    Object? newIndex = freezed,
  }) {
    return _then(_value.copyWith(
      oldIndex: oldIndex == freezed
          ? _value.oldIndex
          : oldIndex // ignore: cast_nullable_to_non_nullable
              as int,
      newIndex: newIndex == freezed
          ? _value.newIndex
          : newIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ReorderPlayerPacketCopyWith<$Res>
    implements $ReorderPlayerPacketCopyWith<$Res> {
  factory _$ReorderPlayerPacketCopyWith(_ReorderPlayerPacket value,
          $Res Function(_ReorderPlayerPacket) then) =
      __$ReorderPlayerPacketCopyWithImpl<$Res>;
  @override
  $Res call({int oldIndex, int newIndex});
}

/// @nodoc
class __$ReorderPlayerPacketCopyWithImpl<$Res>
    extends _$ReorderPlayerPacketCopyWithImpl<$Res>
    implements _$ReorderPlayerPacketCopyWith<$Res> {
  __$ReorderPlayerPacketCopyWithImpl(
      _ReorderPlayerPacket _value, $Res Function(_ReorderPlayerPacket) _then)
      : super(_value, (v) => _then(v as _ReorderPlayerPacket));

  @override
  _ReorderPlayerPacket get _value => super._value as _ReorderPlayerPacket;

  @override
  $Res call({
    Object? oldIndex = freezed,
    Object? newIndex = freezed,
  }) {
    return _then(_ReorderPlayerPacket(
      oldIndex: oldIndex == freezed
          ? _value.oldIndex
          : oldIndex // ignore: cast_nullable_to_non_nullable
              as int,
      newIndex: newIndex == freezed
          ? _value.newIndex
          : newIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements<RequestPacket>()
class _$_ReorderPlayerPacket extends _ReorderPlayerPacket {
  const _$_ReorderPlayerPacket({required this.oldIndex, required this.newIndex})
      : super._();

  factory _$_ReorderPlayerPacket.fromJson(Map<String, dynamic> json) =>
      _$$_ReorderPlayerPacketFromJson(json);

  @override
  final int oldIndex;
  @override
  final int newIndex;

  @override
  String toString() {
    return 'ReorderPlayerPacket(oldIndex: $oldIndex, newIndex: $newIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReorderPlayerPacket &&
            const DeepCollectionEquality().equals(other.oldIndex, oldIndex) &&
            const DeepCollectionEquality().equals(other.newIndex, newIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(oldIndex),
      const DeepCollectionEquality().hash(newIndex));

  @JsonKey(ignore: true)
  @override
  _$ReorderPlayerPacketCopyWith<_ReorderPlayerPacket> get copyWith =>
      __$ReorderPlayerPacketCopyWithImpl<_ReorderPlayerPacket>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReorderPlayerPacketToJson(this);
  }
}

abstract class _ReorderPlayerPacket extends ReorderPlayerPacket
    implements RequestPacket {
  const factory _ReorderPlayerPacket(
      {required int oldIndex, required int newIndex}) = _$_ReorderPlayerPacket;
  const _ReorderPlayerPacket._() : super._();

  factory _ReorderPlayerPacket.fromJson(Map<String, dynamic> json) =
      _$_ReorderPlayerPacket.fromJson;

  @override
  int get oldIndex;
  @override
  int get newIndex;
  @override
  @JsonKey(ignore: true)
  _$ReorderPlayerPacketCopyWith<_ReorderPlayerPacket> get copyWith =>
      throw _privateConstructorUsedError;
}
