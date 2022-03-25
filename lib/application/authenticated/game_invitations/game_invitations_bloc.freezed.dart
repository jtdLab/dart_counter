// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_invitations_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GameInvitationsEventTearOff {
  const _$GameInvitationsEventTearOff();

  _Started started() {
    return const _Started();
  }

  _InvitationAccepted invitationAccepted(
      {required GameInvitation gameInvitation}) {
    return _InvitationAccepted(
      gameInvitation: gameInvitation,
    );
  }

  _InvitationDeclined invitationDeclined(
      {required GameInvitation gameInvitation}) {
    return _InvitationDeclined(
      gameInvitation: gameInvitation,
    );
  }
}

/// @nodoc
const $GameInvitationsEvent = _$GameInvitationsEventTearOff();

/// @nodoc
mixin _$GameInvitationsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GameInvitation gameInvitation) invitationAccepted,
    required TResult Function(GameInvitation gameInvitation) invitationDeclined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GameInvitation gameInvitation)? invitationAccepted,
    TResult Function(GameInvitation gameInvitation)? invitationDeclined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GameInvitation gameInvitation)? invitationAccepted,
    TResult Function(GameInvitation gameInvitation)? invitationDeclined,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_InvitationAccepted value) invitationAccepted,
    required TResult Function(_InvitationDeclined value) invitationDeclined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InvitationAccepted value)? invitationAccepted,
    TResult Function(_InvitationDeclined value)? invitationDeclined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InvitationAccepted value)? invitationAccepted,
    TResult Function(_InvitationDeclined value)? invitationDeclined,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameInvitationsEventCopyWith<$Res> {
  factory $GameInvitationsEventCopyWith(GameInvitationsEvent value,
          $Res Function(GameInvitationsEvent) then) =
      _$GameInvitationsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameInvitationsEventCopyWithImpl<$Res>
    implements $GameInvitationsEventCopyWith<$Res> {
  _$GameInvitationsEventCopyWithImpl(this._value, this._then);

  final GameInvitationsEvent _value;
  // ignore: unused_field
  final $Res Function(GameInvitationsEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$GameInvitationsEventCopyWithImpl<$Res>
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
    return 'GameInvitationsEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GameInvitation gameInvitation) invitationAccepted,
    required TResult Function(GameInvitation gameInvitation) invitationDeclined,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GameInvitation gameInvitation)? invitationAccepted,
    TResult Function(GameInvitation gameInvitation)? invitationDeclined,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GameInvitation gameInvitation)? invitationAccepted,
    TResult Function(GameInvitation gameInvitation)? invitationDeclined,
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
    required TResult Function(_InvitationAccepted value) invitationAccepted,
    required TResult Function(_InvitationDeclined value) invitationDeclined,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InvitationAccepted value)? invitationAccepted,
    TResult Function(_InvitationDeclined value)? invitationDeclined,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InvitationAccepted value)? invitationAccepted,
    TResult Function(_InvitationDeclined value)? invitationDeclined,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements GameInvitationsEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$InvitationAcceptedCopyWith<$Res> {
  factory _$InvitationAcceptedCopyWith(
          _InvitationAccepted value, $Res Function(_InvitationAccepted) then) =
      __$InvitationAcceptedCopyWithImpl<$Res>;
  $Res call({GameInvitation gameInvitation});

  $GameInvitationCopyWith<$Res> get gameInvitation;
}

/// @nodoc
class __$InvitationAcceptedCopyWithImpl<$Res>
    extends _$GameInvitationsEventCopyWithImpl<$Res>
    implements _$InvitationAcceptedCopyWith<$Res> {
  __$InvitationAcceptedCopyWithImpl(
      _InvitationAccepted _value, $Res Function(_InvitationAccepted) _then)
      : super(_value, (v) => _then(v as _InvitationAccepted));

  @override
  _InvitationAccepted get _value => super._value as _InvitationAccepted;

  @override
  $Res call({
    Object? gameInvitation = freezed,
  }) {
    return _then(_InvitationAccepted(
      gameInvitation: gameInvitation == freezed
          ? _value.gameInvitation
          : gameInvitation // ignore: cast_nullable_to_non_nullable
              as GameInvitation,
    ));
  }

  @override
  $GameInvitationCopyWith<$Res> get gameInvitation {
    return $GameInvitationCopyWith<$Res>(_value.gameInvitation, (value) {
      return _then(_value.copyWith(gameInvitation: value));
    });
  }
}

