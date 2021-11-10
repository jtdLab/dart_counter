// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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

  GameInvitationsDataReceived dataReceived(
      {required KtList<GameInvitation> receivedGameInvitations,
      required KtList<GameInvitation> sentGameInvitations}) {
    return GameInvitationsDataReceived(
      receivedGameInvitations: receivedGameInvitations,
      sentGameInvitations: sentGameInvitations,
    );
  }

  GameInvitationsGameReceived gameReceived(
      {required AbstractGameSnapshot gameSnapshot}) {
    return GameInvitationsGameReceived(
      gameSnapshot: gameSnapshot,
    );
  }

  GameInvitationsInvitationAccepted invitationAccepted(
      {required GameInvitation gameInvitation}) {
    return GameInvitationsInvitationAccepted(
      gameInvitation: gameInvitation,
    );
  }

  GameInvitationsInvitationDeclined invitationDeclined(
      {required GameInvitation gameInvitation}) {
    return GameInvitationsInvitationDeclined(
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
    required TResult Function(KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations)
        dataReceived,
    required TResult Function(AbstractGameSnapshot gameSnapshot) gameReceived,
    required TResult Function(GameInvitation gameInvitation) invitationAccepted,
    required TResult Function(GameInvitation gameInvitation) invitationDeclined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations)?
        dataReceived,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
    TResult Function(GameInvitation gameInvitation)? invitationAccepted,
    TResult Function(GameInvitation gameInvitation)? invitationDeclined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations)?
        dataReceived,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
    TResult Function(GameInvitation gameInvitation)? invitationAccepted,
    TResult Function(GameInvitation gameInvitation)? invitationDeclined,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameInvitationsDataReceived value) dataReceived,
    required TResult Function(GameInvitationsGameReceived value) gameReceived,
    required TResult Function(GameInvitationsInvitationAccepted value)
        invitationAccepted,
    required TResult Function(GameInvitationsInvitationDeclined value)
        invitationDeclined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameInvitationsDataReceived value)? dataReceived,
    TResult Function(GameInvitationsGameReceived value)? gameReceived,
    TResult Function(GameInvitationsInvitationAccepted value)?
        invitationAccepted,
    TResult Function(GameInvitationsInvitationDeclined value)?
        invitationDeclined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameInvitationsDataReceived value)? dataReceived,
    TResult Function(GameInvitationsGameReceived value)? gameReceived,
    TResult Function(GameInvitationsInvitationAccepted value)?
        invitationAccepted,
    TResult Function(GameInvitationsInvitationDeclined value)?
        invitationDeclined,
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
abstract class $GameInvitationsDataReceivedCopyWith<$Res> {
  factory $GameInvitationsDataReceivedCopyWith(
          GameInvitationsDataReceived value,
          $Res Function(GameInvitationsDataReceived) then) =
      _$GameInvitationsDataReceivedCopyWithImpl<$Res>;
  $Res call(
      {KtList<GameInvitation> receivedGameInvitations,
      KtList<GameInvitation> sentGameInvitations});
}

/// @nodoc
class _$GameInvitationsDataReceivedCopyWithImpl<$Res>
    extends _$GameInvitationsEventCopyWithImpl<$Res>
    implements $GameInvitationsDataReceivedCopyWith<$Res> {
  _$GameInvitationsDataReceivedCopyWithImpl(GameInvitationsDataReceived _value,
      $Res Function(GameInvitationsDataReceived) _then)
      : super(_value, (v) => _then(v as GameInvitationsDataReceived));

  @override
  GameInvitationsDataReceived get _value =>
      super._value as GameInvitationsDataReceived;

  @override
  $Res call({
    Object? receivedGameInvitations = freezed,
    Object? sentGameInvitations = freezed,
  }) {
    return _then(GameInvitationsDataReceived(
      receivedGameInvitations: receivedGameInvitations == freezed
          ? _value.receivedGameInvitations
          : receivedGameInvitations // ignore: cast_nullable_to_non_nullable
              as KtList<GameInvitation>,
      sentGameInvitations: sentGameInvitations == freezed
          ? _value.sentGameInvitations
          : sentGameInvitations // ignore: cast_nullable_to_non_nullable
              as KtList<GameInvitation>,
    ));
  }
}

