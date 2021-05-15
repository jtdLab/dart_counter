// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'leg.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LegTearOff {
  const _$LegTearOff();

  _Leg call({required UniqueId id, required KtList<Throw> throws}) {
    return _Leg(
      id: id,
      throws: throws,
    );
  }
}

/// @nodoc
const $Leg = _$LegTearOff();

/// @nodoc
mixin _$Leg {
  UniqueId get id => throw _privateConstructorUsedError;
  KtList<Throw> get throws => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LegCopyWith<Leg> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LegCopyWith<$Res> {
  factory $LegCopyWith(Leg value, $Res Function(Leg) then) =
      _$LegCopyWithImpl<$Res>;
  $Res call({UniqueId id, KtList<Throw> throws});
}

/// @nodoc
class _$LegCopyWithImpl<$Res> implements $LegCopyWith<$Res> {
  _$LegCopyWithImpl(this._value, this._then);

  final Leg _value;
  // ignore: unused_field
  final $Res Function(Leg) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? throws = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      throws: throws == freezed
          ? _value.throws
          : throws // ignore: cast_nullable_to_non_nullable
              as KtList<Throw>,
    ));
  }
}

/// @nodoc
abstract class _$LegCopyWith<$Res> implements $LegCopyWith<$Res> {
  factory _$LegCopyWith(_Leg value, $Res Function(_Leg) then) =
      __$LegCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, KtList<Throw> throws});
}

/// @nodoc
class __$LegCopyWithImpl<$Res> extends _$LegCopyWithImpl<$Res>
    implements _$LegCopyWith<$Res> {
  __$LegCopyWithImpl(_Leg _value, $Res Function(_Leg) _then)
      : super(_value, (v) => _then(v as _Leg));

  @override
  _Leg get _value => super._value as _Leg;

  @override
  $Res call({
    Object? id = freezed,
    Object? throws = freezed,
  }) {
    return _then(_Leg(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      throws: throws == freezed
          ? _value.throws
          : throws // ignore: cast_nullable_to_non_nullable
              as KtList<Throw>,
    ));
  }
}

/// @nodoc
class _$_Leg implements _Leg {
  const _$_Leg({required this.id, required this.throws});

  @override
  final UniqueId id;
  @override
  final KtList<Throw> throws;

  @override
  String toString() {
    return 'Leg(id: $id, throws: $throws)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Leg &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.throws, throws) ||
                const DeepCollectionEquality().equals(other.throws, throws)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(throws);

  @JsonKey(ignore: true)
  @override
  _$LegCopyWith<_Leg> get copyWith =>
      __$LegCopyWithImpl<_Leg>(this, _$identity);
}

abstract class _Leg implements Leg {
  const factory _Leg({required UniqueId id, required KtList<Throw> throws}) =
      _$_Leg;

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  KtList<Throw> get throws => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LegCopyWith<_Leg> get copyWith => throw _privateConstructorUsedError;
}
