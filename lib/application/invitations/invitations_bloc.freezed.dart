// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'invitations_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InvitationsEventTearOff {
  const _$InvitationsEventTearOff();

  InvitationsDataReceived dataReceived(
      {required KtList<GameInvitation> receivedGameInvitations,
      required KtList<GameInvitation> sentGameInvitations}) {
    return InvitationsDataReceived(
      receivedGameInvitations: receivedGameInvitations,
      sentGameInvitations: sentGameInvitations,
    );
  }

  InvitationsGameReceived gameReceived({required GameSnapshot gameSnapshot}) {
    return InvitationsGameReceived(
      gameSnapshot: gameSnapshot,
    );
  }

  InvitationsInvitationAccepted invitationAccepted(
      {required GameInvitation gameInvitation}) {
    return InvitationsInvitationAccepted(
      gameInvitation: gameInvitation,
    );
  }

  InvitationsInvitationDeclined invitationDeclined(
      {required GameInvitation gameInvitation}) {
    return InvitationsInvitationDeclined(
      gameInvitation: gameInvitation,
    );
  }
}

/// @nodoc
const $InvitationsEvent = _$InvitationsEventTearOff();

/// @nodoc
mixin _$InvitationsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations)
        dataReceived,
    required TResult Function(GameSnapshot gameSnapshot) gameReceived,
    required TResult Function(GameInvitation gameInvitation) invitationAccepted,
    required TResult Function(GameInvitation gameInvitation) invitationDeclined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations)?
        dataReceived,
    TResult Function(GameSnapshot gameSnapshot)? gameReceived,
    TResult Function(GameInvitation gameInvitation)? invitationAccepted,
    TResult Function(GameInvitation gameInvitation)? invitationDeclined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations)?
        dataReceived,
    TResult Function(GameSnapshot gameSnapshot)? gameReceived,
    TResult Function(GameInvitation gameInvitation)? invitationAccepted,
    TResult Function(GameInvitation gameInvitation)? invitationDeclined,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvitationsDataReceived value) dataReceived,
    required TResult Function(InvitationsGameReceived value) gameReceived,
    required TResult Function(InvitationsInvitationAccepted value)
        invitationAccepted,
    required TResult Function(InvitationsInvitationDeclined value)
        invitationDeclined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvitationsDataReceived value)? dataReceived,
    TResult Function(InvitationsGameReceived value)? gameReceived,
    TResult Function(InvitationsInvitationAccepted value)? invitationAccepted,
    TResult Function(InvitationsInvitationDeclined value)? invitationDeclined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvitationsDataReceived value)? dataReceived,
    TResult Function(InvitationsGameReceived value)? gameReceived,
    TResult Function(InvitationsInvitationAccepted value)? invitationAccepted,
    TResult Function(InvitationsInvitationDeclined value)? invitationDeclined,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvitationsEventCopyWith<$Res> {
  factory $InvitationsEventCopyWith(
          InvitationsEvent value, $Res Function(InvitationsEvent) then) =
      _$InvitationsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvitationsEventCopyWithImpl<$Res>
    implements $InvitationsEventCopyWith<$Res> {
  _$InvitationsEventCopyWithImpl(this._value, this._then);

  final InvitationsEvent _value;
  // ignore: unused_field
  final $Res Function(InvitationsEvent) _then;
}

/// @nodoc
abstract class $InvitationsDataReceivedCopyWith<$Res> {
  factory $InvitationsDataReceivedCopyWith(InvitationsDataReceived value,
          $Res Function(InvitationsDataReceived) then) =
      _$InvitationsDataReceivedCopyWithImpl<$Res>;
  $Res call(
      {KtList<GameInvitation> receivedGameInvitations,
      KtList<GameInvitation> sentGameInvitations});
}

/// @nodoc
class _$InvitationsDataReceivedCopyWithImpl<$Res>
    extends _$InvitationsEventCopyWithImpl<$Res>
    implements $InvitationsDataReceivedCopyWith<$Res> {
  _$InvitationsDataReceivedCopyWithImpl(InvitationsDataReceived _value,
      $Res Function(InvitationsDataReceived) _then)
      : super(_value, (v) => _then(v as InvitationsDataReceived));

  @override
  InvitationsDataReceived get _value => super._value as InvitationsDataReceived;

  @override
  $Res call({
    Object? receivedGameInvitations = freezed,
    Object? sentGameInvitations = freezed,
  }) {
    return _then(InvitationsDataReceived(
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

class _$InvitationsDataReceived implements InvitationsDataReceived {
  const _$InvitationsDataReceived(
      {required this.receivedGameInvitations,
      required this.sentGameInvitations});

  @override
  final KtList<GameInvitation> receivedGameInvitations;
  @override
  final KtList<GameInvitation> sentGameInvitations;

  @override
  String toString() {
    return 'InvitationsEvent.dataReceived(receivedGameInvitations: $receivedGameInvitations, sentGameInvitations: $sentGameInvitations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvitationsDataReceived &&
            (identical(
                    other.receivedGameInvitations, receivedGameInvitations) ||
                const DeepCollectionEquality().equals(
                    other.receivedGameInvitations, receivedGameInvitations)) &&
            (identical(other.sentGameInvitations, sentGameInvitations) ||
                const DeepCollectionEquality()
                    .equals(other.sentGameInvitations, sentGameInvitations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(receivedGameInvitations) ^
      const DeepCollectionEquality().hash(sentGameInvitations);

  @JsonKey(ignore: true)
  @override
  $InvitationsDataReceivedCopyWith<InvitationsDataReceived> get copyWith =>
      _$InvitationsDataReceivedCopyWithImpl<InvitationsDataReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations)
        dataReceived,
    required TResult Function(GameSnapshot gameSnapshot) gameReceived,
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
    TResult Function(GameSnapshot gameSnapshot)? gameReceived,
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
    TResult Function(GameSnapshot gameSnapshot)? gameReceived,
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
    required TResult Function(InvitationsDataReceived value) dataReceived,
    required TResult Function(InvitationsGameReceived value) gameReceived,
    required TResult Function(InvitationsInvitationAccepted value)
        invitationAccepted,
    required TResult Function(InvitationsInvitationDeclined value)
        invitationDeclined,
  }) {
    return dataReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvitationsDataReceived value)? dataReceived,
    TResult Function(InvitationsGameReceived value)? gameReceived,
    TResult Function(InvitationsInvitationAccepted value)? invitationAccepted,
    TResult Function(InvitationsInvitationDeclined value)? invitationDeclined,
  }) {
    return dataReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvitationsDataReceived value)? dataReceived,
    TResult Function(InvitationsGameReceived value)? gameReceived,
    TResult Function(InvitationsInvitationAccepted value)? invitationAccepted,
    TResult Function(InvitationsInvitationDeclined value)? invitationDeclined,
    required TResult orElse(),
  }) {
    if (dataReceived != null) {
      return dataReceived(this);
    }
    return orElse();
  }
}

abstract class InvitationsDataReceived implements InvitationsEvent {
  const factory InvitationsDataReceived(
          {required KtList<GameInvitation> receivedGameInvitations,
          required KtList<GameInvitation> sentGameInvitations}) =
      _$InvitationsDataReceived;

  KtList<GameInvitation> get receivedGameInvitations =>
      throw _privateConstructorUsedError;
  KtList<GameInvitation> get sentGameInvitations =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvitationsDataReceivedCopyWith<InvitationsDataReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvitationsGameReceivedCopyWith<$Res> {
  factory $InvitationsGameReceivedCopyWith(InvitationsGameReceived value,
          $Res Function(InvitationsGameReceived) then) =
      _$InvitationsGameReceivedCopyWithImpl<$Res>;
  $Res call({GameSnapshot gameSnapshot});
}

/// @nodoc
class _$InvitationsGameReceivedCopyWithImpl<$Res>
    extends _$InvitationsEventCopyWithImpl<$Res>
    implements $InvitationsGameReceivedCopyWith<$Res> {
  _$InvitationsGameReceivedCopyWithImpl(InvitationsGameReceived _value,
      $Res Function(InvitationsGameReceived) _then)
      : super(_value, (v) => _then(v as InvitationsGameReceived));

  @override
  InvitationsGameReceived get _value => super._value as InvitationsGameReceived;

  @override
  $Res call({
    Object? gameSnapshot = freezed,
  }) {
    return _then(InvitationsGameReceived(
      gameSnapshot: gameSnapshot == freezed
          ? _value.gameSnapshot
          : gameSnapshot // ignore: cast_nullable_to_non_nullable
              as GameSnapshot,
    ));
  }
}

/// @nodoc

class _$InvitationsGameReceived implements InvitationsGameReceived {
  const _$InvitationsGameReceived({required this.gameSnapshot});

  @override
  final GameSnapshot gameSnapshot;

  @override
  String toString() {
    return 'InvitationsEvent.gameReceived(gameSnapshot: $gameSnapshot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvitationsGameReceived &&
            (identical(other.gameSnapshot, gameSnapshot) ||
                const DeepCollectionEquality()
                    .equals(other.gameSnapshot, gameSnapshot)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(gameSnapshot);

  @JsonKey(ignore: true)
  @override
  $InvitationsGameReceivedCopyWith<InvitationsGameReceived> get copyWith =>
      _$InvitationsGameReceivedCopyWithImpl<InvitationsGameReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations)
        dataReceived,
    required TResult Function(GameSnapshot gameSnapshot) gameReceived,
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
    TResult Function(GameSnapshot gameSnapshot)? gameReceived,
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
    TResult Function(GameSnapshot gameSnapshot)? gameReceived,
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
    required TResult Function(InvitationsDataReceived value) dataReceived,
    required TResult Function(InvitationsGameReceived value) gameReceived,
    required TResult Function(InvitationsInvitationAccepted value)
        invitationAccepted,
    required TResult Function(InvitationsInvitationDeclined value)
        invitationDeclined,
  }) {
    return gameReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvitationsDataReceived value)? dataReceived,
    TResult Function(InvitationsGameReceived value)? gameReceived,
    TResult Function(InvitationsInvitationAccepted value)? invitationAccepted,
    TResult Function(InvitationsInvitationDeclined value)? invitationDeclined,
  }) {
    return gameReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvitationsDataReceived value)? dataReceived,
    TResult Function(InvitationsGameReceived value)? gameReceived,
    TResult Function(InvitationsInvitationAccepted value)? invitationAccepted,
    TResult Function(InvitationsInvitationDeclined value)? invitationDeclined,
    required TResult orElse(),
  }) {
    if (gameReceived != null) {
      return gameReceived(this);
    }
    return orElse();
  }
}