/// @nodoc

class _$GameInvitationsDataReceived implements GameInvitationsDataReceived {
  const _$GameInvitationsDataReceived(
      {required this.receivedGameInvitations,
      required this.sentGameInvitations});

  @override
  final KtList<GameInvitation> receivedGameInvitations;
  @override
  final KtList<GameInvitation> sentGameInvitations;

  @override
  String toString() {
    return 'GameInvitationsEvent.dataReceived(receivedGameInvitations: $receivedGameInvitations, sentGameInvitations: $sentGameInvitations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GameInvitationsDataReceived &&
            (identical(
                    other.receivedGameInvitations, receivedGameInvitations) ||
                other.receivedGameInvitations == receivedGameInvitations) &&
            (identical(other.sentGameInvitations, sentGameInvitations) ||
                other.sentGameInvitations == sentGameInvitations));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, receivedGameInvitations, sentGameInvitations);

  @JsonKey(ignore: true)
  @override
  $GameInvitationsDataReceivedCopyWith<GameInvitationsDataReceived>
      get copyWith => _$GameInvitationsDataReceivedCopyWithImpl<
          GameInvitationsDataReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations)
        dataReceived,
    required TResult Function(AbstractGameSnapshot gameSnapshot) gameReceived,
    required TResult Function(GameInvitation gameInvitation) invitationAccepted,
    required TResult Function(GameInvitation gameInvitation) invitationDeclined,
  }) {
    return dataReceived(receivedGameInvitations, sentGameInvitations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations)?
        dataReceived,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
    TResult Function(GameInvitation gameInvitation)? invitationAccepted,
    TResult Function(GameInvitation gameInvitation)? invitationDeclined,
  }) {
    return dataReceived?.call(receivedGameInvitations, sentGameInvitations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations)?
        dataReceived,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
    TResult Function(GameInvitation gameInvitation)? invitationAccepted,
    TResult Function(GameInvitation gameInvitation)? invitationDeclined,
    required TResult orElse(),
  }) {
    if (dataReceived != null) {
      return dataReceived(receivedGameInvitations, sentGameInvitations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameInvitationsDataReceived value) dataReceived,
    required TResult Function(GameInvitationsGameReceived value) gameReceived,
    required TResult Function(GameInvitationsInvitationAccepted value)
        invitationAccepted,
    required TResult Function(GameInvitationsInvitationDeclined value)
        invitationDeclined,
  }) {
    return dataReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameInvitationsDataReceived value)? dataReceived,
    TResult Function(GameInvitationsGameReceived value)? gameReceived,
    TResult Function(GameInvitationsInvitationAccepted value)?
        invitationAccepted,
    TResult Function(GameInvitationsInvitationDeclined value)?
        invitationDeclined,
  }) {
    return dataReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameInvitationsDataReceived value)? dataReceived,
    TResult Function(GameInvitationsGameReceived value)? gameReceived,
    TResult Function(GameInvitationsInvitationAccepted value)?
        invitationAccepted,
    TResult Function(GameInvitationsInvitationDeclined value)?
        invitationDeclined,
    required TResult orElse(),
  }) {
    if (dataReceived != null) {
      return dataReceived(this);
    }
    return orElse();
  }
}

abstract class GameInvitationsDataReceived implements GameInvitationsEvent {
  const factory GameInvitationsDataReceived(
          {required KtList<GameInvitation> receivedGameInvitations,
          required KtList<GameInvitation> sentGameInvitations}) =
      _$GameInvitationsDataReceived;

