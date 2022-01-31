// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'container.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ContainerTearOff {
  const _$ContainerTearOff();

  _Container call(
      {required int timestamp, required String payloadType, Packet? payload}) {
    return _Container(
      timestamp: timestamp,
      payloadType: payloadType,
      payload: payload,
    );
  }
}

/// @nodoc
const $Container = _$ContainerTearOff();

/// @nodoc
mixin _$Container {
  int get timestamp => throw _privateConstructorUsedError;
  String get payloadType => throw _privateConstructorUsedError;
  Packet? get payload => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContainerCopyWith<Container> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContainerCopyWith<$Res> {
  factory $ContainerCopyWith(Container value, $Res Function(Container) then) =
      _$ContainerCopyWithImpl<$Res>;
  $Res call({int timestamp, String payloadType, Packet? payload});
}

/// @nodoc
class _$ContainerCopyWithImpl<$Res> implements $ContainerCopyWith<$Res> {
  _$ContainerCopyWithImpl(this._value, this._then);

  final Container _value;
  // ignore: unused_field
  final $Res Function(Container) _then;

  @override
  $Res call({
    Object? timestamp = freezed,
    Object? payloadType = freezed,
    Object? payload = freezed,
  }) {
    return _then(_value.copyWith(
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      payloadType: payloadType == freezed
          ? _value.payloadType
          : payloadType // ignore: cast_nullable_to_non_nullable
              as String,
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Packet?,
    ));
  }
}

/// @nodoc
abstract class _$ContainerCopyWith<$Res> implements $ContainerCopyWith<$Res> {
  factory _$ContainerCopyWith(
          _Container value, $Res Function(_Container) then) =
      __$ContainerCopyWithImpl<$Res>;
  @override
  $Res call({int timestamp, String payloadType, Packet? payload});
}

/// @nodoc
class __$ContainerCopyWithImpl<$Res> extends _$ContainerCopyWithImpl<$Res>
    implements _$ContainerCopyWith<$Res> {
  __$ContainerCopyWithImpl(_Container _value, $Res Function(_Container) _then)
      : super(_value, (v) => _then(v as _Container));

  @override
  _Container get _value => super._value as _Container;

  @override
  $Res call({
    Object? timestamp = freezed,
    Object? payloadType = freezed,
    Object? payload = freezed,
  }) {
    return _then(_Container(
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      payloadType: payloadType == freezed
          ? _value.payloadType
          : payloadType // ignore: cast_nullable_to_non_nullable
              as String,
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Packet?,
    ));
  }
}

/// @nodoc

class _$_Container extends _Container {
  const _$_Container(
      {required this.timestamp, required this.payloadType, this.payload})
      : super._();

  @override
  final int timestamp;
  @override
  final String payloadType;
  @override
  final Packet? payload;

  @override
  String toString() {
    return 'Container(timestamp: $timestamp, payloadType: $payloadType, payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Container &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp) &&
            const DeepCollectionEquality()
                .equals(other.payloadType, payloadType) &&
            const DeepCollectionEquality().equals(other.payload, payload));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(timestamp),
      const DeepCollectionEquality().hash(payloadType),
      const DeepCollectionEquality().hash(payload));

  @JsonKey(ignore: true)
  @override
  _$ContainerCopyWith<_Container> get copyWith =>
      __$ContainerCopyWithImpl<_Container>(this, _$identity);
}

abstract class _Container extends Container {
  const factory _Container(
      {required int timestamp,
      required String payloadType,
      Packet? payload}) = _$_Container;
  const _Container._() : super._();

  @override
  int get timestamp;
  @override
  String get payloadType;
  @override
  Packet? get payload;
  @override
  @JsonKey(ignore: true)
  _$ContainerCopyWith<_Container> get copyWith =>
      throw _privateConstructorUsedError;
}