abstract class InvitationsGameReceived implements InvitationsEvent {
  const factory InvitationsGameReceived({required GameSnapshot gameSnapshot}) =
      _$InvitationsGameReceived;

  GameSnapshot get gameSnapshot => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvitationsGameReceivedCopyWith<InvitationsGameReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvitationsInvitationAcceptedCopyWith<$Res> {
  factory $InvitationsInvitationAcceptedCopyWith(
          InvitationsInvitationAccepted value,
          $Res Function(InvitationsInvitationAccepted) then) =
      _$InvitationsInvitationAcceptedCopyWithImpl<$Res>;
  $Res call({GameInvitation gameInvitation});

  $GameInvitationCopyWith<$Res> get gameInvitation;
}

/// @nodoc
class _$InvitationsInvitationAcceptedCopyWithImpl<$Res>
    extends _$InvitationsEventCopyWithImpl<$Res>
    implements $InvitationsInvitationAcceptedCopyWith<$Res> {
  _$InvitationsInvitationAcceptedCopyWithImpl(
      InvitationsInvitationAccepted _value,
      $Res Function(InvitationsInvitationAccepted) _then)
      : super(_value, (v) => _then(v as InvitationsInvitationAccepted));

  @override
  InvitationsInvitationAccepted get _value =>
      super._value as InvitationsInvitationAccepted;

  @override
  $Res call({
    Object? gameInvitation = freezed,
  }) {
    return _then(InvitationsInvitationAccepted(
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

class _$InvitationsInvitationAccepted implements InvitationsInvitationAccepted {
  const _$InvitationsInvitationAccepted({required this.gameInvitation});

  @override
  final GameInvitation gameInvitation;

  @override
  String toString() {
    return 'InvitationsEvent.invitationAccepted(gameInvitation: $gameInvitation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvitationsInvitationAccepted &&
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
  $InvitationsInvitationAcceptedCopyWith<InvitationsInvitationAccepted>
      get copyWith => _$InvitationsInvitationAcceptedCopyWithImpl<
          InvitationsInvitationAccepted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations)
        dataReceived,
    required TResult Function(GameSnapshot gameSnapshot) gameReceived,
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
    TResult Function(GameSnapshot gameSnapshot)? gameReceived,
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
    TResult Function(GameSnapshot gameSnapshot)? gameReceived,
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
    required TResult Function(InvitationsDataReceived value) dataReceived,
    required TResult Function(InvitationsGameReceived value) gameReceived,
    required TResult Function(InvitationsInvitationAccepted value)
        invitationAccepted,
    required TResult Function(InvitationsInvitationDeclined value)
        invitationDeclined,
  }) {
    return invitationAccepted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvitationsDataReceived value)? dataReceived,
    TResult Function(InvitationsGameReceived value)? gameReceived,
    TResult Function(InvitationsInvitationAccepted value)? invitationAccepted,
    TResult Function(InvitationsInvitationDeclined value)? invitationDeclined,
  }) {
    return invitationAccepted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvitationsDataReceived value)? dataReceived,
    TResult Function(InvitationsGameReceived value)? gameReceived,
    TResult Function(InvitationsInvitationAccepted value)? invitationAccepted,
    TResult Function(InvitationsInvitationDeclined value)? invitationDeclined,
    required TResult orElse(),
  }) {
    if (invitationAccepted != null) {
      return invitationAccepted(this);
    }
    return orElse();
  }
}

