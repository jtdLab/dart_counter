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

  ReceivedGameInvitationsReceived receivedGameInvitationsReceived(
      {required KtList<GameInvitation> gameInvitations}) {
    return ReceivedGameInvitationsReceived(
      gameInvitations: gameInvitations,
    );
  }

  SentGameInvitationsReceived sentGameInvitationsReceived(
      {required KtList<GameInvitation> gameInvitations}) {
    return SentGameInvitationsReceived(
      gameInvitations: gameInvitations,
    );
  }

  GameReceived gameReceived({required GameSnapshot game}) {
    return GameReceived(
      game: game,
    );
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
}

/// @nodoc
const $InvitationsEvent = _$InvitationsEventTearOff();

/// @nodoc
mixin _$InvitationsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KtList<GameInvitation> gameInvitations)
        receivedGameInvitationsReceived,
    required TResult Function(KtList<GameInvitation> gameInvitations)
        sentGameInvitationsReceived,
    required TResult Function(GameSnapshot game) gameReceived,
    required TResult Function(GameInvitation gameInvitation) accepted,
    required TResult Function(GameInvitation gameInvitation) declined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(KtList<GameInvitation> gameInvitations)?
        receivedGameInvitationsReceived,
    TResult Function(KtList<GameInvitation> gameInvitations)?
        sentGameInvitationsReceived,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(GameInvitation gameInvitation)? accepted,
    TResult Function(GameInvitation gameInvitation)? declined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<GameInvitation> gameInvitations)?
        receivedGameInvitationsReceived,
    TResult Function(KtList<GameInvitation> gameInvitations)?
        sentGameInvitationsReceived,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(GameInvitation gameInvitation)? accepted,
    TResult Function(GameInvitation gameInvitation)? declined,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReceivedGameInvitationsReceived value)
        receivedGameInvitationsReceived,
    required TResult Function(SentGameInvitationsReceived value)
        sentGameInvitationsReceived,
    required TResult Function(GameReceived value) gameReceived,
    required TResult Function(Accepted value) accepted,
    required TResult Function(Declined value) declined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReceivedGameInvitationsReceived value)?
        receivedGameInvitationsReceived,
    TResult Function(SentGameInvitationsReceived value)?
        sentGameInvitationsReceived,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(Accepted value)? accepted,
    TResult Function(Declined value)? declined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReceivedGameInvitationsReceived value)?
        receivedGameInvitationsReceived,
    TResult Function(SentGameInvitationsReceived value)?
        sentGameInvitationsReceived,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(Accepted value)? accepted,
    TResult Function(Declined value)? declined,
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
abstract class $ReceivedGameInvitationsReceivedCopyWith<$Res> {
  factory $ReceivedGameInvitationsReceivedCopyWith(
          ReceivedGameInvitationsReceived value,
          $Res Function(ReceivedGameInvitationsReceived) then) =
      _$ReceivedGameInvitationsReceivedCopyWithImpl<$Res>;
  $Res call({KtList<GameInvitation> gameInvitations});
}

/// @nodoc
class _$ReceivedGameInvitationsReceivedCopyWithImpl<$Res>
    extends _$InvitationsEventCopyWithImpl<$Res>
    implements $ReceivedGameInvitationsReceivedCopyWith<$Res> {
  _$ReceivedGameInvitationsReceivedCopyWithImpl(
      ReceivedGameInvitationsReceived _value,
      $Res Function(ReceivedGameInvitationsReceived) _then)
      : super(_value, (v) => _then(v as ReceivedGameInvitationsReceived));

  @override
  ReceivedGameInvitationsReceived get _value =>
      super._value as ReceivedGameInvitationsReceived;

  @override
  $Res call({
    Object? gameInvitations = freezed,
  }) {
    return _then(ReceivedGameInvitationsReceived(
      gameInvitations: gameInvitations == freezed
          ? _value.gameInvitations
          : gameInvitations // ignore: cast_nullable_to_non_nullable
              as KtList<GameInvitation>,
    ));
  }
}

/// @nodoc

