// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  _CreateOnlineGamePressed createOnlineGamePressed() {
    return const _CreateOnlineGamePressed();
  }

  _CreateOfflineGamePressed createOfflineGamePressed() {
    return const _CreateOfflineGamePressed();
  }

  _DataReceived dataReceived(
      {required User user,
      required int unreadInvitations,
      required int unreadFriendRequests}) {
    return _DataReceived(
      user: user,
      unreadInvitations: unreadInvitations,
      unreadFriendRequests: unreadFriendRequests,
    );
  }

  _GameReceived gameReceived({required AbstractGameSnapshot gameSnapshot}) {
    return _GameReceived(
      gameSnapshot: gameSnapshot,
    );
  }

  _TrainingGameReceived trainingGameReceived(
      {required AbstractTrainingGameSnapshot trainingGameSnapshot}) {
    return _TrainingGameReceived(
      trainingGameSnapshot: trainingGameSnapshot,
    );
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createOnlineGamePressed,
    required TResult Function() createOfflineGamePressed,
    required TResult Function(
            User user, int unreadInvitations, int unreadFriendRequests)
        dataReceived,
    required TResult Function(AbstractGameSnapshot gameSnapshot) gameReceived,
    required TResult Function(AbstractTrainingGameSnapshot trainingGameSnapshot)
        trainingGameReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? createOnlineGamePressed,
    TResult Function()? createOfflineGamePressed,
    TResult Function(
            User user, int unreadInvitations, int unreadFriendRequests)?
        dataReceived,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
    TResult Function(AbstractTrainingGameSnapshot trainingGameSnapshot)?
        trainingGameReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createOnlineGamePressed,
    TResult Function()? createOfflineGamePressed,
    TResult Function(
            User user, int unreadInvitations, int unreadFriendRequests)?
        dataReceived,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
    TResult Function(AbstractTrainingGameSnapshot trainingGameSnapshot)?
        trainingGameReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateOnlineGamePressed value)
        createOnlineGamePressed,
    required TResult Function(_CreateOfflineGamePressed value)
        createOfflineGamePressed,
    required TResult Function(_DataReceived value) dataReceived,
    required TResult Function(_GameReceived value) gameReceived,
    required TResult Function(_TrainingGameReceived value) trainingGameReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateOnlineGamePressed value)? createOnlineGamePressed,
    TResult Function(_CreateOfflineGamePressed value)? createOfflineGamePressed,
    TResult Function(_DataReceived value)? dataReceived,
    TResult Function(_GameReceived value)? gameReceived,
    TResult Function(_TrainingGameReceived value)? trainingGameReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateOnlineGamePressed value)? createOnlineGamePressed,
    TResult Function(_CreateOfflineGamePressed value)? createOfflineGamePressed,
    TResult Function(_DataReceived value)? dataReceived,
    TResult Function(_GameReceived value)? gameReceived,
    TResult Function(_TrainingGameReceived value)? trainingGameReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class _$CreateOnlineGamePressedCopyWith<$Res> {
  factory _$CreateOnlineGamePressedCopyWith(_CreateOnlineGamePressed value,
          $Res Function(_CreateOnlineGamePressed) then) =
      __$CreateOnlineGamePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateOnlineGamePressedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$CreateOnlineGamePressedCopyWith<$Res> {
  __$CreateOnlineGamePressedCopyWithImpl(_CreateOnlineGamePressed _value,
      $Res Function(_CreateOnlineGamePressed) _then)
      : super(_value, (v) => _then(v as _CreateOnlineGamePressed));

  @override
  _CreateOnlineGamePressed get _value =>
      super._value as _CreateOnlineGamePressed;
}

/// @nodoc

class _$_CreateOnlineGamePressed implements _CreateOnlineGamePressed {
  const _$_CreateOnlineGamePressed();

  @override
  String toString() {
    return 'HomeEvent.createOnlineGamePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CreateOnlineGamePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createOnlineGamePressed,
    required TResult Function() createOfflineGamePressed,
    required TResult Function(
            User user, int unreadInvitations, int unreadFriendRequests)
        dataReceived,
    required TResult Function(AbstractGameSnapshot gameSnapshot) gameReceived,
    required TResult Function(AbstractTrainingGameSnapshot trainingGameSnapshot)
        trainingGameReceived,
  }) {
    return createOnlineGamePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? createOnlineGamePressed,
    TResult Function()? createOfflineGamePressed,
    TResult Function(
            User user, int unreadInvitations, int unreadFriendRequests)?
        dataReceived,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
    TResult Function(AbstractTrainingGameSnapshot trainingGameSnapshot)?
        trainingGameReceived,
  }) {
    return createOnlineGamePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createOnlineGamePressed,
    TResult Function()? createOfflineGamePressed,
    TResult Function(
            User user, int unreadInvitations, int unreadFriendRequests)?
        dataReceived,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
    TResult Function(AbstractTrainingGameSnapshot trainingGameSnapshot)?
        trainingGameReceived,
    required TResult orElse(),
  }) {
    if (createOnlineGamePressed != null) {
      return createOnlineGamePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateOnlineGamePressed value)
        createOnlineGamePressed,
    required TResult Function(_CreateOfflineGamePressed value)
        createOfflineGamePressed,
    required TResult Function(_DataReceived value) dataReceived,
    required TResult Function(_GameReceived value) gameReceived,
    required TResult Function(_TrainingGameReceived value) trainingGameReceived,
  }) {
    return createOnlineGamePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateOnlineGamePressed value)? createOnlineGamePressed,
    TResult Function(_CreateOfflineGamePressed value)? createOfflineGamePressed,
    TResult Function(_DataReceived value)? dataReceived,
    TResult Function(_GameReceived value)? gameReceived,
    TResult Function(_TrainingGameReceived value)? trainingGameReceived,
  }) {
    return createOnlineGamePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateOnlineGamePressed value)? createOnlineGamePressed,
    TResult Function(_CreateOfflineGamePressed value)? createOfflineGamePressed,
    TResult Function(_DataReceived value)? dataReceived,
    TResult Function(_GameReceived value)? gameReceived,
    TResult Function(_TrainingGameReceived value)? trainingGameReceived,
    required TResult orElse(),
  }) {
    if (createOnlineGamePressed != null) {
      return createOnlineGamePressed(this);
    }
    return orElse();
  }
}

