// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'invitation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InvitationEventTearOff {
  const _$InvitationEventTearOff();

  WatchStarted watchStarted() {
    return const WatchStarted();
  }

  GameInvitationsReceived gameInvitationsReceived(
      {required KtList<GameInvitation> gameInvitations}) {
    return GameInvitationsReceived(
      gameInvitations: gameInvitations,
    );
  }

  FailureReceived failureReceived() {
    return const FailureReceived();
  }

  Accepted accepted({required GameInvitation gameInvitation}) {
    return Accepted(
      gameInvitation: gameInvitation,
    );
  }

  Declined declined({required GameInvitation gameInvitation}) {
    return Declined(
      gameInvitation: gameInvitation,
    );
  }

  NewInvitationsRead newInvitationsRead() {
    return const NewInvitationsRead();
  }
}

/// @nodoc
const $InvitationEvent = _$InvitationEventTearOff();

/// @nodoc
mixin _$InvitationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(KtList<GameInvitation> gameInvitations)
        gameInvitationsReceived,
    required TResult Function() failureReceived,
    required TResult Function(GameInvitation gameInvitation) accepted,
    required TResult Function(GameInvitation gameInvitation) declined,
    required TResult Function() newInvitationsRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(KtList<GameInvitation> gameInvitations)?
        gameInvitationsReceived,
    TResult Function()? failureReceived,
    TResult Function(GameInvitation gameInvitation)? accepted,
    TResult Function(GameInvitation gameInvitation)? declined,
    TResult Function()? newInvitationsRead,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(GameInvitationsReceived value)
        gameInvitationsReceived,
    required TResult Function(FailureReceived value) failureReceived,
    required TResult Function(Accepted value) accepted,
    required TResult Function(Declined value) declined,
    required TResult Function(NewInvitationsRead value) newInvitationsRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(GameInvitationsReceived value)? gameInvitationsReceived,
    TResult Function(FailureReceived value)? failureReceived,
    TResult Function(Accepted value)? accepted,
    TResult Function(Declined value)? declined,
    TResult Function(NewInvitationsRead value)? newInvitationsRead,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvitationEventCopyWith<$Res> {
  factory $InvitationEventCopyWith(
          InvitationEvent value, $Res Function(InvitationEvent) then) =
      _$InvitationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvitationEventCopyWithImpl<$Res>
    implements $InvitationEventCopyWith<$Res> {
  _$InvitationEventCopyWithImpl(this._value, this._then);

  final InvitationEvent _value;
  // ignore: unused_field
  final $Res Function(InvitationEvent) _then;
}

/// @nodoc
abstract class $WatchStartedCopyWith<$Res> {
  factory $WatchStartedCopyWith(
          WatchStarted value, $Res Function(WatchStarted) then) =
      _$WatchStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatchStartedCopyWithImpl<$Res>
    extends _$InvitationEventCopyWithImpl<$Res>
    implements $WatchStartedCopyWith<$Res> {
  _$WatchStartedCopyWithImpl(
      WatchStarted _value, $Res Function(WatchStarted) _then)
      : super(_value, (v) => _then(v as WatchStarted));

  @override
  WatchStarted get _value => super._value as WatchStarted;
}

/// @nodoc

class _$WatchStarted implements WatchStarted {
  const _$WatchStarted();

  @override
  String toString() {
    return 'InvitationEvent.watchStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WatchStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(KtList<GameInvitation> gameInvitations)
        gameInvitationsReceived,
    required TResult Function() failureReceived,
    required TResult Function(GameInvitation gameInvitation) accepted,
    required TResult Function(GameInvitation gameInvitation) declined,
    required TResult Function() newInvitationsRead,
  }) {
    return watchStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(KtList<GameInvitation> gameInvitations)?
        gameInvitationsReceived,
    TResult Function()? failureReceived,
    TResult Function(GameInvitation gameInvitation)? accepted,
    TResult Function(GameInvitation gameInvitation)? declined,
    TResult Function()? newInvitationsRead,
    required TResult orElse(),
  }) {
    if (watchStarted != null) {
      return watchStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(GameInvitationsReceived value)
        gameInvitationsReceived,
    required TResult Function(FailureReceived value) failureReceived,
    required TResult Function(Accepted value) accepted,
    required TResult Function(Declined value) declined,
    required TResult Function(NewInvitationsRead value) newInvitationsRead,
  }) {
    return watchStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(GameInvitationsReceived value)? gameInvitationsReceived,
    TResult Function(FailureReceived value)? failureReceived,
    TResult Function(Accepted value)? accepted,
    TResult Function(Declined value)? declined,
    TResult Function(NewInvitationsRead value)? newInvitationsRead,
    required TResult orElse(),
  }) {
    if (watchStarted != null) {
      return watchStarted(this);
    }
    return orElse();
  }
}