class _$ReceivedGameInvitationsReceived
    implements ReceivedGameInvitationsReceived {
  const _$ReceivedGameInvitationsReceived({required this.gameInvitations});

  @override
  final KtList<GameInvitation> gameInvitations;

  @override
  String toString() {
    return 'InvitationsEvent.receivedGameInvitationsReceived(gameInvitations: $gameInvitations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ReceivedGameInvitationsReceived &&
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
  $ReceivedGameInvitationsReceivedCopyWith<ReceivedGameInvitationsReceived>
      get copyWith => _$ReceivedGameInvitationsReceivedCopyWithImpl<
          ReceivedGameInvitationsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KtList<GameInvitation> gameInvitations)
        receivedGameInvitationsReceived,
    required TResult Function(KtList<GameInvitation> gameInvitations)
        sentGameInvitationsReceived,
    required TResult Function(GameSnapshot game) gameReceived,
    required TResult Function(GameInvitation gameInvitation) accepted,
    required TResult Function(GameInvitation gameInvitation) declined,
  }) {
    return receivedGameInvitationsReceived(gameInvitations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(KtList<GameInvitation> gameInvitations)?
        receivedGameInvitationsReceived,
    TResult Function(KtList<GameInvitation> gameInvitations)?
        sentGameInvitationsReceived,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(GameInvitation gameInvitation)? accepted,
    TResult Function(GameInvitation gameInvitation)? declined,
  }) {
    return receivedGameInvitationsReceived?.call(gameInvitations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<GameInvitation> gameInvitations)?
        receivedGameInvitationsReceived,
    TResult Function(KtList<GameInvitation> gameInvitations)?
        sentGameInvitationsReceived,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(GameInvitation gameInvitation)? accepted,
    TResult Function(GameInvitation gameInvitation)? declined,
    required TResult orElse(),
  }) {
    if (receivedGameInvitationsReceived != null) {
      return receivedGameInvitationsReceived(gameInvitations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReceivedGameInvitationsReceived value)
        receivedGameInvitationsReceived,
    required TResult Function(SentGameInvitationsReceived value)
        sentGameInvitationsReceived,
    required TResult Function(GameReceived value) gameReceived,
    required TResult Function(Accepted value) accepted,
    required TResult Function(Declined value) declined,
  }) {
    return receivedGameInvitationsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReceivedGameInvitationsReceived value)?
        receivedGameInvitationsReceived,
    TResult Function(SentGameInvitationsReceived value)?
        sentGameInvitationsReceived,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(Accepted value)? accepted,
    TResult Function(Declined value)? declined,
  }) {
    return receivedGameInvitationsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReceivedGameInvitationsReceived value)?
        receivedGameInvitationsReceived,
    TResult Function(SentGameInvitationsReceived value)?
        sentGameInvitationsReceived,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(Accepted value)? accepted,
    TResult Function(Declined value)? declined,
    required TResult orElse(),
  }) {
    if (receivedGameInvitationsReceived != null) {
      return receivedGameInvitationsReceived(this);
    }
    return orElse();
  }
}

abstract class ReceivedGameInvitationsReceived implements InvitationsEvent {
  const factory ReceivedGameInvitationsReceived(
          {required KtList<GameInvitation> gameInvitations}) =
      _$ReceivedGameInvitationsReceived;

  KtList<GameInvitation> get gameInvitations =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReceivedGameInvitationsReceivedCopyWith<ReceivedGameInvitationsReceived>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SentGameInvitationsReceivedCopyWith<$Res> {
  factory $SentGameInvitationsReceivedCopyWith(
          SentGameInvitationsReceived value,
          $Res Function(SentGameInvitationsReceived) then) =
      _$SentGameInvitationsReceivedCopyWithImpl<$Res>;
  $Res call({KtList<GameInvitation> gameInvitations});
}

/// @nodoc
class _$SentGameInvitationsReceivedCopyWithImpl<$Res>
    extends _$InvitationsEventCopyWithImpl<$Res>
    implements $SentGameInvitationsReceivedCopyWith<$Res> {
  _$SentGameInvitationsReceivedCopyWithImpl(SentGameInvitationsReceived _value,
      $Res Function(SentGameInvitationsReceived) _then)
      : super(_value, (v) => _then(v as SentGameInvitationsReceived));

  @override
  SentGameInvitationsReceived get _value =>
      super._value as SentGameInvitationsReceived;

  @override
  $Res call({
    Object? gameInvitations = freezed,
  }) {
    return _then(SentGameInvitationsReceived(
      gameInvitations: gameInvitations == freezed
          ? _value.gameInvitations
          : gameInvitations // ignore: cast_nullable_to_non_nullable
              as KtList<GameInvitation>,
    ));
  }
}

/// @nodoc

class _$SentGameInvitationsReceived implements SentGameInvitationsReceived {
  const _$SentGameInvitationsReceived({required this.gameInvitations});