abstract class InvitationsInvitationAccepted implements InvitationsEvent {
  const factory InvitationsInvitationAccepted(
          {required GameInvitation gameInvitation}) =
      _$InvitationsInvitationAccepted;

  GameInvitation get gameInvitation => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvitationsInvitationAcceptedCopyWith<InvitationsInvitationAccepted>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvitationsInvitationDeclinedCopyWith<$Res> {
  factory $InvitationsInvitationDeclinedCopyWith(
          InvitationsInvitationDeclined value,
          $Res Function(InvitationsInvitationDeclined) then) =
      _$InvitationsInvitationDeclinedCopyWithImpl<$Res>;
  $Res call({GameInvitation gameInvitation});

  $GameInvitationCopyWith<$Res> get gameInvitation;
}

/// @nodoc
class _$InvitationsInvitationDeclinedCopyWithImpl<$Res>
    extends _$InvitationsEventCopyWithImpl<$Res>
    implements $InvitationsInvitationDeclinedCopyWith<$Res> {
  _$InvitationsInvitationDeclinedCopyWithImpl(
      InvitationsInvitationDeclined _value,
      $Res Function(InvitationsInvitationDeclined) _then)
      : super(_value, (v) => _then(v as InvitationsInvitationDeclined));

  @override
  InvitationsInvitationDeclined get _value =>
      super._value as InvitationsInvitationDeclined;

  @override
  $Res call({
    Object? gameInvitation = freezed,
  }) {
    return _then(InvitationsInvitationDeclined(
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

class _$InvitationsInvitationDeclined implements InvitationsInvitationDeclined {
  const _$InvitationsInvitationDeclined({required this.gameInvitation});

  @override
  final GameInvitation gameInvitation;

  @override
  String toString() {
    return 'InvitationsEvent.invitationDeclined(gameInvitation: $gameInvitation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvitationsInvitationDeclined &&
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
  $InvitationsInvitationDeclinedCopyWith<InvitationsInvitationDeclined>
      get copyWith => _$InvitationsInvitationDeclinedCopyWithImpl<
          InvitationsInvitationDeclined>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations)
        dataReceived,
    required TResult Function(GameSnapshot gameSnapshot) gameReceived,
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
    TResult Function(GameSnapshot gameSnapshot)? gameReceived,
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
    TResult Function(GameSnapshot gameSnapshot)? gameReceived,
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
    required TResult Function(InvitationsDataReceived value) dataReceived,
    required TResult Function(InvitationsGameReceived value) gameReceived,
    required TResult Function(InvitationsInvitationAccepted value)
        invitationAccepted,
    required TResult Function(InvitationsInvitationDeclined value)
        invitationDeclined,
  }) {
    return invitationDeclined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvitationsDataReceived value)? dataReceived,
    TResult Function(InvitationsGameReceived value)? gameReceived,
    TResult Function(InvitationsInvitationAccepted value)? invitationAccepted,
    TResult Function(InvitationsInvitationDeclined value)? invitationDeclined,
  }) {
    return invitationDeclined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvitationsDataReceived value)? dataReceived,
    TResult Function(InvitationsGameReceived value)? gameReceived,
    TResult Function(InvitationsInvitationAccepted value)? invitationAccepted,
    TResult Function(InvitationsInvitationDeclined value)? invitationDeclined,
    required TResult orElse(),
  }) {
    if (invitationDeclined != null) {
      return invitationDeclined(this);
    }
    return orElse();
  }
}