/// @nodoc

class _$_InvitationAccepted implements _InvitationAccepted {
  const _$_InvitationAccepted({required this.gameInvitation});

  @override
  final GameInvitation gameInvitation;

  @override
  String toString() {
    return 'GameInvitationsEvent.invitationAccepted(gameInvitation: $gameInvitation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InvitationAccepted &&
            const DeepCollectionEquality()
                .equals(other.gameInvitation, gameInvitation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(gameInvitation));

  @JsonKey(ignore: true)
  @override
  _$InvitationAcceptedCopyWith<_InvitationAccepted> get copyWith =>
      __$InvitationAcceptedCopyWithImpl<_InvitationAccepted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GameInvitation gameInvitation) invitationAccepted,
    required TResult Function(GameInvitation gameInvitation) invitationDeclined,
  }) {
    return invitationAccepted(gameInvitation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GameInvitation gameInvitation)? invitationAccepted,
    TResult Function(GameInvitation gameInvitation)? invitationDeclined,
  }) {
    return invitationAccepted?.call(gameInvitation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GameInvitation gameInvitation)? invitationAccepted,
    TResult Function(GameInvitation gameInvitation)? invitationDeclined,
    required TResult orElse(),
  }) {
    if (invitationAccepted != null) {
      return invitationAccepted(gameInvitation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_InvitationAccepted value) invitationAccepted,
    required TResult Function(_InvitationDeclined value) invitationDeclined,
  }) {
    return invitationAccepted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InvitationAccepted value)? invitationAccepted,
    TResult Function(_InvitationDeclined value)? invitationDeclined,
  }) {
    return invitationAccepted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InvitationAccepted value)? invitationAccepted,
    TResult Function(_InvitationDeclined value)? invitationDeclined,
    required TResult orElse(),
  }) {
    if (invitationAccepted != null) {
      return invitationAccepted(this);
    }
    return orElse();
  }
}

abstract class _InvitationAccepted implements GameInvitationsEvent {
  const factory _InvitationAccepted({required GameInvitation gameInvitation}) =
      _$_InvitationAccepted;

  GameInvitation get gameInvitation;
  @JsonKey(ignore: true)
  _$InvitationAcceptedCopyWith<_InvitationAccepted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InvitationDeclinedCopyWith<$Res> {
  factory _$InvitationDeclinedCopyWith(
          _InvitationDeclined value, $Res Function(_InvitationDeclined) then) =
      __$InvitationDeclinedCopyWithImpl<$Res>;
  $Res call({GameInvitation gameInvitation});

  $GameInvitationCopyWith<$Res> get gameInvitation;
}

/// @nodoc
class __$InvitationDeclinedCopyWithImpl<$Res>
    extends _$GameInvitationsEventCopyWithImpl<$Res>
    implements _$InvitationDeclinedCopyWith<$Res> {
  __$InvitationDeclinedCopyWithImpl(
      _InvitationDeclined _value, $Res Function(_InvitationDeclined) _then)
      : super(_value, (v) => _then(v as _InvitationDeclined));

  @override
  _InvitationDeclined get _value => super._value as _InvitationDeclined;

  @override
  $Res call({
    Object? gameInvitation = freezed,
  }) {
    return _then(_InvitationDeclined(
      gameInvitation: gameInvitation == freezed
          ? _value.gameInvitation
          : gameInvitation // ignore: cast_nullable_to_non_nullable
              as GameInvitation,
    ));
  }

  @override
  $GameInvitationCopyWith<$Res> get gameInvitation {
    return $GameInvitationCopyWith<$Res>(_value.gameInvitation, (value) {
      return _then(_value.copyWith(gameInvitation: value));
    });
  }
}

/// @nodoc

class _$_InvitationDeclined implements _InvitationDeclined {
  const _$_InvitationDeclined({required this.gameInvitation});

  @override
  final GameInvitation gameInvitation;

