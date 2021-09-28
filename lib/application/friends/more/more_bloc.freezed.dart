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

  RemovePressed removePressed({required User friend}) {
    return RemovePressed(
      friend: friend,
    );
  }

  ShowProfilePressed showProfilePressed({required User friend}) {
    return ShowProfilePressed(
      friend: friend,
    );
  }
}

/// @nodoc
const $MoreEvent = _$MoreEventTearOff();

/// @nodoc
mixin _$MoreEvent {
  User get friend => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User friend) removePressed,
    required TResult Function(User friend) showProfilePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User friend)? removePressed,
    TResult Function(User friend)? showProfilePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User friend)? removePressed,
    TResult Function(User friend)? showProfilePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RemovePressed value) removePressed,
    required TResult Function(ShowProfilePressed value) showProfilePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RemovePressed value)? removePressed,
    TResult Function(ShowProfilePressed value)? showProfilePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RemovePressed value)? removePressed,
    TResult Function(ShowProfilePressed value)? showProfilePressed,
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
  $Res call({User friend});

  $UserCopyWith<$Res> get friend;
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
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get friend {
    return $UserCopyWith<$Res>(_value.friend, (value) {
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
  $Res call({User friend});

  @override
  $UserCopyWith<$Res> get friend;
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
              as User,
    ));
  }
}

/// @nodoc

class _$RemovePressed implements RemovePressed {
  const _$RemovePressed({required this.friend});

  @override
  final User friend;

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
    required TResult Function(User friend) removePressed,
    required TResult Function(User friend) showProfilePressed,
  }) {
    return removePressed(friend);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User friend)? removePressed,
    TResult Function(User friend)? showProfilePressed,
  }) {
    return removePressed?.call(friend);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User friend)? removePressed,
    TResult Function(User friend)? showProfilePressed,
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
    required TResult Function(ShowProfilePressed value) showProfilePressed,
  }) {
    return removePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RemovePressed value)? removePressed,
    TResult Function(ShowProfilePressed value)? showProfilePressed,
  }) {
    return removePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RemovePressed value)? removePressed,
    TResult Function(ShowProfilePressed value)? showProfilePressed,
    required TResult orElse(),
  }) {
    if (removePressed != null) {
      return removePressed(this);
    }
    return orElse();
  }
}

abstract class RemovePressed implements MoreEvent {
  const factory RemovePressed({required User friend}) = _$RemovePressed;

  @override
  User get friend => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $RemovePressedCopyWith<RemovePressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowProfilePressedCopyWith<$Res>
    implements $MoreEventCopyWith<$Res> {
  factory $ShowProfilePressedCopyWith(
          ShowProfilePressed value, $Res Function(ShowProfilePressed) then) =
      _$ShowProfilePressedCopyWithImpl<$Res>;
  @override
  $Res call({User friend});

  @override
  $UserCopyWith<$Res> get friend;
}

/// @nodoc
class _$ShowProfilePressedCopyWithImpl<$Res>
    extends _$MoreEventCopyWithImpl<$Res>
    implements $ShowProfilePressedCopyWith<$Res> {
  _$ShowProfilePressedCopyWithImpl(
      ShowProfilePressed _value, $Res Function(ShowProfilePressed) _then)
      : super(_value, (v) => _then(v as ShowProfilePressed));

  @override
  ShowProfilePressed get _value => super._value as ShowProfilePressed;

  @override
  $Res call({
    Object? friend = freezed,
  }) {
    return _then(ShowProfilePressed(
      friend: friend == freezed
          ? _value.friend
          : friend // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$ShowProfilePressed implements ShowProfilePressed {
  const _$ShowProfilePressed({required this.friend});

  @override
  final User friend;

  @override
  String toString() {
    return 'MoreEvent.showProfilePressed(friend: $friend)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShowProfilePressed &&
            (identical(other.friend, friend) ||
                const DeepCollectionEquality().equals(other.friend, friend)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(friend);

  @JsonKey(ignore: true)
  @override
  $ShowProfilePressedCopyWith<ShowProfilePressed> get copyWith =>
      _$ShowProfilePressedCopyWithImpl<ShowProfilePressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User friend) removePressed,
    required TResult Function(User friend) showProfilePressed,
  }) {
    return showProfilePressed(friend);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User friend)? removePressed,
    TResult Function(User friend)? showProfilePressed,
  }) {
    return showProfilePressed?.call(friend);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User friend)? removePressed,
    TResult Function(User friend)? showProfilePressed,
    required TResult orElse(),
  }) {
    if (showProfilePressed != null) {
      return showProfilePressed(friend);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RemovePressed value) removePressed,
    required TResult Function(ShowProfilePressed value) showProfilePressed,
  }) {
    return showProfilePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RemovePressed value)? removePressed,
    TResult Function(ShowProfilePressed value)? showProfilePressed,
  }) {
    return showProfilePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RemovePressed value)? removePressed,
    TResult Function(ShowProfilePressed value)? showProfilePressed,
    required TResult orElse(),
  }) {
    if (showProfilePressed != null) {
      return showProfilePressed(this);
    }
    return orElse();
  }
}

abstract class ShowProfilePressed implements MoreEvent {
  const factory ShowProfilePressed({required User friend}) =
      _$ShowProfilePressed;

  @override
  User get friend => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ShowProfilePressedCopyWith<ShowProfilePressed> get copyWith =>
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