abstract class _CreateOnlineGamePressed implements HomeEvent {
  const factory _CreateOnlineGamePressed() = _$_CreateOnlineGamePressed;
}

/// @nodoc
abstract class _$CreateOfflineGamePressedCopyWith<$Res> {
  factory _$CreateOfflineGamePressedCopyWith(_CreateOfflineGamePressed value,
          $Res Function(_CreateOfflineGamePressed) then) =
      __$CreateOfflineGamePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateOfflineGamePressedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$CreateOfflineGamePressedCopyWith<$Res> {
  __$CreateOfflineGamePressedCopyWithImpl(_CreateOfflineGamePressed _value,
      $Res Function(_CreateOfflineGamePressed) _then)
      : super(_value, (v) => _then(v as _CreateOfflineGamePressed));

  @override
  _CreateOfflineGamePressed get _value =>
      super._value as _CreateOfflineGamePressed;
}

/// @nodoc

class _$_CreateOfflineGamePressed implements _CreateOfflineGamePressed {
  const _$_CreateOfflineGamePressed();

  @override
  String toString() {
    return 'HomeEvent.createOfflineGamePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateOfflineGamePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createOnlineGamePressed,
    required TResult Function() createOfflineGamePressed,
    required TResult Function(
            User user, int unreadInvitations, int unreadFriendRequests)
        dataReceived,
    required TResult Function(AbstractGameSnapshot gameSnapshot) gameReceived,
    required TResult Function(AbstractTrainingGameSnapshot trainingGameSnapshot)
        trainingGameReceived,
  }) {
    return createOfflineGamePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? createOnlineGamePressed,
    TResult Function()? createOfflineGamePressed,
    TResult Function(
            User user, int unreadInvitations, int unreadFriendRequests)?
        dataReceived,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
    TResult Function(AbstractTrainingGameSnapshot trainingGameSnapshot)?
        trainingGameReceived,
  }) {
    return createOfflineGamePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createOnlineGamePressed,
    TResult Function()? createOfflineGamePressed,
    TResult Function(
            User user, int unreadInvitations, int unreadFriendRequests)?
        dataReceived,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
    TResult Function(AbstractTrainingGameSnapshot trainingGameSnapshot)?
        trainingGameReceived,
    required TResult orElse(),
  }) {
    if (createOfflineGamePressed != null) {
      return createOfflineGamePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateOnlineGamePressed value)
        createOnlineGamePressed,
    required TResult Function(_CreateOfflineGamePressed value)
        createOfflineGamePressed,
    required TResult Function(_DataReceived value) dataReceived,
    required TResult Function(_GameReceived value) gameReceived,
    required TResult Function(_TrainingGameReceived value) trainingGameReceived,
  }) {
    return createOfflineGamePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateOnlineGamePressed value)? createOnlineGamePressed,
    TResult Function(_CreateOfflineGamePressed value)? createOfflineGamePressed,
    TResult Function(_DataReceived value)? dataReceived,
    TResult Function(_GameReceived value)? gameReceived,
    TResult Function(_TrainingGameReceived value)? trainingGameReceived,
  }) {
    return createOfflineGamePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateOnlineGamePressed value)? createOnlineGamePressed,
    TResult Function(_CreateOfflineGamePressed value)? createOfflineGamePressed,
    TResult Function(_DataReceived value)? dataReceived,
    TResult Function(_GameReceived value)? gameReceived,
    TResult Function(_TrainingGameReceived value)? trainingGameReceived,
    required TResult orElse(),
  }) {
    if (createOfflineGamePressed != null) {
      return createOfflineGamePressed(this);
    }
    return orElse();
  }
}

