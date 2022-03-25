// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'in_game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InGameStateTearOff {
  const _$InGameStateTearOff();

  InGameInitial<T> initial<T extends AbstractGameSnapshot>(
      {required T gameSnapshot, required bool showCheckoutDetails}) {
    return InGameInitial<T>(
      gameSnapshot: gameSnapshot,
      showCheckoutDetails: showCheckoutDetails,
    );
  }
}

/// @nodoc
const $InGameState = _$InGameStateTearOff();

/// @nodoc
mixin _$InGameState<T extends AbstractGameSnapshot> {
  T get gameSnapshot => throw _privateConstructorUsedError;
  bool get showCheckoutDetails => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T gameSnapshot, bool showCheckoutDetails) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T gameSnapshot, bool showCheckoutDetails)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T gameSnapshot, bool showCheckoutDetails)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InGameInitial<T> value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InGameInitial<T> value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InGameInitial<T> value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InGameStateCopyWith<T, InGameState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InGameStateCopyWith<T extends AbstractGameSnapshot, $Res> {
  factory $InGameStateCopyWith(
          InGameState<T> value, $Res Function(InGameState<T>) then) =
      _$InGameStateCopyWithImpl<T, $Res>;
  $Res call({T gameSnapshot, bool showCheckoutDetails});
}

/// @nodoc
class _$InGameStateCopyWithImpl<T extends AbstractGameSnapshot, $Res>
    implements $InGameStateCopyWith<T, $Res> {
  _$InGameStateCopyWithImpl(this._value, this._then);

  final InGameState<T> _value;
  // ignore: unused_field
  final $Res Function(InGameState<T>) _then;

  @override
  $Res call({
    Object? gameSnapshot = freezed,
    Object? showCheckoutDetails = freezed,
  }) {
    return _then(_value.copyWith(
      gameSnapshot: gameSnapshot == freezed
          ? _value.gameSnapshot
          : gameSnapshot // ignore: cast_nullable_to_non_nullable
              as T,
      showCheckoutDetails: showCheckoutDetails == freezed
          ? _value.showCheckoutDetails
          : showCheckoutDetails // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class $InGameInitialCopyWith<T extends AbstractGameSnapshot, $Res>
    implements $InGameStateCopyWith<T, $Res> {
  factory $InGameInitialCopyWith(
          InGameInitial<T> value, $Res Function(InGameInitial<T>) then) =
      _$InGameInitialCopyWithImpl<T, $Res>;
  @override
  $Res call({T gameSnapshot, bool showCheckoutDetails});
}

/// @nodoc
class _$InGameInitialCopyWithImpl<T extends AbstractGameSnapshot, $Res>
    extends _$InGameStateCopyWithImpl<T, $Res>
    implements $InGameInitialCopyWith<T, $Res> {
  _$InGameInitialCopyWithImpl(
      InGameInitial<T> _value, $Res Function(InGameInitial<T>) _then)
      : super(_value, (v) => _then(v as InGameInitial<T>));

  @override
  InGameInitial<T> get _value => super._value as InGameInitial<T>;

  @override
  $Res call({
    Object? gameSnapshot = freezed,
    Object? showCheckoutDetails = freezed,
  }) {
    return _then(InGameInitial<T>(
      gameSnapshot: gameSnapshot == freezed
          ? _value.gameSnapshot
          : gameSnapshot // ignore: cast_nullable_to_non_nullable
              as T,
      showCheckoutDetails: showCheckoutDetails == freezed
          ? _value.showCheckoutDetails
          : showCheckoutDetails // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InGameInitial<T extends AbstractGameSnapshot>
    implements InGameInitial<T> {
  const _$InGameInitial(
      {required this.gameSnapshot, required this.showCheckoutDetails});

  @override
  final T gameSnapshot;
  @override
  final bool showCheckoutDetails;

  @override
  String toString() {
    return 'InGameState<$T>.initial(gameSnapshot: $gameSnapshot, showCheckoutDetails: $showCheckoutDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InGameInitial<T> &&
            const DeepCollectionEquality()
                .equals(other.gameSnapshot, gameSnapshot) &&
            const DeepCollectionEquality()
                .equals(other.showCheckoutDetails, showCheckoutDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(gameSnapshot),
      const DeepCollectionEquality().hash(showCheckoutDetails));

  @JsonKey(ignore: true)
  @override
  $InGameInitialCopyWith<T, InGameInitial<T>> get copyWith =>
      _$InGameInitialCopyWithImpl<T, InGameInitial<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T gameSnapshot, bool showCheckoutDetails) initial,
  }) {
    return initial(gameSnapshot, showCheckoutDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T gameSnapshot, bool showCheckoutDetails)? initial,
  }) {
    return initial?.call(gameSnapshot, showCheckoutDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T gameSnapshot, bool showCheckoutDetails)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(gameSnapshot, showCheckoutDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InGameInitial<T> value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InGameInitial<T> value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InGameInitial<T> value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InGameInitial<T extends AbstractGameSnapshot>
    implements InGameState<T> {
  const factory InGameInitial(
      {required T gameSnapshot,
      required bool showCheckoutDetails}) = _$InGameInitial<T>;

  @override
  T get gameSnapshot;
  @override
  bool get showCheckoutDetails;
  @override
  @JsonKey(ignore: true)
  $InGameInitialCopyWith<T, InGameInitial<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
