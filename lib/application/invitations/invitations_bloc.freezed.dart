// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

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
const $InvitationsEvent = _$InvitationsEventTearOff();

/// @nodoc
mixin _$InvitationsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KtList<GameInvitation> gameInvitations)
        receivedGameInvitationsReceived,
    required TResult Function(KtList<GameInvitation> gameInvitations)
        sentGameInvitationsReceived,
    required TResult Function(GameInvitation gameInvitation) accepted,
    required TResult Function(GameInvitation gameInvitation) declined,
    required TResult Function() newInvitationsRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<GameInvitation> gameInvitations)?
        receivedGameInvitationsReceived,
    TResult Function(KtList<GameInvitation> gameInvitations)?
        sentGameInvitationsReceived,
    TResult Function(GameInvitation gameInvitation)? accepted,
    TResult Function(GameInvitation gameInvitation)? declined,
    TResult Function()? newInvitationsRead,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReceivedGameInvitationsReceived value)
        receivedGameInvitationsReceived,
    required TResult Function(SentGameInvitationsReceived value)
        sentGameInvitationsReceived,
    required TResult Function(Accepted value) accepted,
    required TResult Function(Declined value) declined,
    required TResult Function(NewInvitationsRead value) newInvitationsRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReceivedGameInvitationsReceived value)?
        receivedGameInvitationsReceived,
    TResult Function(SentGameInvitationsReceived value)?
        sentGameInvitationsReceived,
    TResult Function(Accepted value)? accepted,
    TResult Function(Declined value)? declined,
    TResult Function(NewInvitationsRead value)? newInvitationsRead,
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
    required TResult Function(GameInvitation gameInvitation) accepted,
    required TResult Function(GameInvitation gameInvitation) declined,
    required TResult Function() newInvitationsRead,
  }) {
    return receivedGameInvitationsReceived(gameInvitations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<GameInvitation> gameInvitations)?
        receivedGameInvitationsReceived,
    TResult Function(KtList<GameInvitation> gameInvitations)?
        sentGameInvitationsReceived,
    TResult Function(GameInvitation gameInvitation)? accepted,
    TResult Function(GameInvitation gameInvitation)? declined,
    TResult Function()? newInvitationsRead,
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
    required TResult Function(Accepted value) accepted,
    required TResult Function(Declined value) declined,
    required TResult Function(NewInvitationsRead value) newInvitationsRead,
  }) {
    return receivedGameInvitationsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReceivedGameInvitationsReceived value)?
        receivedGameInvitationsReceived,
    TResult Function(SentGameInvitationsReceived value)?
        sentGameInvitationsReceived,
    TResult Function(Accepted value)? accepted,
    TResult Function(Declined value)? declined,
    TResult Function(NewInvitationsRead value)? newInvitationsRead,
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
    required TResult Function(GameInvitation gameInvitation) accepted,
    required TResult Function(GameInvitation gameInvitation) declined,
    required TResult Function() newInvitationsRead,
  }) {
    return sentGameInvitationsReceived(gameInvitations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<GameInvitation> gameInvitations)?
        receivedGameInvitationsReceived,
    TResult Function(KtList<GameInvitation> gameInvitations)?
        sentGameInvitationsReceived,
    TResult Function(GameInvitation gameInvitation)? accepted,
    TResult Function(GameInvitation gameInvitation)? declined,
    TResult Function()? newInvitationsRead,
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
    required TResult Function(Accepted value) accepted,
    required TResult Function(Declined value) declined,
    required TResult Function(NewInvitationsRead value) newInvitationsRead,
  }) {
    return sentGameInvitationsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReceivedGameInvitationsReceived value)?
        receivedGameInvitationsReceived,
    TResult Function(SentGameInvitationsReceived value)?
        sentGameInvitationsReceived,
    TResult Function(Accepted value)? accepted,
    TResult Function(Declined value)? declined,
    TResult Function(NewInvitationsRead value)? newInvitationsRead,
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
    required TResult Function(GameInvitation gameInvitation) accepted,
    required TResult Function(GameInvitation gameInvitation) declined,
    required TResult Function() newInvitationsRead,
  }) {
    return accepted(gameInvitation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<GameInvitation> gameInvitations)?
        receivedGameInvitationsReceived,
    TResult Function(KtList<GameInvitation> gameInvitations)?
        sentGameInvitationsReceived,
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
    required TResult Function(ReceivedGameInvitationsReceived value)
        receivedGameInvitationsReceived,
    required TResult Function(SentGameInvitationsReceived value)
        sentGameInvitationsReceived,
    required TResult Function(Accepted value) accepted,
    required TResult Function(Declined value) declined,
    required TResult Function(NewInvitationsRead value) newInvitationsRead,
  }) {
    return accepted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReceivedGameInvitationsReceived value)?
        receivedGameInvitationsReceived,
    TResult Function(SentGameInvitationsReceived value)?
        sentGameInvitationsReceived,
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
    required TResult Function(GameInvitation gameInvitation) accepted,
    required TResult Function(GameInvitation gameInvitation) declined,
    required TResult Function() newInvitationsRead,
  }) {
    return declined(gameInvitation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<GameInvitation> gameInvitations)?
        receivedGameInvitationsReceived,
    TResult Function(KtList<GameInvitation> gameInvitations)?
        sentGameInvitationsReceived,
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
    required TResult Function(ReceivedGameInvitationsReceived value)
        receivedGameInvitationsReceived,
    required TResult Function(SentGameInvitationsReceived value)
        sentGameInvitationsReceived,
    required TResult Function(Accepted value) accepted,
    required TResult Function(Declined value) declined,
    required TResult Function(NewInvitationsRead value) newInvitationsRead,
  }) {
    return declined(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReceivedGameInvitationsReceived value)?
        receivedGameInvitationsReceived,
    TResult Function(SentGameInvitationsReceived value)?
        sentGameInvitationsReceived,
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

abstract class Declined implements InvitationsEvent {
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
    extends _$InvitationsEventCopyWithImpl<$Res>
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
    return 'InvitationsEvent.newInvitationsRead()';
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
    required TResult Function(KtList<GameInvitation> gameInvitations)
        receivedGameInvitationsReceived,
    required TResult Function(KtList<GameInvitation> gameInvitations)
        sentGameInvitationsReceived,
    required TResult Function(GameInvitation gameInvitation) accepted,
    required TResult Function(GameInvitation gameInvitation) declined,
    required TResult Function() newInvitationsRead,
  }) {
    return newInvitationsRead();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<GameInvitation> gameInvitations)?
        receivedGameInvitationsReceived,
    TResult Function(KtList<GameInvitation> gameInvitations)?
        sentGameInvitationsReceived,
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
    required TResult Function(ReceivedGameInvitationsReceived value)
        receivedGameInvitationsReceived,
    required TResult Function(SentGameInvitationsReceived value)
        sentGameInvitationsReceived,
    required TResult Function(Accepted value) accepted,
    required TResult Function(Declined value) declined,
    required TResult Function(NewInvitationsRead value) newInvitationsRead,
  }) {
    return newInvitationsRead(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReceivedGameInvitationsReceived value)?
        receivedGameInvitationsReceived,
    TResult Function(SentGameInvitationsReceived value)?
        sentGameInvitationsReceived,
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

abstract class NewInvitationsRead implements InvitationsEvent {
  const factory NewInvitationsRead() = _$NewInvitationsRead;
}

/// @nodoc
class _$InvitationsStateTearOff {
  const _$InvitationsStateTearOff();

  _InvitationsState call(
      {required KtList<GameInvitation> receivedGameInvitations,
      required KtList<GameInvitation> sentGameInvitations}) {
    return _InvitationsState(
      receivedGameInvitations: receivedGameInvitations,
      sentGameInvitations: sentGameInvitations,
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
      KtList<GameInvitation> sentGameInvitations});
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
      KtList<GameInvitation> sentGameInvitations});
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
    ));
  }
}