abstract class _CreateOfflineGamePressed implements HomeEvent {
  const factory _CreateOfflineGamePressed() = _$_CreateOfflineGamePressed;
}

/// @nodoc
abstract class _$DataReceivedCopyWith<$Res> {
  factory _$DataReceivedCopyWith(
          _DataReceived value, $Res Function(_DataReceived) then) =
      __$DataReceivedCopyWithImpl<$Res>;
  $Res call({User user, int unreadInvitations, int unreadFriendRequests});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$DataReceivedCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$DataReceivedCopyWith<$Res> {
  __$DataReceivedCopyWithImpl(
      _DataReceived _value, $Res Function(_DataReceived) _then)
      : super(_value, (v) => _then(v as _DataReceived));

  @override
  _DataReceived get _value => super._value as _DataReceived;

  @override
  $Res call({
    Object? user = freezed,
    Object? unreadInvitations = freezed,
    Object? unreadFriendRequests = freezed,
  }) {
    return _then(_DataReceived(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      unreadInvitations: unreadInvitations == freezed
          ? _value.unreadInvitations
          : unreadInvitations // ignore: cast_nullable_to_non_nullable
              as int,
      unreadFriendRequests: unreadFriendRequests == freezed
          ? _value.unreadFriendRequests
          : unreadFriendRequests // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_DataReceived implements _DataReceived {
  const _$_DataReceived(
      {required this.user,
      required this.unreadInvitations,
      required this.unreadFriendRequests});

  @override
  final User user;
  @override
  final int unreadInvitations;
  @override
  final int unreadFriendRequests;

  @override
  String toString() {
    return 'HomeEvent.dataReceived(user: $user, unreadInvitations: $unreadInvitations, unreadFriendRequests: $unreadFriendRequests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DataReceived &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.unreadInvitations, unreadInvitations) ||
                other.unreadInvitations == unreadInvitations) &&
            (identical(other.unreadFriendRequests, unreadFriendRequests) ||
                other.unreadFriendRequests == unreadFriendRequests));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, user, unreadInvitations, unreadFriendRequests);

  @JsonKey(ignore: true)
  @override
  _$DataReceivedCopyWith<_DataReceived> get copyWith =>
      __$DataReceivedCopyWithImpl<_DataReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createOnlineGamePressed,
    required TResult Function() createOfflineGamePressed,
    required TResult Function(
            User user, int unreadInvitations, int unreadFriendRequests)
        dataReceived,
    required TResult Function(AbstractGameSnapshot gameSnapshot) gameReceived,
    required TResult Function(AbstractTrainingGameSnapshot trainingGameSnapshot)
        trainingGameReceived,
  }) {
    return dataReceived(user, unreadInvitations, unreadFriendRequests);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? createOnlineGamePressed,
    TResult Function()? createOfflineGamePressed,
    TResult Function(
            User user, int unreadInvitations, int unreadFriendRequests)?
        dataReceived,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
    TResult Function(AbstractTrainingGameSnapshot trainingGameSnapshot)?
        trainingGameReceived,
  }) {
    return dataReceived?.call(user, unreadInvitations, unreadFriendRequests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createOnlineGamePressed,
    TResult Function()? createOfflineGamePressed,
    TResult Function(
            User user, int unreadInvitations, int unreadFriendRequests)?
        dataReceived,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
    TResult Function(AbstractTrainingGameSnapshot trainingGameSnapshot)?
        trainingGameReceived,
    required TResult orElse(),
  }) {
    if (dataReceived != null) {
      return dataReceived(user, unreadInvitations, unreadFriendRequests);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateOnlineGamePressed value)
        createOnlineGamePressed,
    required TResult Function(_CreateOfflineGamePressed value)
        createOfflineGamePressed,
    required TResult Function(_DataReceived value) dataReceived,
    required TResult Function(_GameReceived value) gameReceived,
    required TResult Function(_TrainingGameReceived value) trainingGameReceived,
  }) {
    return dataReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateOnlineGamePressed value)? createOnlineGamePressed,
    TResult Function(_CreateOfflineGamePressed value)? createOfflineGamePressed,
    TResult Function(_DataReceived value)? dataReceived,
    TResult Function(_GameReceived value)? gameReceived,
    TResult Function(_TrainingGameReceived value)? trainingGameReceived,
  }) {
    return dataReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateOnlineGamePressed value)? createOnlineGamePressed,
    TResult Function(_CreateOfflineGamePressed value)? createOfflineGamePressed,
    TResult Function(_DataReceived value)? dataReceived,
    TResult Function(_GameReceived value)? gameReceived,
    TResult Function(_TrainingGameReceived value)? trainingGameReceived,
    required TResult orElse(),
  }) {
    if (dataReceived != null) {
      return dataReceived(this);
    }
    return orElse();
  }
}