  KtList<GameInvitation> get receivedGameInvitations;
  KtList<GameInvitation> get sentGameInvitations;
  @JsonKey(ignore: true)
  $GameInvitationsDataReceivedCopyWith<GameInvitationsDataReceived>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameInvitationsGameReceivedCopyWith<$Res> {
  factory $GameInvitationsGameReceivedCopyWith(
          GameInvitationsGameReceived value,
          $Res Function(GameInvitationsGameReceived) then) =
      _$GameInvitationsGameReceivedCopyWithImpl<$Res>;
  $Res call({AbstractGameSnapshot gameSnapshot});
}

/// @nodoc
class _$GameInvitationsGameReceivedCopyWithImpl<$Res>
    extends _$GameInvitationsEventCopyWithImpl<$Res>
    implements $GameInvitationsGameReceivedCopyWith<$Res> {
  _$GameInvitationsGameReceivedCopyWithImpl(GameInvitationsGameReceived _value,
      $Res Function(GameInvitationsGameReceived) _then)
      : super(_value, (v) => _then(v as GameInvitationsGameReceived));

  @override
  GameInvitationsGameReceived get _value =>
      super._value as GameInvitationsGameReceived;

  @override
  $Res call({
    Object? gameSnapshot = freezed,
  }) {
    return _then(GameInvitationsGameReceived(
      gameSnapshot: gameSnapshot == freezed
          ? _value.gameSnapshot
          : gameSnapshot // ignore: cast_nullable_to_non_nullable
              as AbstractGameSnapshot,
    ));
  }
}

/// @nodoc

class _$GameInvitationsGameReceived implements GameInvitationsGameReceived {
  const _$GameInvitationsGameReceived({required this.gameSnapshot});

  @override
  final AbstractGameSnapshot gameSnapshot;

  @override
  String toString() {
    return 'GameInvitationsEvent.gameReceived(gameSnapshot: $gameSnapshot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GameInvitationsGameReceived &&
            (identical(other.gameSnapshot, gameSnapshot) ||
                other.gameSnapshot == gameSnapshot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameSnapshot);

  @JsonKey(ignore: true)
  @override
  $GameInvitationsGameReceivedCopyWith<GameInvitationsGameReceived>
      get copyWith => _$GameInvitationsGameReceivedCopyWithImpl<
          GameInvitationsGameReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations)
        dataReceived,
    required TResult Function(AbstractGameSnapshot gameSnapshot) gameReceived,
    required TResult Function(GameInvitation gameInvitation) invitationAccepted,
    required TResult Function(GameInvitation gameInvitation) invitationDeclined,
  }) {
    return gameReceived(gameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations)?
        dataReceived,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
    TResult Function(GameInvitation gameInvitation)? invitationAccepted,
    TResult Function(GameInvitation gameInvitation)? invitationDeclined,
  }) {
    return gameReceived?.call(gameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations)?
        dataReceived,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
    TResult Function(GameInvitation gameInvitation)? invitationAccepted,
    TResult Function(GameInvitation gameInvitation)? invitationDeclined,
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
    required TResult Function(GameInvitationsDataReceived value) dataReceived,
    required TResult Function(GameInvitationsGameReceived value) gameReceived,
    required TResult Function(GameInvitationsInvitationAccepted value)
        invitationAccepted,
    required TResult Function(GameInvitationsInvitationDeclined value)
        invitationDeclined,
  }) {
    return gameReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameInvitationsDataReceived value)? dataReceived,
    TResult Function(GameInvitationsGameReceived value)? gameReceived,
    TResult Function(GameInvitationsInvitationAccepted value)?
        invitationAccepted,
    TResult Function(GameInvitationsInvitationDeclined value)?
        invitationDeclined,
  }) {
    return gameReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameInvitationsDataReceived value)? dataReceived,
    TResult Function(GameInvitationsGameReceived value)? gameReceived,
    TResult Function(GameInvitationsInvitationAccepted value)?
        invitationAccepted,
    TResult Function(GameInvitationsInvitationDeclined value)?
        invitationDeclined,
    required TResult orElse(),
  }) {
    if (gameReceived != null) {
      return gameReceived(this);
    }
    return orElse();
  }
}

abstract class GameInvitationsGameReceived implements GameInvitationsEvent {
  const factory GameInvitationsGameReceived(
          {required AbstractGameSnapshot gameSnapshot}) =
      _$GameInvitationsGameReceived;