abstract class WatchStarted implements InvitationEvent {
  const factory WatchStarted() = _$WatchStarted;
}

/// @nodoc
abstract class $GameInvitationsReceivedCopyWith<$Res> {
  factory $GameInvitationsReceivedCopyWith(GameInvitationsReceived value,
          $Res Function(GameInvitationsReceived) then) =
      _$GameInvitationsReceivedCopyWithImpl<$Res>;
  $Res call({KtList<GameInvitation> gameInvitations});
}

/// @nodoc
class _$GameInvitationsReceivedCopyWithImpl<$Res>
    extends _$InvitationEventCopyWithImpl<$Res>
    implements $GameInvitationsReceivedCopyWith<$Res> {
  _$GameInvitationsReceivedCopyWithImpl(GameInvitationsReceived _value,
      $Res Function(GameInvitationsReceived) _then)
      : super(_value, (v) => _then(v as GameInvitationsReceived));

  @override
  GameInvitationsReceived get _value => super._value as GameInvitationsReceived;

  @override
  $Res call({
    Object? gameInvitations = freezed,
  }) {
    return _then(GameInvitationsReceived(
      gameInvitations: gameInvitations == freezed
          ? _value.gameInvitations
          : gameInvitations // ignore: cast_nullable_to_non_nullable
              as KtList<GameInvitation>,
    ));
  }
}

/// @nodoc

class _$GameInvitationsReceived implements GameInvitationsReceived {
  const _$GameInvitationsReceived({required this.gameInvitations});

  @override
  final KtList<GameInvitation> gameInvitations;

  @override
  String toString() {
    return 'InvitationEvent.gameInvitationsReceived(gameInvitations: $gameInvitations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GameInvitationsReceived &&
            (identical(other.gameInvitations, gameInvitations) ||
                const DeepCollectionEquality()
                    .equals(other.gameInvitations, gameInvitations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(gameInvitations);

  @JsonKey(ignore: true)
  @override
  $GameInvitationsReceivedCopyWith<GameInvitationsReceived> get copyWith =>
      _$GameInvitationsReceivedCopyWithImpl<GameInvitationsReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(KtList<GameInvitation> gameInvitations)
        gameInvitationsReceived,
    required TResult Function() failureReceived,
    required TResult Function(GameInvitation gameInvitation) accepted,
    required TResult Function(GameInvitation gameInvitation) declined,
    required TResult Function() newInvitationsRead,
  }) {
    return gameInvitationsReceived(gameInvitations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(KtList<GameInvitation> gameInvitations)?
        gameInvitationsReceived,
    TResult Function()? failureReceived,
    TResult Function(GameInvitation gameInvitation)? accepted,
    TResult Function(GameInvitation gameInvitation)? declined,
    TResult Function()? newInvitationsRead,
    required TResult orElse(),
  }) {
    if (gameInvitationsReceived != null) {
      return gameInvitationsReceived(gameInvitations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(GameInvitationsReceived value)
        gameInvitationsReceived,
    required TResult Function(FailureReceived value) failureReceived,
    required TResult Function(Accepted value) accepted,
    required TResult Function(Declined value) declined,
    required TResult Function(NewInvitationsRead value) newInvitationsRead,
  }) {
    return gameInvitationsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(GameInvitationsReceived value)? gameInvitationsReceived,
    TResult Function(FailureReceived value)? failureReceived,
    TResult Function(Accepted value)? accepted,
    TResult Function(Declined value)? declined,
    TResult Function(NewInvitationsRead value)? newInvitationsRead,
    required TResult orElse(),
  }) {
    if (gameInvitationsReceived != null) {
      return gameInvitationsReceived(this);
    }
    return orElse();
  }
}

abstract class GameInvitationsReceived implements InvitationEvent {
  const factory GameInvitationsReceived(
          {required KtList<GameInvitation> gameInvitations}) =
      _$GameInvitationsReceived;