abstract class _DataReceived implements HomeEvent {
  const factory _DataReceived(
      {required User user,
      required int unreadInvitations,
      required int unreadFriendRequests}) = _$_DataReceived;

  User get user;
  int get unreadInvitations;
  int get unreadFriendRequests;
  @JsonKey(ignore: true)
  _$DataReceivedCopyWith<_DataReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GameReceivedCopyWith<$Res> {
  factory _$GameReceivedCopyWith(
          _GameReceived value, $Res Function(_GameReceived) then) =
      __$GameReceivedCopyWithImpl<$Res>;
  $Res call({AbstractGameSnapshot gameSnapshot});
}

/// @nodoc
class __$GameReceivedCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$GameReceivedCopyWith<$Res> {
  __$GameReceivedCopyWithImpl(
      _GameReceived _value, $Res Function(_GameReceived) _then)
      : super(_value, (v) => _then(v as _GameReceived));

  @override
  _GameReceived get _value => super._value as _GameReceived;

  @override
  $Res call({
    Object? gameSnapshot = freezed,
  }) {
    return _then(_GameReceived(
      gameSnapshot: gameSnapshot == freezed
          ? _value.gameSnapshot
          : gameSnapshot // ignore: cast_nullable_to_non_nullable
              as AbstractGameSnapshot,
    ));
  }
}

/// @nodoc

class _$_GameReceived implements _GameReceived {
  const _$_GameReceived({required this.gameSnapshot});

  @override
  final AbstractGameSnapshot gameSnapshot;

  @override
  String toString() {
    return 'HomeEvent.gameReceived(gameSnapshot: $gameSnapshot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GameReceived &&
            (identical(other.gameSnapshot, gameSnapshot) ||
                other.gameSnapshot == gameSnapshot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameSnapshot);

  @JsonKey(ignore: true)
  @override
  _$GameReceivedCopyWith<_GameReceived> get copyWith =>
      __$GameReceivedCopyWithImpl<_GameReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createOnlineGamePressed,
    required TResult Function() createOfflineGamePressed,
    required TResult Function(
            User user, int unreadInvitations, int unreadFriendRequests)
        dataReceived,
    required TResult Function(AbstractGameSnapshot gameSnapshot) gameReceived,
    required TResult Function(AbstractTrainingGameSnapshot trainingGameSnapshot)
        trainingGameReceived,
  }) {
    return gameReceived(gameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? createOnlineGamePressed,
    TResult Function()? createOfflineGamePressed,
    TResult Function(
            User user, int unreadInvitations, int unreadFriendRequests)?
        dataReceived,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
    TResult Function(AbstractTrainingGameSnapshot trainingGameSnapshot)?
        trainingGameReceived,
  }) {
    return gameReceived?.call(gameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createOnlineGamePressed,
    TResult Function()? createOfflineGamePressed,
    TResult Function(
            User user, int unreadInvitations, int unreadFriendRequests)?
        dataReceived,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
    TResult Function(AbstractTrainingGameSnapshot trainingGameSnapshot)?
        trainingGameReceived,
    required TResult orElse(),
  }) {
    if (gameReceived != null) {
      return gameReceived(gameSnapshot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateOnlineGamePressed value)
        createOnlineGamePressed,
    required TResult Function(_CreateOfflineGamePressed value)
        createOfflineGamePressed,
    required TResult Function(_DataReceived value) dataReceived,
    required TResult Function(_GameReceived value) gameReceived,
    required TResult Function(_TrainingGameReceived value) trainingGameReceived,
  }) {
    return gameReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateOnlineGamePressed value)? createOnlineGamePressed,
    TResult Function(_CreateOfflineGamePressed value)? createOfflineGamePressed,
    TResult Function(_DataReceived value)? dataReceived,
    TResult Function(_GameReceived value)? gameReceived,
    TResult Function(_TrainingGameReceived value)? trainingGameReceived,
  }) {
    return gameReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateOnlineGamePressed value)? createOnlineGamePressed,
    TResult Function(_CreateOfflineGamePressed value)? createOfflineGamePressed,
    TResult Function(_DataReceived value)? dataReceived,
    TResult Function(_GameReceived value)? gameReceived,
    TResult Function(_TrainingGameReceived value)? trainingGameReceived,
    required TResult orElse(),
  }) {
    if (gameReceived != null) {
      return gameReceived(this);
    }
    return orElse();
  }
}