  AbstractGameSnapshot get gameSnapshot;
  @JsonKey(ignore: true)
  $GameInvitationsGameReceivedCopyWith<GameInvitationsGameReceived>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameInvitationsInvitationAcceptedCopyWith<$Res> {
  factory $GameInvitationsInvitationAcceptedCopyWith(
          GameInvitationsInvitationAccepted value,
          $Res Function(GameInvitationsInvitationAccepted) then) =
      _$GameInvitationsInvitationAcceptedCopyWithImpl<$Res>;
  $Res call({GameInvitation gameInvitation});

  $GameInvitationCopyWith<$Res> get gameInvitation;
}

/// @nodoc
class _$GameInvitationsInvitationAcceptedCopyWithImpl<$Res>
    extends _$GameInvitationsEventCopyWithImpl<$Res>
    implements $GameInvitationsInvitationAcceptedCopyWith<$Res> {
  _$GameInvitationsInvitationAcceptedCopyWithImpl(
      GameInvitationsInvitationAccepted _value,
      $Res Function(GameInvitationsInvitationAccepted) _then)
      : super(_value, (v) => _then(v as GameInvitationsInvitationAccepted));

  @override
  GameInvitationsInvitationAccepted get _value =>
      super._value as GameInvitationsInvitationAccepted;

  @override
  $Res call({
    Object? gameInvitation = freezed,
  }) {
    return _then(GameInvitationsInvitationAccepted(
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

class _$GameInvitationsInvitationAccepted
    implements GameInvitationsInvitationAccepted {
  const _$GameInvitationsInvitationAccepted({required this.gameInvitation});

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
            other is GameInvitationsInvitationAccepted &&
            (identical(other.gameInvitation, gameInvitation) ||
                other.gameInvitation == gameInvitation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameInvitation);

  @JsonKey(ignore: true)
  @override
  $GameInvitationsInvitationAcceptedCopyWith<GameInvitationsInvitationAccepted>
      get copyWith => _$GameInvitationsInvitationAcceptedCopyWithImpl<
          GameInvitationsInvitationAccepted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations)
        dataReceived,
    required TResult Function(AbstractGameSnapshot gameSnapshot) gameReceived,
    required TResult Function(GameInvitation gameInvitation) invitationAccepted,
    required TResult Function(GameInvitation gameInvitation) invitationDeclined,
  }) {
    return invitationAccepted(gameInvitation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations)?
        dataReceived,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
    TResult Function(GameInvitation gameInvitation)? invitationAccepted,
    TResult Function(GameInvitation gameInvitation)? invitationDeclined,
  }) {
    return invitationAccepted?.call(gameInvitation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations)?
        dataReceived,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
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
    required TResult Function(GameInvitationsDataReceived value) dataReceived,
    required TResult Function(GameInvitationsGameReceived value) gameReceived,
    required TResult Function(GameInvitationsInvitationAccepted value)
        invitationAccepted,
    required TResult Function(GameInvitationsInvitationDeclined value)
        invitationDeclined,
  }) {
    return invitationAccepted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameInvitationsDataReceived value)? dataReceived,
    TResult Function(GameInvitationsGameReceived value)? gameReceived,
    TResult Function(GameInvitationsInvitationAccepted value)?
        invitationAccepted,
    TResult Function(GameInvitationsInvitationDeclined value)?
        invitationDeclined,
  }) {
    return invitationAccepted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameInvitationsDataReceived value)? dataReceived,
    TResult Function(GameInvitationsGameReceived value)? gameReceived,
    TResult Function(GameInvitationsInvitationAccepted value)?
        invitationAccepted,
    TResult Function(GameInvitationsInvitationDeclined value)?
        invitationDeclined,
    required TResult orElse(),
  }) {
    if (invitationAccepted != null) {
      return invitationAccepted(this);
    }
    return orElse();
  }
}

