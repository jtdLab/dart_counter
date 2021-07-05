// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'checkout_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CheckoutDetailsEventTearOff {
  const _$CheckoutDetailsEventTearOff();

  _Started started() {
    return const _Started();
  }
}

/// @nodoc
const $CheckoutDetailsEvent = _$CheckoutDetailsEventTearOff();

/// @nodoc
mixin _$CheckoutDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutDetailsEventCopyWith<$Res> {
  factory $CheckoutDetailsEventCopyWith(CheckoutDetailsEvent value,
          $Res Function(CheckoutDetailsEvent) then) =
      _$CheckoutDetailsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CheckoutDetailsEventCopyWithImpl<$Res>
    implements $CheckoutDetailsEventCopyWith<$Res> {
  _$CheckoutDetailsEventCopyWithImpl(this._value, this._then);

  final CheckoutDetailsEvent _value;
  // ignore: unused_field
  final $Res Function(CheckoutDetailsEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$CheckoutDetailsEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'CheckoutDetailsEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CheckoutDetailsEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
class _$CheckoutDetailsStateTearOff {
  const _$CheckoutDetailsStateTearOff();

  _CheckoutDetailsState call(
      {required int minDartsThrown,
      required int maxDartsThrown,
      required int minDartsOnDouble,
      required int maxDartsOnDouble}) {
    return _CheckoutDetailsState(
      minDartsThrown: minDartsThrown,
      maxDartsThrown: maxDartsThrown,
      minDartsOnDouble: minDartsOnDouble,
      maxDartsOnDouble: maxDartsOnDouble,
    );
  }
}

/// @nodoc
const $CheckoutDetailsState = _$CheckoutDetailsStateTearOff();

/// @nodoc
mixin _$CheckoutDetailsState {
  int get minDartsThrown => throw _privateConstructorUsedError;
  int get maxDartsThrown => throw _privateConstructorUsedError;
  int get minDartsOnDouble => throw _privateConstructorUsedError;
  int get maxDartsOnDouble => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckoutDetailsStateCopyWith<CheckoutDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutDetailsStateCopyWith<$Res> {
  factory $CheckoutDetailsStateCopyWith(CheckoutDetailsState value,
          $Res Function(CheckoutDetailsState) then) =
      _$CheckoutDetailsStateCopyWithImpl<$Res>;
  $Res call(
      {int minDartsThrown,
      int maxDartsThrown,
      int minDartsOnDouble,
      int maxDartsOnDouble});
}

/// @nodoc
class _$CheckoutDetailsStateCopyWithImpl<$Res>
    implements $CheckoutDetailsStateCopyWith<$Res> {
  _$CheckoutDetailsStateCopyWithImpl(this._value, this._then);

  final CheckoutDetailsState _value;
  // ignore: unused_field
  final $Res Function(CheckoutDetailsState) _then;

  @override
  $Res call({
    Object? minDartsThrown = freezed,
    Object? maxDartsThrown = freezed,
    Object? minDartsOnDouble = freezed,
    Object? maxDartsOnDouble = freezed,
  }) {
    return _then(_value.copyWith(
      minDartsThrown: minDartsThrown == freezed
          ? _value.minDartsThrown
          : minDartsThrown // ignore: cast_nullable_to_non_nullable
              as int,
      maxDartsThrown: maxDartsThrown == freezed
          ? _value.maxDartsThrown
          : maxDartsThrown // ignore: cast_nullable_to_non_nullable
              as int,
      minDartsOnDouble: minDartsOnDouble == freezed
          ? _value.minDartsOnDouble
          : minDartsOnDouble // ignore: cast_nullable_to_non_nullable
              as int,
      maxDartsOnDouble: maxDartsOnDouble == freezed
          ? _value.maxDartsOnDouble
          : maxDartsOnDouble // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CheckoutDetailsStateCopyWith<$Res>
    implements $CheckoutDetailsStateCopyWith<$Res> {
  factory _$CheckoutDetailsStateCopyWith(_CheckoutDetailsState value,
          $Res Function(_CheckoutDetailsState) then) =
      __$CheckoutDetailsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int minDartsThrown,
      int maxDartsThrown,
      int minDartsOnDouble,
      int maxDartsOnDouble});
}

/// @nodoc
class __$CheckoutDetailsStateCopyWithImpl<$Res>
    extends _$CheckoutDetailsStateCopyWithImpl<$Res>
    implements _$CheckoutDetailsStateCopyWith<$Res> {
  __$CheckoutDetailsStateCopyWithImpl(
      _CheckoutDetailsState _value, $Res Function(_CheckoutDetailsState) _then)
      : super(_value, (v) => _then(v as _CheckoutDetailsState));

  @override
  _CheckoutDetailsState get _value => super._value as _CheckoutDetailsState;

  @override
  $Res call({
    Object? minDartsThrown = freezed,
    Object? maxDartsThrown = freezed,
    Object? minDartsOnDouble = freezed,
    Object? maxDartsOnDouble = freezed,
  }) {
    return _then(_CheckoutDetailsState(
      minDartsThrown: minDartsThrown == freezed
          ? _value.minDartsThrown
          : minDartsThrown // ignore: cast_nullable_to_non_nullable
              as int,
      maxDartsThrown: maxDartsThrown == freezed
          ? _value.maxDartsThrown
          : maxDartsThrown // ignore: cast_nullable_to_non_nullable
              as int,
      minDartsOnDouble: minDartsOnDouble == freezed
          ? _value.minDartsOnDouble
          : minDartsOnDouble // ignore: cast_nullable_to_non_nullable
              as int,
      maxDartsOnDouble: maxDartsOnDouble == freezed
          ? _value.maxDartsOnDouble
          : maxDartsOnDouble // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CheckoutDetailsState implements _CheckoutDetailsState {
  const _$_CheckoutDetailsState(
      {required this.minDartsThrown,
      required this.maxDartsThrown,
      required this.minDartsOnDouble,
      required this.maxDartsOnDouble});

  @override
  final int minDartsThrown;
  @override
  final int maxDartsThrown;
  @override
  final int minDartsOnDouble;
  @override
  final int maxDartsOnDouble;

  @override
  String toString() {
    return 'CheckoutDetailsState(minDartsThrown: $minDartsThrown, maxDartsThrown: $maxDartsThrown, minDartsOnDouble: $minDartsOnDouble, maxDartsOnDouble: $maxDartsOnDouble)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckoutDetailsState &&
            (identical(other.minDartsThrown, minDartsThrown) ||
                const DeepCollectionEquality()
                    .equals(other.minDartsThrown, minDartsThrown)) &&
            (identical(other.maxDartsThrown, maxDartsThrown) ||
                const DeepCollectionEquality()
                    .equals(other.maxDartsThrown, maxDartsThrown)) &&
            (identical(other.minDartsOnDouble, minDartsOnDouble) ||
                const DeepCollectionEquality()
                    .equals(other.minDartsOnDouble, minDartsOnDouble)) &&
            (identical(other.maxDartsOnDouble, maxDartsOnDouble) ||
                const DeepCollectionEquality()
                    .equals(other.maxDartsOnDouble, maxDartsOnDouble)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(minDartsThrown) ^
      const DeepCollectionEquality().hash(maxDartsThrown) ^
      const DeepCollectionEquality().hash(minDartsOnDouble) ^
      const DeepCollectionEquality().hash(maxDartsOnDouble);

  @JsonKey(ignore: true)
  @override
  _$CheckoutDetailsStateCopyWith<_CheckoutDetailsState> get copyWith =>
      __$CheckoutDetailsStateCopyWithImpl<_CheckoutDetailsState>(
          this, _$identity);
}

abstract class _CheckoutDetailsState implements CheckoutDetailsState {
  const factory _CheckoutDetailsState(
      {required int minDartsThrown,
      required int maxDartsThrown,
      required int minDartsOnDouble,
      required int maxDartsOnDouble}) = _$_CheckoutDetailsState;

  @override
  int get minDartsThrown => throw _privateConstructorUsedError;
  @override
  int get maxDartsThrown => throw _privateConstructorUsedError;
  @override
  int get minDartsOnDouble => throw _privateConstructorUsedError;
  @override
  int get maxDartsOnDouble => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CheckoutDetailsStateCopyWith<_CheckoutDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