abstract class _GameReceived implements HomeEvent {
  const factory _GameReceived({required AbstractGameSnapshot gameSnapshot}) =
      _$_GameReceived;

  AbstractGameSnapshot get gameSnapshot;
  @JsonKey(ignore: true)
  _$GameReceivedCopyWith<_GameReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TrainingGameReceivedCopyWith<$Res> {
  factory _$TrainingGameReceivedCopyWith(_TrainingGameReceived value,
          $Res Function(_TrainingGameReceived) then) =
      __$TrainingGameReceivedCopyWithImpl<$Res>;
  $Res call({AbstractTrainingGameSnapshot trainingGameSnapshot});
}

/// @nodoc
class __$TrainingGameReceivedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$TrainingGameReceivedCopyWith<$Res> {
  __$TrainingGameReceivedCopyWithImpl(
      _TrainingGameReceived _value, $Res Function(_TrainingGameReceived) _then)
      : super(_value, (v) => _then(v as _TrainingGameReceived));

  @override
  _TrainingGameReceived get _value => super._value as _TrainingGameReceived;

  @override
  $Res call({
    Object? trainingGameSnapshot = freezed,
  }) {
    return _then(_TrainingGameReceived(
      trainingGameSnapshot: trainingGameSnapshot == freezed
          ? _value.trainingGameSnapshot
          : trainingGameSnapshot // ignore: cast_nullable_to_non_nullable
              as AbstractTrainingGameSnapshot,
    ));
  }
}

/// @nodoc

class _$_TrainingGameReceived implements _TrainingGameReceived {
  const _$_TrainingGameReceived({required this.trainingGameSnapshot});

  @override
  final AbstractTrainingGameSnapshot trainingGameSnapshot;

  @override
  String toString() {
    return 'HomeEvent.trainingGameReceived(trainingGameSnapshot: $trainingGameSnapshot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TrainingGameReceived &&
            (identical(other.trainingGameSnapshot, trainingGameSnapshot) ||
                other.trainingGameSnapshot == trainingGameSnapshot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trainingGameSnapshot);

  @JsonKey(ignore: true)
  @override
  _$TrainingGameReceivedCopyWith<_TrainingGameReceived> get copyWith =>
      __$TrainingGameReceivedCopyWithImpl<_TrainingGameReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createOnlineGamePressed,
    required TResult Function() createOfflineGamePressed,
    required TResult Function(
            User user, int unreadInvitations, int unreadFriendRequests)
        dataReceived,
    required TResult Function(AbstractGameSnapshot gameSnapshot) gameReceived,
    required TResult Function(AbstractTrainingGameSnapshot trainingGameSnapshot)
        trainingGameReceived,
  }) {
    return trainingGameReceived(trainingGameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? createOnlineGamePressed,
    TResult Function()? createOfflineGamePressed,
    TResult Function(
            User user, int unreadInvitations, int unreadFriendRequests)?
        dataReceived,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
    TResult Function(AbstractTrainingGameSnapshot trainingGameSnapshot)?
        trainingGameReceived,
  }) {
    return trainingGameReceived?.call(trainingGameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createOnlineGamePressed,
    TResult Function()? createOfflineGamePressed,
    TResult Function(
            User user, int unreadInvitations, int unreadFriendRequests)?
        dataReceived,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
    TResult Function(AbstractTrainingGameSnapshot trainingGameSnapshot)?
        trainingGameReceived,
    required TResult orElse(),
  }) {
    if (trainingGameReceived != null) {
      return trainingGameReceived(trainingGameSnapshot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateOnlineGamePressed value)
        createOnlineGamePressed,
    required TResult Function(_CreateOfflineGamePressed value)
        createOfflineGamePressed,
    required TResult Function(_DataReceived value) dataReceived,
    required TResult Function(_GameReceived value) gameReceived,
    required TResult Function(_TrainingGameReceived value) trainingGameReceived,
  }) {
    return trainingGameReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateOnlineGamePressed value)? createOnlineGamePressed,
    TResult Function(_CreateOfflineGamePressed value)? createOfflineGamePressed,
    TResult Function(_DataReceived value)? dataReceived,
    TResult Function(_GameReceived value)? gameReceived,
    TResult Function(_TrainingGameReceived value)? trainingGameReceived,
  }) {
    return trainingGameReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateOnlineGamePressed value)? createOnlineGamePressed,
    TResult Function(_CreateOfflineGamePressed value)? createOfflineGamePressed,
    TResult Function(_DataReceived value)? dataReceived,
    TResult Function(_GameReceived value)? gameReceived,
    TResult Function(_TrainingGameReceived value)? trainingGameReceived,
    required TResult orElse(),
  }) {
    if (trainingGameReceived != null) {
      return trainingGameReceived(this);
    }
    return orElse();
  }
}