abstract class GameInvitationsInvitationAccepted
    implements GameInvitationsEvent {
  const factory GameInvitationsInvitationAccepted(
          {required GameInvitation gameInvitation}) =
      _$GameInvitationsInvitationAccepted;

  GameInvitation get gameInvitation;
  @JsonKey(ignore: true)
  $GameInvitationsInvitationAcceptedCopyWith<GameInvitationsInvitationAccepted>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameInvitationsInvitationDeclinedCopyWith<$Res> {
  factory $GameInvitationsInvitationDeclinedCopyWith(
          GameInvitationsInvitationDeclined value,
          $Res Function(GameInvitationsInvitationDeclined) then) =
      _$GameInvitationsInvitationDeclinedCopyWithImpl<$Res>;
  $Res call({GameInvitation gameInvitation});

  $GameInvitationCopyWith<$Res> get gameInvitation;
}

/// @nodoc
class _$GameInvitationsInvitationDeclinedCopyWithImpl<$Res>
    extends _$GameInvitationsEventCopyWithImpl<$Res>
    implements $GameInvitationsInvitationDeclinedCopyWith<$Res> {
  _$GameInvitationsInvitationDeclinedCopyWithImpl(
      GameInvitationsInvitationDeclined _value,
      $Res Function(GameInvitationsInvitationDeclined) _then)
      : super(_value, (v) => _then(v as GameInvitationsInvitationDeclined));

  @override
  GameInvitationsInvitationDeclined get _value =>
      super._value as GameInvitationsInvitationDeclined;

  @override
  $Res call({
    Object? gameInvitation = freezed,
  }) {
    return _then(GameInvitationsInvitationDeclined(
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

class _$GameInvitationsInvitationDeclined
    implements GameInvitationsInvitationDeclined {
  const _$GameInvitationsInvitationDeclined({required this.gameInvitation});

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
            other is GameInvitationsInvitationDeclined &&
            (identical(other.gameInvitation, gameInvitation) ||
                other.gameInvitation == gameInvitation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameInvitation);

  @JsonKey(ignore: true)
  @override
  $GameInvitationsInvitationDeclinedCopyWith<GameInvitationsInvitationDeclined>
      get copyWith => _$GameInvitationsInvitationDeclinedCopyWithImpl<
          GameInvitationsInvitationDeclined>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations)
        dataReceived,
    required TResult Function(AbstractGameSnapshot gameSnapshot) gameReceived,
    required TResult Function(GameInvitation gameInvitation) invitationAccepted,
    required TResult Function(GameInvitation gameInvitation) invitationDeclined,
  }) {
    return invitationDeclined(gameInvitation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations)?
        dataReceived,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
    TResult Function(GameInvitation gameInvitation)? invitationAccepted,
    TResult Function(GameInvitation gameInvitation)? invitationDeclined,
  }) {
    return invitationDeclined?.call(gameInvitation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations)?
        dataReceived,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
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
    required TResult Function(GameInvitationsDataReceived value) dataReceived,
    required TResult Function(GameInvitationsGameReceived value) gameReceived,
    required TResult Function(GameInvitationsInvitationAccepted value)
        invitationAccepted,
    required TResult Function(GameInvitationsInvitationDeclined value)
        invitationDeclined,
  }) {
    return invitationDeclined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameInvitationsDataReceived value)? dataReceived,
    TResult Function(GameInvitationsGameReceived value)? gameReceived,
    TResult Function(GameInvitationsInvitationAccepted value)?
        invitationAccepted,
    TResult Function(GameInvitationsInvitationDeclined value)?
        invitationDeclined,
  }) {
    return invitationDeclined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameInvitationsDataReceived value)? dataReceived,
    TResult Function(GameInvitationsGameReceived value)? gameReceived,
    TResult Function(GameInvitationsInvitationAccepted value)?
        invitationAccepted,
    TResult Function(GameInvitationsInvitationDeclined value)?
        invitationDeclined,
    required TResult orElse(),
  }) {
    if (invitationDeclined != null) {
      return invitationDeclined(this);
    }
    return orElse();
  }
}