  @override
  final KtList<GameInvitation> gameInvitations;

  @override
  String toString() {
    return 'InvitationsEvent.sentGameInvitationsReceived(gameInvitations: $gameInvitations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SentGameInvitationsReceived &&
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
  $SentGameInvitationsReceivedCopyWith<SentGameInvitationsReceived>
      get copyWith => _$SentGameInvitationsReceivedCopyWithImpl<
          SentGameInvitationsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KtList<GameInvitation> gameInvitations)
        receivedGameInvitationsReceived,
    required TResult Function(KtList<GameInvitation> gameInvitations)
        sentGameInvitationsReceived,
    required TResult Function(GameSnapshot game) gameReceived,
    required TResult Function(GameInvitation gameInvitation) accepted,
    required TResult Function(GameInvitation gameInvitation) declined,
  }) {
    return sentGameInvitationsReceived(gameInvitations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(KtList<GameInvitation> gameInvitations)?
        receivedGameInvitationsReceived,
    TResult Function(KtList<GameInvitation> gameInvitations)?
        sentGameInvitationsReceived,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(GameInvitation gameInvitation)? accepted,
    TResult Function(GameInvitation gameInvitation)? declined,
  }) {
    return sentGameInvitationsReceived?.call(gameInvitations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<GameInvitation> gameInvitations)?
        receivedGameInvitationsReceived,
    TResult Function(KtList<GameInvitation> gameInvitations)?
        sentGameInvitationsReceived,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(GameInvitation gameInvitation)? accepted,
    TResult Function(GameInvitation gameInvitation)? declined,
    required TResult orElse(),
  }) {
    if (sentGameInvitationsReceived != null) {
      return sentGameInvitationsReceived(gameInvitations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReceivedGameInvitationsReceived value)
        receivedGameInvitationsReceived,
    required TResult Function(SentGameInvitationsReceived value)
        sentGameInvitationsReceived,
    required TResult Function(GameReceived value) gameReceived,
    required TResult Function(Accepted value) accepted,
    required TResult Function(Declined value) declined,
  }) {
    return sentGameInvitationsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReceivedGameInvitationsReceived value)?
        receivedGameInvitationsReceived,
    TResult Function(SentGameInvitationsReceived value)?
        sentGameInvitationsReceived,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(Accepted value)? accepted,
    TResult Function(Declined value)? declined,
  }) {
    return sentGameInvitationsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReceivedGameInvitationsReceived value)?
        receivedGameInvitationsReceived,
    TResult Function(SentGameInvitationsReceived value)?
        sentGameInvitationsReceived,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(Accepted value)? accepted,
    TResult Function(Declined value)? declined,
    required TResult orElse(),
  }) {
    if (sentGameInvitationsReceived != null) {
      return sentGameInvitationsReceived(this);
    }
    return orElse();
  }
}

abstract class SentGameInvitationsReceived implements InvitationsEvent {
  const factory SentGameInvitationsReceived(
          {required KtList<GameInvitation> gameInvitations}) =
      _$SentGameInvitationsReceived;

  KtList<GameInvitation> get gameInvitations =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SentGameInvitationsReceivedCopyWith<SentGameInvitationsReceived>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameReceivedCopyWith<$Res> {
  factory $GameReceivedCopyWith(
          GameReceived value, $Res Function(GameReceived) then) =
      _$GameReceivedCopyWithImpl<$Res>;
  $Res call({GameSnapshot game});
}

/// @nodoc
class _$GameReceivedCopyWithImpl<$Res>
    extends _$InvitationsEventCopyWithImpl<$Res>
    implements $GameReceivedCopyWith<$Res> {
  _$GameReceivedCopyWithImpl(
      GameReceived _value, $Res Function(GameReceived) _then)
      : super(_value, (v) => _then(v as GameReceived));

  @override
  GameReceived get _value => super._value as GameReceived;

  @override
  $Res call({
    Object? game = freezed,
  }) {
    return _then(GameReceived(
      game: game == freezed
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as GameSnapshot,
    ));
  }
}

/// @nodoc

class _$GameReceived implements GameReceived {
  const _$GameReceived({required this.game});