abstract class _TrainingGameReceived implements HomeEvent {
  const factory _TrainingGameReceived(
          {required AbstractTrainingGameSnapshot trainingGameSnapshot}) =
      _$_TrainingGameReceived;

  AbstractTrainingGameSnapshot get trainingGameSnapshot;
  @JsonKey(ignore: true)
  _$TrainingGameReceivedCopyWith<_TrainingGameReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  HomeLoadInProgress loadInProgress() {
    return const HomeLoadInProgress();
  }

  HomeLoadSuccess loadSuccess(
      {required User user,
      required int unreadInvitations,
      required int unreadFriendRequests,
      AbstractGameSnapshot? gameSnapshot,
      AbstractTrainingGameSnapshot? trainingGameSnapshot,
      PlayFailure? failure}) {
    return HomeLoadSuccess(
      user: user,
      unreadInvitations: unreadInvitations,
      unreadFriendRequests: unreadFriendRequests,
      gameSnapshot: gameSnapshot,
      trainingGameSnapshot: trainingGameSnapshot,
      failure: failure,
    );
  }

  HomeLoadFailure loadFailure() {
    return const HomeLoadFailure();
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(
            User user,
            int unreadInvitations,
            int unreadFriendRequests,
            AbstractGameSnapshot? gameSnapshot,
            AbstractTrainingGameSnapshot? trainingGameSnapshot,
            PlayFailure? failure)
        loadSuccess,
    required TResult Function() loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(
            User user,
            int unreadInvitations,
            int unreadFriendRequests,
            AbstractGameSnapshot? gameSnapshot,
            AbstractTrainingGameSnapshot? trainingGameSnapshot,
            PlayFailure? failure)?
        loadSuccess,
    TResult Function()? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(
            User user,
            int unreadInvitations,
            int unreadFriendRequests,
            AbstractGameSnapshot? gameSnapshot,
            AbstractTrainingGameSnapshot? trainingGameSnapshot,
            PlayFailure? failure)?
        loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeLoadInProgress value) loadInProgress,
    required TResult Function(HomeLoadSuccess value) loadSuccess,
    required TResult Function(HomeLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeLoadInProgress value)? loadInProgress,
    TResult Function(HomeLoadSuccess value)? loadSuccess,
    TResult Function(HomeLoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLoadInProgress value)? loadInProgress,
    TResult Function(HomeLoadSuccess value)? loadSuccess,
    TResult Function(HomeLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class $HomeLoadInProgressCopyWith<$Res> {
  factory $HomeLoadInProgressCopyWith(
          HomeLoadInProgress value, $Res Function(HomeLoadInProgress) then) =
      _$HomeLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeLoadInProgressCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeLoadInProgressCopyWith<$Res> {
  _$HomeLoadInProgressCopyWithImpl(
      HomeLoadInProgress _value, $Res Function(HomeLoadInProgress) _then)
      : super(_value, (v) => _then(v as HomeLoadInProgress));

  @override
  HomeLoadInProgress get _value => super._value as HomeLoadInProgress;
}

/// @nodoc

class _$HomeLoadInProgress implements HomeLoadInProgress {
  const _$HomeLoadInProgress();

  @override
  String toString() {
    return 'HomeState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(
            User user,
            int unreadInvitations,
            int unreadFriendRequests,
            AbstractGameSnapshot? gameSnapshot,
            AbstractTrainingGameSnapshot? trainingGameSnapshot,
            PlayFailure? failure)
        loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(
            User user,
            int unreadInvitations,
            int unreadFriendRequests,
            AbstractGameSnapshot? gameSnapshot,
            AbstractTrainingGameSnapshot? trainingGameSnapshot,
            PlayFailure? failure)?
        loadSuccess,
    TResult Function()? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(
            User user,
            int unreadInvitations,
            int unreadFriendRequests,
            AbstractGameSnapshot? gameSnapshot,
            AbstractTrainingGameSnapshot? trainingGameSnapshot,
            PlayFailure? failure)?
        loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeLoadInProgress value) loadInProgress,
    required TResult Function(HomeLoadSuccess value) loadSuccess,
    required TResult Function(HomeLoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeLoadInProgress value)? loadInProgress,
    TResult Function(HomeLoadSuccess value)? loadSuccess,
    TResult Function(HomeLoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLoadInProgress value)? loadInProgress,
    TResult Function(HomeLoadSuccess value)? loadSuccess,
    TResult Function(HomeLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class HomeLoadInProgress implements HomeState {
  const factory HomeLoadInProgress() = _$HomeLoadInProgress;
}

/// @nodoc
abstract class $HomeLoadSuccessCopyWith<$Res> {
  factory $HomeLoadSuccessCopyWith(
          HomeLoadSuccess value, $Res Function(HomeLoadSuccess) then) =
      _$HomeLoadSuccessCopyWithImpl<$Res>;
  $Res call(
      {User user,
      int unreadInvitations,
      int unreadFriendRequests,
      AbstractGameSnapshot? gameSnapshot,
      AbstractTrainingGameSnapshot? trainingGameSnapshot,
      PlayFailure? failure});

  $UserCopyWith<$Res> get user;
  $PlayFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$HomeLoadSuccessCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeLoadSuccessCopyWith<$Res> {
  _$HomeLoadSuccessCopyWithImpl(
      HomeLoadSuccess _value, $Res Function(HomeLoadSuccess) _then)
      : super(_value, (v) => _then(v as HomeLoadSuccess));

  @override
  HomeLoadSuccess get _value => super._value as HomeLoadSuccess;

  @override
  $Res call({
    Object? user = freezed,
    Object? unreadInvitations = freezed,
    Object? unreadFriendRequests = freezed,
    Object? gameSnapshot = freezed,
    Object? trainingGameSnapshot = freezed,
    Object? failure = freezed,
  }) {
    return _then(HomeLoadSuccess(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      unreadInvitations: unreadInvitations == freezed
          ? _value.unreadInvitations
          : unreadInvitations // ignore: cast_nullable_to_non_nullable
              as int,
      unreadFriendRequests: unreadFriendRequests == freezed
          ? _value.unreadFriendRequests
          : unreadFriendRequests // ignore: cast_nullable_to_non_nullable
              as int,
      gameSnapshot: gameSnapshot == freezed
          ? _value.gameSnapshot
          : gameSnapshot // ignore: cast_nullable_to_non_nullable
              as AbstractGameSnapshot?,
      trainingGameSnapshot: trainingGameSnapshot == freezed
          ? _value.trainingGameSnapshot
          : trainingGameSnapshot // ignore: cast_nullable_to_non_nullable
              as AbstractTrainingGameSnapshot?,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as PlayFailure?,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  $PlayFailureCopyWith<$Res>? get failure {
    if (_value.failure == null) {
      return null;
    }

    return $PlayFailureCopyWith<$Res>(_value.failure!, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$HomeLoadSuccess implements HomeLoadSuccess {
  const _$HomeLoadSuccess(
      {required this.user,
      required this.unreadInvitations,
      required this.unreadFriendRequests,
      this.gameSnapshot,
      this.trainingGameSnapshot,
      this.failure});

  @override
  final User user;
  @override
  final int unreadInvitations;
  @override
  final int unreadFriendRequests;
  @override
  final AbstractGameSnapshot? gameSnapshot;
  @override
  final AbstractTrainingGameSnapshot? trainingGameSnapshot;
  @override
  final PlayFailure? failure;

  @override
  String toString() {
    return 'HomeState.loadSuccess(user: $user, unreadInvitations: $unreadInvitations, unreadFriendRequests: $unreadFriendRequests, gameSnapshot: $gameSnapshot, trainingGameSnapshot: $trainingGameSnapshot, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeLoadSuccess &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.unreadInvitations, unreadInvitations) ||
                other.unreadInvitations == unreadInvitations) &&
            (identical(other.unreadFriendRequests, unreadFriendRequests) ||
                other.unreadFriendRequests == unreadFriendRequests) &&
            (identical(other.gameSnapshot, gameSnapshot) ||
                other.gameSnapshot == gameSnapshot) &&
            (identical(other.trainingGameSnapshot, trainingGameSnapshot) ||
                other.trainingGameSnapshot == trainingGameSnapshot) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, unreadInvitations,
      unreadFriendRequests, gameSnapshot, trainingGameSnapshot, failure);

  @JsonKey(ignore: true)
  @override
  $HomeLoadSuccessCopyWith<HomeLoadSuccess> get copyWith =>
      _$HomeLoadSuccessCopyWithImpl<HomeLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(
            User user,
            int unreadInvitations,
            int unreadFriendRequests,
            AbstractGameSnapshot? gameSnapshot,
            AbstractTrainingGameSnapshot? trainingGameSnapshot,
            PlayFailure? failure)
        loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadSuccess(user, unreadInvitations, unreadFriendRequests,
        gameSnapshot, trainingGameSnapshot, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(
            User user,
            int unreadInvitations,
            int unreadFriendRequests,
            AbstractGameSnapshot? gameSnapshot,
            AbstractTrainingGameSnapshot? trainingGameSnapshot,
            PlayFailure? failure)?
        loadSuccess,
    TResult Function()? loadFailure,
  }) {
    return loadSuccess?.call(user, unreadInvitations, unreadFriendRequests,
        gameSnapshot, trainingGameSnapshot, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(
            User user,
            int unreadInvitations,
            int unreadFriendRequests,
            AbstractGameSnapshot? gameSnapshot,
            AbstractTrainingGameSnapshot? trainingGameSnapshot,
            PlayFailure? failure)?
        loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(user, unreadInvitations, unreadFriendRequests,
          gameSnapshot, trainingGameSnapshot, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeLoadInProgress value) loadInProgress,
    required TResult Function(HomeLoadSuccess value) loadSuccess,
    required TResult Function(HomeLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeLoadInProgress value)? loadInProgress,
    TResult Function(HomeLoadSuccess value)? loadSuccess,
    TResult Function(HomeLoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLoadInProgress value)? loadInProgress,
    TResult Function(HomeLoadSuccess value)? loadSuccess,
    TResult Function(HomeLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class HomeLoadSuccess implements HomeState {
  const factory HomeLoadSuccess(
      {required User user,
      required int unreadInvitations,
      required int unreadFriendRequests,
      AbstractGameSnapshot? gameSnapshot,
      AbstractTrainingGameSnapshot? trainingGameSnapshot,
      PlayFailure? failure}) = _$HomeLoadSuccess;

  User get user;
  int get unreadInvitations;
  int get unreadFriendRequests;
  AbstractGameSnapshot? get gameSnapshot;
  AbstractTrainingGameSnapshot? get trainingGameSnapshot;
  PlayFailure? get failure;
  @JsonKey(ignore: true)
  $HomeLoadSuccessCopyWith<HomeLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeLoadFailureCopyWith<$Res> {
  factory $HomeLoadFailureCopyWith(
          HomeLoadFailure value, $Res Function(HomeLoadFailure) then) =
      _$HomeLoadFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeLoadFailureCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeLoadFailureCopyWith<$Res> {
  _$HomeLoadFailureCopyWithImpl(
      HomeLoadFailure _value, $Res Function(HomeLoadFailure) _then)
      : super(_value, (v) => _then(v as HomeLoadFailure));

  @override
  HomeLoadFailure get _value => super._value as HomeLoadFailure;
}

/// @nodoc

class _$HomeLoadFailure implements HomeLoadFailure {
  const _$HomeLoadFailure();

  @override
  String toString() {
    return 'HomeState.loadFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeLoadFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(
            User user,
            int unreadInvitations,
            int unreadFriendRequests,
            AbstractGameSnapshot? gameSnapshot,
            AbstractTrainingGameSnapshot? trainingGameSnapshot,
            PlayFailure? failure)
        loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(
            User user,
            int unreadInvitations,
            int unreadFriendRequests,
            AbstractGameSnapshot? gameSnapshot,
            AbstractTrainingGameSnapshot? trainingGameSnapshot,
            PlayFailure? failure)?
        loadSuccess,
    TResult Function()? loadFailure,
  }) {
    return loadFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(
            User user,
            int unreadInvitations,
            int unreadFriendRequests,
            AbstractGameSnapshot? gameSnapshot,
            AbstractTrainingGameSnapshot? trainingGameSnapshot,
            PlayFailure? failure)?
        loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeLoadInProgress value) loadInProgress,
    required TResult Function(HomeLoadSuccess value) loadSuccess,
    required TResult Function(HomeLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeLoadInProgress value)? loadInProgress,
    TResult Function(HomeLoadSuccess value)? loadSuccess,
    TResult Function(HomeLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLoadInProgress value)? loadInProgress,
    TResult Function(HomeLoadSuccess value)? loadSuccess,
    TResult Function(HomeLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class HomeLoadFailure implements HomeState {
  const factory HomeLoadFailure() = _$HomeLoadFailure;
}