abstract class GameInvitationsInvitationDeclined
    implements GameInvitationsEvent {
  const factory GameInvitationsInvitationDeclined(
          {required GameInvitation gameInvitation}) =
      _$GameInvitationsInvitationDeclined;

  GameInvitation get gameInvitation;
  @JsonKey(ignore: true)
  $GameInvitationsInvitationDeclinedCopyWith<GameInvitationsInvitationDeclined>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$GameInvitationsStateTearOff {
  const _$GameInvitationsStateTearOff();

  GameInvitationsInitial initial(
      {required KtList<GameInvitation> receivedGameInvitations,
      required KtList<GameInvitation> sentGameInvitations,
      AbstractGameSnapshot? gameSnapshot,
      required bool loading,
      PlayFailure? failure}) {
    return GameInvitationsInitial(
      receivedGameInvitations: receivedGameInvitations,
      sentGameInvitations: sentGameInvitations,
      gameSnapshot: gameSnapshot,
      loading: loading,
      failure: failure,
    );
  }
}

/// @nodoc
const $GameInvitationsState = _$GameInvitationsStateTearOff();

/// @nodoc
mixin _$GameInvitationsState {
  KtList<GameInvitation> get receivedGameInvitations =>
      throw _privateConstructorUsedError;
  KtList<GameInvitation> get sentGameInvitations =>
      throw _privateConstructorUsedError;
  AbstractGameSnapshot? get gameSnapshot => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  PlayFailure? get failure => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations,
            AbstractGameSnapshot? gameSnapshot,
            bool loading,
            PlayFailure? failure)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations,
            AbstractGameSnapshot? gameSnapshot,
            bool loading,
            PlayFailure? failure)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations,
            AbstractGameSnapshot? gameSnapshot,
            bool loading,
            PlayFailure? failure)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameInvitationsInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameInvitationsInitial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameInvitationsInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameInvitationsStateCopyWith<GameInvitationsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameInvitationsStateCopyWith<$Res> {
  factory $GameInvitationsStateCopyWith(GameInvitationsState value,
          $Res Function(GameInvitationsState) then) =
      _$GameInvitationsStateCopyWithImpl<$Res>;
  $Res call(
      {KtList<GameInvitation> receivedGameInvitations,
      KtList<GameInvitation> sentGameInvitations,
      AbstractGameSnapshot? gameSnapshot,
      bool loading,
      PlayFailure? failure});

  $PlayFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$GameInvitationsStateCopyWithImpl<$Res>
    implements $GameInvitationsStateCopyWith<$Res> {
  _$GameInvitationsStateCopyWithImpl(this._value, this._then);

  final GameInvitationsState _value;
  // ignore: unused_field
  final $Res Function(GameInvitationsState) _then;

  @override
  $Res call({
    Object? receivedGameInvitations = freezed,
    Object? sentGameInvitations = freezed,
    Object? gameSnapshot = freezed,
    Object? loading = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      receivedGameInvitations: receivedGameInvitations == freezed
          ? _value.receivedGameInvitations
          : receivedGameInvitations // ignore: cast_nullable_to_non_nullable
              as KtList<GameInvitation>,
      sentGameInvitations: sentGameInvitations == freezed
          ? _value.sentGameInvitations
          : sentGameInvitations // ignore: cast_nullable_to_non_nullable
              as KtList<GameInvitation>,
      gameSnapshot: gameSnapshot == freezed
          ? _value.gameSnapshot
          : gameSnapshot // ignore: cast_nullable_to_non_nullable
              as AbstractGameSnapshot?,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as PlayFailure?,
    ));
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
abstract class $GameInvitationsInitialCopyWith<$Res>
    implements $GameInvitationsStateCopyWith<$Res> {
  factory $GameInvitationsInitialCopyWith(GameInvitationsInitial value,
          $Res Function(GameInvitationsInitial) then) =
      _$GameInvitationsInitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {KtList<GameInvitation> receivedGameInvitations,
      KtList<GameInvitation> sentGameInvitations,
      AbstractGameSnapshot? gameSnapshot,
      bool loading,
      PlayFailure? failure});

  @override
  $PlayFailureCopyWith<$Res>? get failure;
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
    Object? receivedGameInvitations = freezed,
    Object? sentGameInvitations = freezed,
    Object? gameSnapshot = freezed,
    Object? loading = freezed,
    Object? failure = freezed,
  }) {
    return _then(GameInvitationsInitial(
      receivedGameInvitations: receivedGameInvitations == freezed
          ? _value.receivedGameInvitations
          : receivedGameInvitations // ignore: cast_nullable_to_non_nullable
              as KtList<GameInvitation>,
      sentGameInvitations: sentGameInvitations == freezed
          ? _value.sentGameInvitations
          : sentGameInvitations // ignore: cast_nullable_to_non_nullable
              as KtList<GameInvitation>,
      gameSnapshot: gameSnapshot == freezed
          ? _value.gameSnapshot
          : gameSnapshot // ignore: cast_nullable_to_non_nullable
              as AbstractGameSnapshot?,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as PlayFailure?,
    ));
  }
}