  @override
  final GameSnapshot game;

  @override
  String toString() {
    return 'InvitationsEvent.gameReceived(game: $game)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GameReceived &&
            (identical(other.game, game) ||
                const DeepCollectionEquality().equals(other.game, game)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(game);

  @JsonKey(ignore: true)
  @override
  $GameReceivedCopyWith<GameReceived> get copyWith =>
      _$GameReceivedCopyWithImpl<GameReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KtList<GameInvitation> gameInvitations)
        receivedGameInvitationsReceived,
    required TResult Function(KtList<GameInvitation> gameInvitations)
        sentGameInvitationsReceived,
    required TResult Function(GameSnapshot game) gameReceived,
    required TResult Function(GameInvitation gameInvitation) accepted,
    required TResult Function(GameInvitation gameInvitation) declined,
  }) {
    return gameReceived(game);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(KtList<GameInvitation> gameInvitations)?
        receivedGameInvitationsReceived,
    TResult Function(KtList<GameInvitation> gameInvitations)?
        sentGameInvitationsReceived,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(GameInvitation gameInvitation)? accepted,
    TResult Function(GameInvitation gameInvitation)? declined,
  }) {
    return gameReceived?.call(game);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<GameInvitation> gameInvitations)?
        receivedGameInvitationsReceived,
    TResult Function(KtList<GameInvitation> gameInvitations)?
        sentGameInvitationsReceived,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(GameInvitation gameInvitation)? accepted,
    TResult Function(GameInvitation gameInvitation)? declined,
    required TResult orElse(),
  }) {
    if (gameReceived != null) {
      return gameReceived(game);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReceivedGameInvitationsReceived value)
        receivedGameInvitationsReceived,
    required TResult Function(SentGameInvitationsReceived value)
        sentGameInvitationsReceived,
    required TResult Function(GameReceived value) gameReceived,
    required TResult Function(Accepted value) accepted,
    required TResult Function(Declined value) declined,
  }) {
    return gameReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReceivedGameInvitationsReceived value)?
        receivedGameInvitationsReceived,
    TResult Function(SentGameInvitationsReceived value)?
        sentGameInvitationsReceived,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(Accepted value)? accepted,
    TResult Function(Declined value)? declined,
  }) {
    return gameReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReceivedGameInvitationsReceived value)?
        receivedGameInvitationsReceived,
    TResult Function(SentGameInvitationsReceived value)?
        sentGameInvitationsReceived,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(Accepted value)? accepted,
    TResult Function(Declined value)? declined,
    required TResult orElse(),
  }) {
    if (gameReceived != null) {
      return gameReceived(this);
    }
    return orElse();
  }
}

abstract class GameReceived implements InvitationsEvent {
  const factory GameReceived({required GameSnapshot game}) = _$GameReceived;