  KtList<GameInvitation> get gameInvitations =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameInvitationsReceivedCopyWith<GameInvitationsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureReceivedCopyWith<$Res> {
  factory $FailureReceivedCopyWith(
          FailureReceived value, $Res Function(FailureReceived) then) =
      _$FailureReceivedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureReceivedCopyWithImpl<$Res>
    extends _$InvitationEventCopyWithImpl<$Res>
    implements $FailureReceivedCopyWith<$Res> {
  _$FailureReceivedCopyWithImpl(
      FailureReceived _value, $Res Function(FailureReceived) _then)
      : super(_value, (v) => _then(v as FailureReceived));

  @override
  FailureReceived get _value => super._value as FailureReceived;
}

/// @nodoc

class _$FailureReceived implements FailureReceived {
  const _$FailureReceived();

  @override
  String toString() {
    return 'InvitationEvent.failureReceived()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FailureReceived);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(KtList<GameInvitation> gameInvitations)
        gameInvitationsReceived,
    required TResult Function() failureReceived,
    required TResult Function(GameInvitation gameInvitation) accepted,
    required TResult Function(GameInvitation gameInvitation) declined,
    required TResult Function() newInvitationsRead,
  }) {
    return failureReceived();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(KtList<GameInvitation> gameInvitations)?
        gameInvitationsReceived,
    TResult Function()? failureReceived,
    TResult Function(GameInvitation gameInvitation)? accepted,
    TResult Function(GameInvitation gameInvitation)? declined,
    TResult Function()? newInvitationsRead,
    required TResult orElse(),
  }) {
    if (failureReceived != null) {
      return failureReceived();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(GameInvitationsReceived value)
        gameInvitationsReceived,
    required TResult Function(FailureReceived value) failureReceived,
    required TResult Function(Accepted value) accepted,
    required TResult Function(Declined value) declined,
    required TResult Function(NewInvitationsRead value) newInvitationsRead,
  }) {
    return failureReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(GameInvitationsReceived value)? gameInvitationsReceived,
    TResult Function(FailureReceived value)? failureReceived,
    TResult Function(Accepted value)? accepted,
    TResult Function(Declined value)? declined,
    TResult Function(NewInvitationsRead value)? newInvitationsRead,
    required TResult orElse(),
  }) {
    if (failureReceived != null) {
      return failureReceived(this);
    }
    return orElse();
  }
}

abstract class FailureReceived implements InvitationEvent {
  const factory FailureReceived() = _$FailureReceived;
}

/// @nodoc
abstract class $AcceptedCopyWith<$Res> {
  factory $AcceptedCopyWith(Accepted value, $Res Function(Accepted) then) =
      _$AcceptedCopyWithImpl<$Res>;
  $Res call({GameInvitation gameInvitation});

  $GameInvitationCopyWith<$Res> get gameInvitation;
}