/// @nodoc

class _$GameInvitationsInitial implements GameInvitationsInitial {
  const _$GameInvitationsInitial(
      {required this.receivedGameInvitations,
      required this.sentGameInvitations,
      this.gameSnapshot,
      required this.loading,
      this.failure});

  @override
  final KtList<GameInvitation> receivedGameInvitations;
  @override
  final KtList<GameInvitation> sentGameInvitations;
  @override
  final AbstractGameSnapshot? gameSnapshot;
  @override
  final bool loading;
  @override
  final PlayFailure? failure;

  @override
  String toString() {
    return 'GameInvitationsState.initial(receivedGameInvitations: $receivedGameInvitations, sentGameInvitations: $sentGameInvitations, gameSnapshot: $gameSnapshot, loading: $loading, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GameInvitationsInitial &&
            (identical(
                    other.receivedGameInvitations, receivedGameInvitations) ||
                other.receivedGameInvitations == receivedGameInvitations) &&
            (identical(other.sentGameInvitations, sentGameInvitations) ||
                other.sentGameInvitations == sentGameInvitations) &&
            (identical(other.gameSnapshot, gameSnapshot) ||
                other.gameSnapshot == gameSnapshot) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, receivedGameInvitations,
      sentGameInvitations, gameSnapshot, loading, failure);

  @JsonKey(ignore: true)
  @override
  $GameInvitationsInitialCopyWith<GameInvitationsInitial> get copyWith =>
      _$GameInvitationsInitialCopyWithImpl<GameInvitationsInitial>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations,
            AbstractGameSnapshot? gameSnapshot,
            bool loading,
            PlayFailure? failure)
        initial,
  }) {
    return initial(receivedGameInvitations, sentGameInvitations, gameSnapshot,
        loading, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations,
            AbstractGameSnapshot? gameSnapshot,
            bool loading,
            PlayFailure? failure)?
        initial,
  }) {
    return initial?.call(receivedGameInvitations, sentGameInvitations,
        gameSnapshot, loading, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations,
            AbstractGameSnapshot? gameSnapshot,
            bool loading,
            PlayFailure? failure)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(receivedGameInvitations, sentGameInvitations, gameSnapshot,
          loading, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameInvitationsInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameInvitationsInitial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameInvitationsInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class GameInvitationsInitial implements GameInvitationsState {
  const factory GameInvitationsInitial(
      {required KtList<GameInvitation> receivedGameInvitations,
      required KtList<GameInvitation> sentGameInvitations,
      AbstractGameSnapshot? gameSnapshot,
      required bool loading,
      PlayFailure? failure}) = _$GameInvitationsInitial;

  @override
  KtList<GameInvitation> get receivedGameInvitations;
  @override
  KtList<GameInvitation> get sentGameInvitations;
  @override
  AbstractGameSnapshot? get gameSnapshot;
  @override
  bool get loading;
  @override
  PlayFailure? get failure;
  @override
  @JsonKey(ignore: true)
  $GameInvitationsInitialCopyWith<GameInvitationsInitial> get copyWith =>
      throw _privateConstructorUsedError;
}