  GameSnapshot get game => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameReceivedCopyWith<GameReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcceptedCopyWith<$Res> {
  factory $AcceptedCopyWith(Accepted value, $Res Function(Accepted) then) =
      _$AcceptedCopyWithImpl<$Res>;
  $Res call({GameInvitation gameInvitation});

  $GameInvitationCopyWith<$Res> get gameInvitation;
}

/// @nodoc
class _$AcceptedCopyWithImpl<$Res> extends _$InvitationsEventCopyWithImpl<$Res>
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
    return 'InvitationsEvent.accepted(gameInvitation: $gameInvitation)';
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
    required TResult Function(KtList<GameInvitation> gameInvitations)
        receivedGameInvitationsReceived,
    required TResult Function(KtList<GameInvitation> gameInvitations)
        sentGameInvitationsReceived,
    required TResult Function(GameSnapshot game) gameReceived,
    required TResult Function(GameInvitation gameInvitation) accepted,
    required TResult Function(GameInvitation gameInvitation) declined,
  }) {
    return accepted(gameInvitation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(KtList<GameInvitation> gameInvitations)?
        receivedGameInvitationsReceived,
    TResult Function(KtList<GameInvitation> gameInvitations)?
        sentGameInvitationsReceived,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(GameInvitation gameInvitation)? accepted,
    TResult Function(GameInvitation gameInvitation)? declined,
  }) {
    return accepted?.call(gameInvitation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<GameInvitation> gameInvitations)?
        receivedGameInvitationsReceived,
    TResult Function(KtList<GameInvitation> gameInvitations)?
        sentGameInvitationsReceived,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(GameInvitation gameInvitation)? accepted,
    TResult Function(GameInvitation gameInvitation)? declined,
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
    required TResult Function(ReceivedGameInvitationsReceived value)
        receivedGameInvitationsReceived,
    required TResult Function(SentGameInvitationsReceived value)
        sentGameInvitationsReceived,
    required TResult Function(GameReceived value) gameReceived,
    required TResult Function(Accepted value) accepted,
    required TResult Function(Declined value) declined,
  }) {
    return accepted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReceivedGameInvitationsReceived value)?
        receivedGameInvitationsReceived,
    TResult Function(SentGameInvitationsReceived value)?
        sentGameInvitationsReceived,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(Accepted value)? accepted,
    TResult Function(Declined value)? declined,
  }) {
    return accepted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReceivedGameInvitationsReceived value)?
        receivedGameInvitationsReceived,
    TResult Function(SentGameInvitationsReceived value)?
        sentGameInvitationsReceived,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(Accepted value)? accepted,
    TResult Function(Declined value)? declined,
    required TResult orElse(),
  }) {
    if (accepted != null) {
      return accepted(this);
    }
    return orElse();
  }
}

abstract class Accepted implements InvitationsEvent {
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
class _$DeclinedCopyWithImpl<$Res> extends _$InvitationsEventCopyWithImpl<$Res>
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
    return 'InvitationsEvent.declined(gameInvitation: $gameInvitation)';
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
    required TResult Function(KtList<GameInvitation> gameInvitations)
        receivedGameInvitationsReceived,
    required TResult Function(KtList<GameInvitation> gameInvitations)
        sentGameInvitationsReceived,
    required TResult Function(GameSnapshot game) gameReceived,
    required TResult Function(GameInvitation gameInvitation) accepted,
    required TResult Function(GameInvitation gameInvitation) declined,
  }) {
    return declined(gameInvitation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(KtList<GameInvitation> gameInvitations)?
        receivedGameInvitationsReceived,
    TResult Function(KtList<GameInvitation> gameInvitations)?
        sentGameInvitationsReceived,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(GameInvitation gameInvitation)? accepted,
    TResult Function(GameInvitation gameInvitation)? declined,
  }) {
    return declined?.call(gameInvitation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<GameInvitation> gameInvitations)?
        receivedGameInvitationsReceived,
    TResult Function(KtList<GameInvitation> gameInvitations)?
        sentGameInvitationsReceived,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(GameInvitation gameInvitation)? accepted,
    TResult Function(GameInvitation gameInvitation)? declined,
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
    required TResult Function(ReceivedGameInvitationsReceived value)
        receivedGameInvitationsReceived,
    required TResult Function(SentGameInvitationsReceived value)
        sentGameInvitationsReceived,
    required TResult Function(GameReceived value) gameReceived,
    required TResult Function(Accepted value) accepted,
    required TResult Function(Declined value) declined,
  }) {
    return declined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReceivedGameInvitationsReceived value)?
        receivedGameInvitationsReceived,
    TResult Function(SentGameInvitationsReceived value)?
        sentGameInvitationsReceived,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(Accepted value)? accepted,
    TResult Function(Declined value)? declined,
  }) {
    return declined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReceivedGameInvitationsReceived value)?
        receivedGameInvitationsReceived,
    TResult Function(SentGameInvitationsReceived value)?
        sentGameInvitationsReceived,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(Accepted value)? accepted,
    TResult Function(Declined value)? declined,
    required TResult orElse(),
  }) {
    if (declined != null) {
      return declined(this);
    }
    return orElse();
  }
}

abstract class Declined implements InvitationsEvent {
  const factory Declined({required GameInvitation gameInvitation}) = _$Declined;