abstract class InvitationsInvitationDeclined implements InvitationsEvent {
  const factory InvitationsInvitationDeclined(
          {required GameInvitation gameInvitation}) =
      _$InvitationsInvitationDeclined;

  GameInvitation get gameInvitation => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvitationsInvitationDeclinedCopyWith<InvitationsInvitationDeclined>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$InvitationsStateTearOff {
  const _$InvitationsStateTearOff();

  InvitationsInitial initial(
      {required KtList<GameInvitation> receivedGameInvitations,
      required KtList<GameInvitation> sentGameInvitations,
      GameSnapshot? gameSnapshot,
      required bool loading,
      PlayFailure? failure}) {
    return InvitationsInitial(
      receivedGameInvitations: receivedGameInvitations,
      sentGameInvitations: sentGameInvitations,
      gameSnapshot: gameSnapshot,
      loading: loading,
      failure: failure,
    );
  }
}

/// @nodoc
const $InvitationsState = _$InvitationsStateTearOff();

/// @nodoc
mixin _$InvitationsState {
  KtList<GameInvitation> get receivedGameInvitations =>
      throw _privateConstructorUsedError;
  KtList<GameInvitation> get sentGameInvitations =>
      throw _privateConstructorUsedError;
  GameSnapshot? get gameSnapshot => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  PlayFailure? get failure => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations,
            GameSnapshot? gameSnapshot,
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
            GameSnapshot? gameSnapshot,
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
            GameSnapshot? gameSnapshot,
            bool loading,
            PlayFailure? failure)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvitationsInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvitationsInitial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvitationsInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InvitationsStateCopyWith<InvitationsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvitationsStateCopyWith<$Res> {
  factory $InvitationsStateCopyWith(
          InvitationsState value, $Res Function(InvitationsState) then) =
      _$InvitationsStateCopyWithImpl<$Res>;
  $Res call(
      {KtList<GameInvitation> receivedGameInvitations,
      KtList<GameInvitation> sentGameInvitations,
      GameSnapshot? gameSnapshot,
      bool loading,
      PlayFailure? failure});

  $PlayFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$InvitationsStateCopyWithImpl<$Res>
    implements $InvitationsStateCopyWith<$Res> {
  _$InvitationsStateCopyWithImpl(this._value, this._then);

  final InvitationsState _value;
  // ignore: unused_field
  final $Res Function(InvitationsState) _then;

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
              as GameSnapshot?,
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
abstract class $InvitationsInitialCopyWith<$Res>
    implements $InvitationsStateCopyWith<$Res> {
  factory $InvitationsInitialCopyWith(
          InvitationsInitial value, $Res Function(InvitationsInitial) then) =
      _$InvitationsInitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {KtList<GameInvitation> receivedGameInvitations,
      KtList<GameInvitation> sentGameInvitations,
      GameSnapshot? gameSnapshot,
      bool loading,
      PlayFailure? failure});

  @override
  $PlayFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$InvitationsInitialCopyWithImpl<$Res>
    extends _$InvitationsStateCopyWithImpl<$Res>
    implements $InvitationsInitialCopyWith<$Res> {
  _$InvitationsInitialCopyWithImpl(
      InvitationsInitial _value, $Res Function(InvitationsInitial) _then)
      : super(_value, (v) => _then(v as InvitationsInitial));

  @override
  InvitationsInitial get _value => super._value as InvitationsInitial;

  @override
  $Res call({
    Object? receivedGameInvitations = freezed,
    Object? sentGameInvitations = freezed,
    Object? gameSnapshot = freezed,
    Object? loading = freezed,
    Object? failure = freezed,
  }) {
    return _then(InvitationsInitial(
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
              as GameSnapshot?,
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

class _$InvitationsInitial implements InvitationsInitial {
  const _$InvitationsInitial(
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
  final GameSnapshot? gameSnapshot;
  @override
  final bool loading;
  @override
  final PlayFailure? failure;

  @override
  String toString() {
    return 'InvitationsState.initial(receivedGameInvitations: $receivedGameInvitations, sentGameInvitations: $sentGameInvitations, gameSnapshot: $gameSnapshot, loading: $loading, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvitationsInitial &&
            (identical(
                    other.receivedGameInvitations, receivedGameInvitations) ||
                const DeepCollectionEquality().equals(
                    other.receivedGameInvitations, receivedGameInvitations)) &&
            (identical(other.sentGameInvitations, sentGameInvitations) ||
                const DeepCollectionEquality()
                    .equals(other.sentGameInvitations, sentGameInvitations)) &&
            (identical(other.gameSnapshot, gameSnapshot) ||
                const DeepCollectionEquality()
                    .equals(other.gameSnapshot, gameSnapshot)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality()
                    .equals(other.loading, loading)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(receivedGameInvitations) ^
      const DeepCollectionEquality().hash(sentGameInvitations) ^
      const DeepCollectionEquality().hash(gameSnapshot) ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  $InvitationsInitialCopyWith<InvitationsInitial> get copyWith =>
      _$InvitationsInitialCopyWithImpl<InvitationsInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations,
            GameSnapshot? gameSnapshot,
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
            GameSnapshot? gameSnapshot,
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
            GameSnapshot? gameSnapshot,
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
    required TResult Function(InvitationsInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvitationsInitial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvitationsInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InvitationsInitial implements InvitationsState {
  const factory InvitationsInitial(
      {required KtList<GameInvitation> receivedGameInvitations,
      required KtList<GameInvitation> sentGameInvitations,
      GameSnapshot? gameSnapshot,
      required bool loading,
      PlayFailure? failure}) = _$InvitationsInitial;

  @override
  KtList<GameInvitation> get receivedGameInvitations =>
      throw _privateConstructorUsedError;
  @override
  KtList<GameInvitation> get sentGameInvitations =>
      throw _privateConstructorUsedError;
  @override
  GameSnapshot? get gameSnapshot => throw _privateConstructorUsedError;
  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  PlayFailure? get failure => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InvitationsInitialCopyWith<InvitationsInitial> get copyWith =>
      throw _privateConstructorUsedError;
}