  @override
  String toString() {
    return 'GameInvitationsEvent.invitationDeclined(gameInvitation: $gameInvitation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InvitationDeclined &&
            const DeepCollectionEquality()
                .equals(other.gameInvitation, gameInvitation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(gameInvitation));

  @JsonKey(ignore: true)
  @override
  _$InvitationDeclinedCopyWith<_InvitationDeclined> get copyWith =>
      __$InvitationDeclinedCopyWithImpl<_InvitationDeclined>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GameInvitation gameInvitation) invitationAccepted,
    required TResult Function(GameInvitation gameInvitation) invitationDeclined,
  }) {
    return invitationDeclined(gameInvitation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GameInvitation gameInvitation)? invitationAccepted,
    TResult Function(GameInvitation gameInvitation)? invitationDeclined,
  }) {
    return invitationDeclined?.call(gameInvitation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GameInvitation gameInvitation)? invitationAccepted,
    TResult Function(GameInvitation gameInvitation)? invitationDeclined,
    required TResult orElse(),
  }) {
    if (invitationDeclined != null) {
      return invitationDeclined(gameInvitation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_InvitationAccepted value) invitationAccepted,
    required TResult Function(_InvitationDeclined value) invitationDeclined,
  }) {
    return invitationDeclined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InvitationAccepted value)? invitationAccepted,
    TResult Function(_InvitationDeclined value)? invitationDeclined,
  }) {
    return invitationDeclined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InvitationAccepted value)? invitationAccepted,
    TResult Function(_InvitationDeclined value)? invitationDeclined,
    required TResult orElse(),
  }) {
    if (invitationDeclined != null) {
      return invitationDeclined(this);
    }
    return orElse();
  }
}

abstract class _InvitationDeclined implements GameInvitationsEvent {
  const factory _InvitationDeclined({required GameInvitation gameInvitation}) =
      _$_InvitationDeclined;