  GameInvitation get gameInvitation => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeclinedCopyWith<Declined> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$InvitationsStateTearOff {
  const _$InvitationsStateTearOff();

  _InvitationsState call(
      {required KtList<GameInvitation> receivedGameInvitations,
      required KtList<GameInvitation> sentGameInvitations,
      GameSnapshot? game}) {
    return _InvitationsState(
      receivedGameInvitations: receivedGameInvitations,
      sentGameInvitations: sentGameInvitations,
      game: game,
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
  GameSnapshot? get game => throw _privateConstructorUsedError;

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
      GameSnapshot? game});
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
    Object? game = freezed,
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
      game: game == freezed
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as GameSnapshot?,
    ));
  }
}

/// @nodoc
abstract class _$InvitationsStateCopyWith<$Res>
    implements $InvitationsStateCopyWith<$Res> {
  factory _$InvitationsStateCopyWith(
          _InvitationsState value, $Res Function(_InvitationsState) then) =
      __$InvitationsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {KtList<GameInvitation> receivedGameInvitations,
      KtList<GameInvitation> sentGameInvitations,
      GameSnapshot? game});
}

/// @nodoc
class __$InvitationsStateCopyWithImpl<$Res>
    extends _$InvitationsStateCopyWithImpl<$Res>
    implements _$InvitationsStateCopyWith<$Res> {
  __$InvitationsStateCopyWithImpl(
      _InvitationsState _value, $Res Function(_InvitationsState) _then)
      : super(_value, (v) => _then(v as _InvitationsState));

  @override
  _InvitationsState get _value => super._value as _InvitationsState;

  @override
  $Res call({
    Object? receivedGameInvitations = freezed,
    Object? sentGameInvitations = freezed,
    Object? game = freezed,
  }) {
    return _then(_InvitationsState(
      receivedGameInvitations: receivedGameInvitations == freezed
          ? _value.receivedGameInvitations
          : receivedGameInvitations // ignore: cast_nullable_to_non_nullable
              as KtList<GameInvitation>,
      sentGameInvitations: sentGameInvitations == freezed
          ? _value.sentGameInvitations
          : sentGameInvitations // ignore: cast_nullable_to_non_nullable
              as KtList<GameInvitation>,
      game: game == freezed
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as GameSnapshot?,
    ));
  }
}

/// @nodoc

class _$_InvitationsState implements _InvitationsState {
  const _$_InvitationsState(
      {required this.receivedGameInvitations,
      required this.sentGameInvitations,
      this.game});

  @override
  final KtList<GameInvitation> receivedGameInvitations;
  @override
  final KtList<GameInvitation> sentGameInvitations;
  @override
  final GameSnapshot? game;

  @override
  String toString() {
    return 'InvitationsState(receivedGameInvitations: $receivedGameInvitations, sentGameInvitations: $sentGameInvitations, game: $game)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvitationsState &&
            (identical(
                    other.receivedGameInvitations, receivedGameInvitations) ||
                const DeepCollectionEquality().equals(
                    other.receivedGameInvitations, receivedGameInvitations)) &&
            (identical(other.sentGameInvitations, sentGameInvitations) ||
                const DeepCollectionEquality()
                    .equals(other.sentGameInvitations, sentGameInvitations)) &&
            (identical(other.game, game) ||
                const DeepCollectionEquality().equals(other.game, game)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(receivedGameInvitations) ^
      const DeepCollectionEquality().hash(sentGameInvitations) ^
      const DeepCollectionEquality().hash(game);

  @JsonKey(ignore: true)
  @override
  _$InvitationsStateCopyWith<_InvitationsState> get copyWith =>
      __$InvitationsStateCopyWithImpl<_InvitationsState>(this, _$identity);
}

abstract class _InvitationsState implements InvitationsState {
  const factory _InvitationsState(
      {required KtList<GameInvitation> receivedGameInvitations,
      required KtList<GameInvitation> sentGameInvitations,
      GameSnapshot? game}) = _$_InvitationsState;

  @override
  KtList<GameInvitation> get receivedGameInvitations =>
      throw _privateConstructorUsedError;
  @override
  KtList<GameInvitation> get sentGameInvitations =>
      throw _privateConstructorUsedError;
  @override
  GameSnapshot? get game => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InvitationsStateCopyWith<_InvitationsState> get copyWith =>
      throw _privateConstructorUsedError;
}
