// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'more_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MoreEventTearOff {
  const _$MoreEventTearOff();

  RemovePressed removePressed({required Friend friend}) {
    return RemovePressed(
      friend: friend,
    );
  }
}

/// @nodoc
const $MoreEvent = _$MoreEventTearOff();

/// @nodoc
mixin _$MoreEvent {
  Friend get friend => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Friend friend) removePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Friend friend)? removePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Friend friend)? removePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RemovePressed value) removePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RemovePressed value)? removePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RemovePressed value)? removePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MoreEventCopyWith<MoreEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoreEventCopyWith<$Res> {
  factory $MoreEventCopyWith(MoreEvent value, $Res Function(MoreEvent) then) =
      _$MoreEventCopyWithImpl<$Res>;
  $Res call({Friend friend});

  $FriendCopyWith<$Res> get friend;
}

/// @nodoc
class _$MoreEventCopyWithImpl<$Res> implements $MoreEventCopyWith<$Res> {
  _$MoreEventCopyWithImpl(this._value, this._then);

  final MoreEvent _value;
  // ignore: unused_field
  final $Res Function(MoreEvent) _then;

  @override
  $Res call({
    Object? friend = freezed,
  }) {
    return _then(_value.copyWith(
      friend: friend == freezed
          ? _value.friend
          : friend // ignore: cast_nullable_to_non_nullable
              as Friend,
    ));
  }

  @override
  $FriendCopyWith<$Res> get friend {
    return $FriendCopyWith<$Res>(_value.friend, (value) {
      return _then(_value.copyWith(friend: value));
    });
  }
}

/// @nodoc
abstract class $RemovePressedCopyWith<$Res>
    implements $MoreEventCopyWith<$Res> {
  factory $RemovePressedCopyWith(
          RemovePressed value, $Res Function(RemovePressed) then) =
      _$RemovePressedCopyWithImpl<$Res>;
  @override
  $Res call({Friend friend});

  @override
  $FriendCopyWith<$Res> get friend;
}

/// @nodoc
class _$RemovePressedCopyWithImpl<$Res> extends _$MoreEventCopyWithImpl<$Res>
    implements $RemovePressedCopyWith<$Res> {
  _$RemovePressedCopyWithImpl(
      RemovePressed _value, $Res Function(RemovePressed) _then)
      : super(_value, (v) => _then(v as RemovePressed));

  @override
  RemovePressed get _value => super._value as RemovePressed;

  @override
  $Res call({
    Object? friend = freezed,
  }) {
    return _then(RemovePressed(
      friend: friend == freezed
          ? _value.friend
          : friend // ignore: cast_nullable_to_non_nullable
              as Friend,
    ));
  }
}

/// @nodoc

class _$RemovePressed implements RemovePressed {
  const _$RemovePressed({required this.friend});

  @override
  final Friend friend;

  @override
  String toString() {
    return 'MoreEvent.removePressed(friend: $friend)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemovePressed &&
            (identical(other.friend, friend) ||
                const DeepCollectionEquality().equals(other.friend, friend)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(friend);

  @JsonKey(ignore: true)
  @override
  $RemovePressedCopyWith<RemovePressed> get copyWith =>
      _$RemovePressedCopyWithImpl<RemovePressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Friend friend) removePressed,
  }) {
    return removePressed(friend);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Friend friend)? removePressed,
  }) {
    return removePressed?.call(friend);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Friend friend)? removePressed,
    required TResult orElse(),
  }) {
    if (removePressed != null) {
      return removePressed(friend);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RemovePressed value) removePressed,
  }) {
    return removePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RemovePressed value)? removePressed,
  }) {
    return removePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RemovePressed value)? removePressed,
    required TResult orElse(),
  }) {
    if (removePressed != null) {
      return removePressed(this);
    }
    return orElse();
  }
}

abstract class RemovePressed implements MoreEvent {
  const factory RemovePressed({required Friend friend}) = _$RemovePressed;

  @override
  Friend get friend => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $RemovePressedCopyWith<RemovePressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$MoreStateTearOff {
  const _$MoreStateTearOff();

  Initial initial() {
    return const Initial();
  }
}

/// @nodoc
const $MoreState = _$MoreStateTearOff();

/// @nodoc
mixin _$MoreState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoreStateCopyWith<$Res> {
  factory $MoreStateCopyWith(MoreState value, $Res Function(MoreState) then) =
      _$MoreStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MoreStateCopyWithImpl<$Res> implements $MoreStateCopyWith<$Res> {
  _$MoreStateCopyWithImpl(this._value, this._then);

  final MoreState _value;
  // ignore: unused_field
  final $Res Function(MoreState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$MoreStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'MoreState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements MoreState {
  const factory Initial() = _$Initial;
}