/// @nodoc

class _$_InvitationsState implements _InvitationsState {
  const _$_InvitationsState(
      {required this.receivedGameInvitations,
      required this.sentGameInvitations});

  @override
  final KtList<GameInvitation> receivedGameInvitations;
  @override
  final KtList<GameInvitation> sentGameInvitations;

  @override
  String toString() {
    return 'InvitationsState(receivedGameInvitations: $receivedGameInvitations, sentGameInvitations: $sentGameInvitations)';
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
                    .equals(other.sentGameInvitations, sentGameInvitations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(receivedGameInvitations) ^
      const DeepCollectionEquality().hash(sentGameInvitations);

  @JsonKey(ignore: true)
  @override
  _$InvitationsStateCopyWith<_InvitationsState> get copyWith =>
      __$InvitationsStateCopyWithImpl<_InvitationsState>(this, _$identity);
}

abstract class _InvitationsState implements InvitationsState {
  const factory _InvitationsState(
          {required KtList<GameInvitation> receivedGameInvitations,
          required KtList<GameInvitation> sentGameInvitations}) =
      _$_InvitationsState;

  @override
  KtList<GameInvitation> get receivedGameInvitations =>
      throw _privateConstructorUsedError;
  @override
  KtList<GameInvitation> get sentGameInvitations =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InvitationsStateCopyWith<_InvitationsState> get copyWith =>
      throw _privateConstructorUsedError;
}