  GameInvitation get gameInvitation;
  @JsonKey(ignore: true)
  _$InvitationDeclinedCopyWith<_InvitationDeclined> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GameInvitationsStateTearOff {
  const _$GameInvitationsStateTearOff();

  GameInvitationsInitial initial({OnlineGameSnapshot? gameSnapshot}) {
    return GameInvitationsInitial(
      gameSnapshot: gameSnapshot,
    );
  }

  GameInvitationsLoadInProgress loadInProgress() {
    return const GameInvitationsLoadInProgress();
  }

  GameInvitationsFailure failure({required PlayFailure failure}) {
    return GameInvitationsFailure(
      failure: failure,
    );
  }
}

/// @nodoc
const $GameInvitationsState = _$GameInvitationsStateTearOff();

/// @nodoc
mixin _$GameInvitationsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OnlineGameSnapshot? gameSnapshot) initial,
    required TResult Function() loadInProgress,
    required TResult Function(PlayFailure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(OnlineGameSnapshot? gameSnapshot)? initial,
    TResult Function()? loadInProgress,
    TResult Function(PlayFailure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OnlineGameSnapshot? gameSnapshot)? initial,
    TResult Function()? loadInProgress,
    TResult Function(PlayFailure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameInvitationsInitial value) initial,
    required TResult Function(GameInvitationsLoadInProgress value)
        loadInProgress,
    required TResult Function(GameInvitationsFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameInvitationsInitial value)? initial,
    TResult Function(GameInvitationsLoadInProgress value)? loadInProgress,
    TResult Function(GameInvitationsFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameInvitationsInitial value)? initial,
    TResult Function(GameInvitationsLoadInProgress value)? loadInProgress,
    TResult Function(GameInvitationsFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameInvitationsStateCopyWith<$Res> {
  factory $GameInvitationsStateCopyWith(GameInvitationsState value,
          $Res Function(GameInvitationsState) then) =
      _$GameInvitationsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameInvitationsStateCopyWithImpl<$Res>
    implements $GameInvitationsStateCopyWith<$Res> {
  _$GameInvitationsStateCopyWithImpl(this._value, this._then);

  final GameInvitationsState _value;
  // ignore: unused_field
  final $Res Function(GameInvitationsState) _then;
}

/// @nodoc
abstract class $GameInvitationsInitialCopyWith<$Res> {
  factory $GameInvitationsInitialCopyWith(GameInvitationsInitial value,
          $Res Function(GameInvitationsInitial) then) =
      _$GameInvitationsInitialCopyWithImpl<$Res>;
  $Res call({OnlineGameSnapshot? gameSnapshot});

  $OnlineGameSnapshotCopyWith<$Res>? get gameSnapshot;
}

/// @nodoc
class _$GameInvitationsInitialCopyWithImpl<$Res>
    extends _$GameInvitationsStateCopyWithImpl<$Res>
    implements $GameInvitationsInitialCopyWith<$Res> {
  _$GameInvitationsInitialCopyWithImpl(GameInvitationsInitial _value,
      $Res Function(GameInvitationsInitial) _then)
      : super(_value, (v) => _then(v as GameInvitationsInitial));

  @override
  GameInvitationsInitial get _value => super._value as GameInvitationsInitial;

  @override
  $Res call({
    Object? gameSnapshot = freezed,
  }) {
    return _then(GameInvitationsInitial(
      gameSnapshot: gameSnapshot == freezed
          ? _value.gameSnapshot
          : gameSnapshot // ignore: cast_nullable_to_non_nullable
              as OnlineGameSnapshot?,
    ));
  }

  @override
  $OnlineGameSnapshotCopyWith<$Res>? get gameSnapshot {
    if (_value.gameSnapshot == null) {
      return null;
    }

    return $OnlineGameSnapshotCopyWith<$Res>(_value.gameSnapshot!, (value) {
      return _then(_value.copyWith(gameSnapshot: value));
    });
  }
}

/// @nodoc

class _$GameInvitationsInitial implements GameInvitationsInitial {
  const _$GameInvitationsInitial({this.gameSnapshot});

  @override
  final OnlineGameSnapshot? gameSnapshot;

  @override
  String toString() {
    return 'GameInvitationsState.initial(gameSnapshot: $gameSnapshot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GameInvitationsInitial &&
            const DeepCollectionEquality()
                .equals(other.gameSnapshot, gameSnapshot));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(gameSnapshot));

  @JsonKey(ignore: true)
  @override
  $GameInvitationsInitialCopyWith<GameInvitationsInitial> get copyWith =>
      _$GameInvitationsInitialCopyWithImpl<GameInvitationsInitial>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OnlineGameSnapshot? gameSnapshot) initial,
    required TResult Function() loadInProgress,
    required TResult Function(PlayFailure failure) failure,
  }) {
    return initial(gameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(OnlineGameSnapshot? gameSnapshot)? initial,
    TResult Function()? loadInProgress,
    TResult Function(PlayFailure failure)? failure,
  }) {
    return initial?.call(gameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OnlineGameSnapshot? gameSnapshot)? initial,
    TResult Function()? loadInProgress,
    TResult Function(PlayFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(gameSnapshot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameInvitationsInitial value) initial,
    required TResult Function(GameInvitationsLoadInProgress value)
        loadInProgress,
    required TResult Function(GameInvitationsFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameInvitationsInitial value)? initial,
    TResult Function(GameInvitationsLoadInProgress value)? loadInProgress,
    TResult Function(GameInvitationsFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameInvitationsInitial value)? initial,
    TResult Function(GameInvitationsLoadInProgress value)? loadInProgress,
    TResult Function(GameInvitationsFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class GameInvitationsInitial implements GameInvitationsState {
  const factory GameInvitationsInitial({OnlineGameSnapshot? gameSnapshot}) =
      _$GameInvitationsInitial;

  OnlineGameSnapshot? get gameSnapshot;
  @JsonKey(ignore: true)
  $GameInvitationsInitialCopyWith<GameInvitationsInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameInvitationsLoadInProgressCopyWith<$Res> {
  factory $GameInvitationsLoadInProgressCopyWith(
          GameInvitationsLoadInProgress value,
          $Res Function(GameInvitationsLoadInProgress) then) =
      _$GameInvitationsLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameInvitationsLoadInProgressCopyWithImpl<$Res>
    extends _$GameInvitationsStateCopyWithImpl<$Res>
    implements $GameInvitationsLoadInProgressCopyWith<$Res> {
  _$GameInvitationsLoadInProgressCopyWithImpl(
      GameInvitationsLoadInProgress _value,
      $Res Function(GameInvitationsLoadInProgress) _then)
      : super(_value, (v) => _then(v as GameInvitationsLoadInProgress));

  @override
  GameInvitationsLoadInProgress get _value =>
      super._value as GameInvitationsLoadInProgress;
}

/// @nodoc

class _$GameInvitationsLoadInProgress implements GameInvitationsLoadInProgress {
  const _$GameInvitationsLoadInProgress();

  @override
  String toString() {
    return 'GameInvitationsState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GameInvitationsLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OnlineGameSnapshot? gameSnapshot) initial,
    required TResult Function() loadInProgress,
    required TResult Function(PlayFailure failure) failure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(OnlineGameSnapshot? gameSnapshot)? initial,
    TResult Function()? loadInProgress,
    TResult Function(PlayFailure failure)? failure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OnlineGameSnapshot? gameSnapshot)? initial,
    TResult Function()? loadInProgress,
    TResult Function(PlayFailure failure)? failure,
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
    required TResult Function(GameInvitationsInitial value) initial,
    required TResult Function(GameInvitationsLoadInProgress value)
        loadInProgress,
    required TResult Function(GameInvitationsFailure value) failure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameInvitationsInitial value)? initial,
    TResult Function(GameInvitationsLoadInProgress value)? loadInProgress,
    TResult Function(GameInvitationsFailure value)? failure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameInvitationsInitial value)? initial,
    TResult Function(GameInvitationsLoadInProgress value)? loadInProgress,
    TResult Function(GameInvitationsFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class GameInvitationsLoadInProgress implements GameInvitationsState {
  const factory GameInvitationsLoadInProgress() =
      _$GameInvitationsLoadInProgress;
}

/// @nodoc
abstract class $GameInvitationsFailureCopyWith<$Res> {
  factory $GameInvitationsFailureCopyWith(GameInvitationsFailure value,
          $Res Function(GameInvitationsFailure) then) =
      _$GameInvitationsFailureCopyWithImpl<$Res>;
  $Res call({PlayFailure failure});

  $PlayFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$GameInvitationsFailureCopyWithImpl<$Res>
    extends _$GameInvitationsStateCopyWithImpl<$Res>
    implements $GameInvitationsFailureCopyWith<$Res> {
  _$GameInvitationsFailureCopyWithImpl(GameInvitationsFailure _value,
      $Res Function(GameInvitationsFailure) _then)
      : super(_value, (v) => _then(v as GameInvitationsFailure));

  @override
  GameInvitationsFailure get _value => super._value as GameInvitationsFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(GameInvitationsFailure(
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as PlayFailure,
    ));
  }

  @override
  $PlayFailureCopyWith<$Res> get failure {
    return $PlayFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$GameInvitationsFailure implements GameInvitationsFailure {
  const _$GameInvitationsFailure({required this.failure});

  @override
  final PlayFailure failure;

  @override
  String toString() {
    return 'GameInvitationsState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GameInvitationsFailure &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  $GameInvitationsFailureCopyWith<GameInvitationsFailure> get copyWith =>
      _$GameInvitationsFailureCopyWithImpl<GameInvitationsFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OnlineGameSnapshot? gameSnapshot) initial,
    required TResult Function() loadInProgress,
    required TResult Function(PlayFailure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(OnlineGameSnapshot? gameSnapshot)? initial,
    TResult Function()? loadInProgress,
    TResult Function(PlayFailure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OnlineGameSnapshot? gameSnapshot)? initial,
    TResult Function()? loadInProgress,
    TResult Function(PlayFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameInvitationsInitial value) initial,
    required TResult Function(GameInvitationsLoadInProgress value)
        loadInProgress,
    required TResult Function(GameInvitationsFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameInvitationsInitial value)? initial,
    TResult Function(GameInvitationsLoadInProgress value)? loadInProgress,
    TResult Function(GameInvitationsFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameInvitationsInitial value)? initial,
    TResult Function(GameInvitationsLoadInProgress value)? loadInProgress,
    TResult Function(GameInvitationsFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class GameInvitationsFailure implements GameInvitationsState {
  const factory GameInvitationsFailure({required PlayFailure failure}) =
      _$GameInvitationsFailure;

  PlayFailure get failure;
  @JsonKey(ignore: true)
  $GameInvitationsFailureCopyWith<GameInvitationsFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