/// @nodoc
class _$AcceptedCopyWithImpl<$Res> extends _$InvitationEventCopyWithImpl<$Res>
    implements $AcceptedCopyWith<$Res> {
  _$AcceptedCopyWithImpl(Accepted _value, $Res Function(Accepted) _then)
      : super(_value, (v) => _then(v as Accepted));

  @override
  Accepted get _value => super._value as Accepted;

  @override
  $Res call({
    Object? gameInvitation = freezed,
  }) {
    return _then(Accepted(
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

class _$Accepted implements Accepted {
  const _$Accepted({required this.gameInvitation});

  @override
  final GameInvitation gameInvitation;

  @override
  String toString() {
    return 'InvitationEvent.accepted(gameInvitation: $gameInvitation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Accepted &&
            (identical(other.gameInvitation, gameInvitation) ||
                const DeepCollectionEquality()
                    .equals(other.gameInvitation, gameInvitation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(gameInvitation);

  @JsonKey(ignore: true)
  @override
  $AcceptedCopyWith<Accepted> get copyWith =>
      _$AcceptedCopyWithImpl<Accepted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(KtList<GameInvitation> gameInvitations)
        gameInvitationsReceived,
    required TResult Function() failureReceived,
    required TResult Function(GameInvitation gameInvitation) accepted,
    required TResult Function(GameInvitation gameInvitation) declined,
    required TResult Function() newInvitationsRead,
  }) {
    return accepted(gameInvitation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(KtList<GameInvitation> gameInvitations)?
        gameInvitationsReceived,
    TResult Function()? failureReceived,
    TResult Function(GameInvitation gameInvitation)? accepted,
    TResult Function(GameInvitation gameInvitation)? declined,
    TResult Function()? newInvitationsRead,
    required TResult orElse(),
  }) {
    if (accepted != null) {
      return accepted(gameInvitation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(GameInvitationsReceived value)
        gameInvitationsReceived,
    required TResult Function(FailureReceived value) failureReceived,
    required TResult Function(Accepted value) accepted,
    required TResult Function(Declined value) declined,
    required TResult Function(NewInvitationsRead value) newInvitationsRead,
  }) {
    return accepted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(GameInvitationsReceived value)? gameInvitationsReceived,
    TResult Function(FailureReceived value)? failureReceived,
    TResult Function(Accepted value)? accepted,
    TResult Function(Declined value)? declined,
    TResult Function(NewInvitationsRead value)? newInvitationsRead,
    required TResult orElse(),
  }) {
    if (accepted != null) {
      return accepted(this);
    }
    return orElse();
  }
}

abstract class Accepted implements InvitationEvent {
  const factory Accepted({required GameInvitation gameInvitation}) = _$Accepted;

  GameInvitation get gameInvitation => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AcceptedCopyWith<Accepted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeclinedCopyWith<$Res> {
  factory $DeclinedCopyWith(Declined value, $Res Function(Declined) then) =
      _$DeclinedCopyWithImpl<$Res>;
  $Res call({GameInvitation gameInvitation});

  $GameInvitationCopyWith<$Res> get gameInvitation;
}

/// @nodoc
class _$DeclinedCopyWithImpl<$Res> extends _$InvitationEventCopyWithImpl<$Res>
    implements $DeclinedCopyWith<$Res> {
  _$DeclinedCopyWithImpl(Declined _value, $Res Function(Declined) _then)
      : super(_value, (v) => _then(v as Declined));

  @override
  Declined get _value => super._value as Declined;

  @override
  $Res call({
    Object? gameInvitation = freezed,
  }) {
    return _then(Declined(
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

class _$Declined implements Declined {
  const _$Declined({required this.gameInvitation});

  @override
  final GameInvitation gameInvitation;

  @override
  String toString() {
    return 'InvitationEvent.declined(gameInvitation: $gameInvitation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Declined &&
            (identical(other.gameInvitation, gameInvitation) ||
                const DeepCollectionEquality()
                    .equals(other.gameInvitation, gameInvitation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(gameInvitation);

  @JsonKey(ignore: true)
  @override
  $DeclinedCopyWith<Declined> get copyWith =>
      _$DeclinedCopyWithImpl<Declined>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(KtList<GameInvitation> gameInvitations)
        gameInvitationsReceived,
    required TResult Function() failureReceived,
    required TResult Function(GameInvitation gameInvitation) accepted,
    required TResult Function(GameInvitation gameInvitation) declined,
    required TResult Function() newInvitationsRead,
  }) {
    return declined(gameInvitation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(KtList<GameInvitation> gameInvitations)?
        gameInvitationsReceived,
    TResult Function()? failureReceived,
    TResult Function(GameInvitation gameInvitation)? accepted,
    TResult Function(GameInvitation gameInvitation)? declined,
    TResult Function()? newInvitationsRead,
    required TResult orElse(),
  }) {
    if (declined != null) {
      return declined(gameInvitation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(GameInvitationsReceived value)
        gameInvitationsReceived,
    required TResult Function(FailureReceived value) failureReceived,
    required TResult Function(Accepted value) accepted,
    required TResult Function(Declined value) declined,
    required TResult Function(NewInvitationsRead value) newInvitationsRead,
  }) {
    return declined(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(GameInvitationsReceived value)? gameInvitationsReceived,
    TResult Function(FailureReceived value)? failureReceived,
    TResult Function(Accepted value)? accepted,
    TResult Function(Declined value)? declined,
    TResult Function(NewInvitationsRead value)? newInvitationsRead,
    required TResult orElse(),
  }) {
    if (declined != null) {
      return declined(this);
    }
    return orElse();
  }
}

abstract class Declined implements InvitationEvent {
  const factory Declined({required GameInvitation gameInvitation}) = _$Declined;

  GameInvitation get gameInvitation => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeclinedCopyWith<Declined> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewInvitationsReadCopyWith<$Res> {
  factory $NewInvitationsReadCopyWith(
          NewInvitationsRead value, $Res Function(NewInvitationsRead) then) =
      _$NewInvitationsReadCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewInvitationsReadCopyWithImpl<$Res>
    extends _$InvitationEventCopyWithImpl<$Res>
    implements $NewInvitationsReadCopyWith<$Res> {
  _$NewInvitationsReadCopyWithImpl(
      NewInvitationsRead _value, $Res Function(NewInvitationsRead) _then)
      : super(_value, (v) => _then(v as NewInvitationsRead));

  @override
  NewInvitationsRead get _value => super._value as NewInvitationsRead;
}

/// @nodoc

class _$NewInvitationsRead implements NewInvitationsRead {
  const _$NewInvitationsRead();

  @override
  String toString() {
    return 'InvitationEvent.newInvitationsRead()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NewInvitationsRead);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(KtList<GameInvitation> gameInvitations)
        gameInvitationsReceived,
    required TResult Function() failureReceived,
    required TResult Function(GameInvitation gameInvitation) accepted,
    required TResult Function(GameInvitation gameInvitation) declined,
    required TResult Function() newInvitationsRead,
  }) {
    return newInvitationsRead();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(KtList<GameInvitation> gameInvitations)?
        gameInvitationsReceived,
    TResult Function()? failureReceived,
    TResult Function(GameInvitation gameInvitation)? accepted,
    TResult Function(GameInvitation gameInvitation)? declined,
    TResult Function()? newInvitationsRead,
    required TResult orElse(),
  }) {
    if (newInvitationsRead != null) {
      return newInvitationsRead();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(GameInvitationsReceived value)
        gameInvitationsReceived,
    required TResult Function(FailureReceived value) failureReceived,
    required TResult Function(Accepted value) accepted,
    required TResult Function(Declined value) declined,
    required TResult Function(NewInvitationsRead value) newInvitationsRead,
  }) {
    return newInvitationsRead(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(GameInvitationsReceived value)? gameInvitationsReceived,
    TResult Function(FailureReceived value)? failureReceived,
    TResult Function(Accepted value)? accepted,
    TResult Function(Declined value)? declined,
    TResult Function(NewInvitationsRead value)? newInvitationsRead,
    required TResult orElse(),
  }) {
    if (newInvitationsRead != null) {
      return newInvitationsRead(this);
    }
    return orElse();
  }
}

abstract class NewInvitationsRead implements InvitationEvent {
  const factory NewInvitationsRead() = _$NewInvitationsRead;
}

/// @nodoc
class _$InvitationStateTearOff {
  const _$InvitationStateTearOff();

  LoadInProgress loadInProgress() {
    return const LoadInProgress();
  }

  LoadSuccess loadSuccess({required KtList<GameInvitation> gameInvitations}) {
    return LoadSuccess(
      gameInvitations: gameInvitations,
    );
  }

  LoadFailure loadFailure() {
    return const LoadFailure();
  }
}

/// @nodoc
const $InvitationState = _$InvitationStateTearOff();

/// @nodoc
mixin _$InvitationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(KtList<GameInvitation> gameInvitations)
        loadSuccess,
    required TResult Function() loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(KtList<GameInvitation> gameInvitations)? loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvitationStateCopyWith<$Res> {
  factory $InvitationStateCopyWith(
          InvitationState value, $Res Function(InvitationState) then) =
      _$InvitationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvitationStateCopyWithImpl<$Res>
    implements $InvitationStateCopyWith<$Res> {
  _$InvitationStateCopyWithImpl(this._value, this._then);

  final InvitationState _value;
  // ignore: unused_field
  final $Res Function(InvitationState) _then;
}

/// @nodoc
abstract class $LoadInProgressCopyWith<$Res> {
  factory $LoadInProgressCopyWith(
          LoadInProgress value, $Res Function(LoadInProgress) then) =
      _$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadInProgressCopyWithImpl<$Res>
    extends _$InvitationStateCopyWithImpl<$Res>
    implements $LoadInProgressCopyWith<$Res> {
  _$LoadInProgressCopyWithImpl(
      LoadInProgress _value, $Res Function(LoadInProgress) _then)
      : super(_value, (v) => _then(v as LoadInProgress));

  @override
  LoadInProgress get _value => super._value as LoadInProgress;
}

/// @nodoc

class _$LoadInProgress implements LoadInProgress {
  const _$LoadInProgress();

  @override
  String toString() {
    return 'InvitationState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(KtList<GameInvitation> gameInvitations)
        loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(KtList<GameInvitation> gameInvitations)? loadSuccess,
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
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class LoadInProgress implements InvitationState {
  const factory LoadInProgress() = _$LoadInProgress;
}

/// @nodoc
abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<GameInvitation> gameInvitations});
}

/// @nodoc
class _$LoadSuccessCopyWithImpl<$Res>
    extends _$InvitationStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object? gameInvitations = freezed,
  }) {
    return _then(LoadSuccess(
      gameInvitations: gameInvitations == freezed
          ? _value.gameInvitations
          : gameInvitations // ignore: cast_nullable_to_non_nullable
              as KtList<GameInvitation>,
    ));
  }
}

/// @nodoc

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess({required this.gameInvitations});

  @override
  final KtList<GameInvitation> gameInvitations;

  @override
  String toString() {
    return 'InvitationState.loadSuccess(gameInvitations: $gameInvitations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.gameInvitations, gameInvitations) ||
                const DeepCollectionEquality()
                    .equals(other.gameInvitations, gameInvitations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(gameInvitations);

  @JsonKey(ignore: true)
  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(KtList<GameInvitation> gameInvitations)
        loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadSuccess(gameInvitations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(KtList<GameInvitation> gameInvitations)? loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(gameInvitations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadSuccess implements InvitationState {
  const factory LoadSuccess({required KtList<GameInvitation> gameInvitations}) =
      _$LoadSuccess;

  KtList<GameInvitation> get gameInvitations =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadFailureCopyWithImpl<$Res>
    extends _$InvitationStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;
}

/// @nodoc

class _$LoadFailure implements LoadFailure {
  const _$LoadFailure();

  @override
  String toString() {
    return 'InvitationState.loadFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(KtList<GameInvitation> gameInvitations)
        loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(KtList<GameInvitation> gameInvitations)? loadSuccess,
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
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class LoadFailure implements InvitationState {
  const factory LoadFailure() = _$LoadFailure;
}
