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

  Started started() {
    return const Started();
  }

  InvitationAccepted invitationAccepted(
      {required GameInvitation gameInvitation}) {
    return InvitationAccepted(
      gameInvitation: gameInvitation,
    );
  }

  InvitationDeclined invitationDeclined(
      {required GameInvitation gameInvitation}) {
    return InvitationDeclined(
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
    required TResult Function(Started value) started,
    required TResult Function(InvitationAccepted value) invitationAccepted,
    required TResult Function(InvitationDeclined value) invitationDeclined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(InvitationAccepted value)? invitationAccepted,
    TResult Function(InvitationDeclined value)? invitationDeclined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(InvitationAccepted value)? invitationAccepted,
    TResult Function(InvitationDeclined value)? invitationDeclined,
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
abstract class $StartedCopyWith<$Res> {
  factory $StartedCopyWith(Started value, $Res Function(Started) then) =
      _$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$StartedCopyWithImpl<$Res>
    extends _$GameInvitationsEventCopyWithImpl<$Res>
    implements $StartedCopyWith<$Res> {
  _$StartedCopyWithImpl(Started _value, $Res Function(Started) _then)
      : super(_value, (v) => _then(v as Started));

  @override
  Started get _value => super._value as Started;
}

/// @nodoc

class _$Started implements Started {
  const _$Started();

  @override
  String toString() {
    return 'GameInvitationsEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Started);
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
    required TResult Function(Started value) started,
    required TResult Function(InvitationAccepted value) invitationAccepted,
    required TResult Function(InvitationDeclined value) invitationDeclined,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(InvitationAccepted value)? invitationAccepted,
    TResult Function(InvitationDeclined value)? invitationDeclined,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(InvitationAccepted value)? invitationAccepted,
    TResult Function(InvitationDeclined value)? invitationDeclined,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements GameInvitationsEvent {
  const factory Started() = _$Started;
}

/// @nodoc
abstract class $InvitationAcceptedCopyWith<$Res> {
  factory $InvitationAcceptedCopyWith(
          InvitationAccepted value, $Res Function(InvitationAccepted) then) =
      _$InvitationAcceptedCopyWithImpl<$Res>;
  $Res call({GameInvitation gameInvitation});

  $GameInvitationCopyWith<$Res> get gameInvitation;
}

/// @nodoc
class _$InvitationAcceptedCopyWithImpl<$Res>
    extends _$GameInvitationsEventCopyWithImpl<$Res>
    implements $InvitationAcceptedCopyWith<$Res> {
  _$InvitationAcceptedCopyWithImpl(
      InvitationAccepted _value, $Res Function(InvitationAccepted) _then)
      : super(_value, (v) => _then(v as InvitationAccepted));

  @override
  InvitationAccepted get _value => super._value as InvitationAccepted;

  @override
  $Res call({
    Object? gameInvitation = freezed,
  }) {
    return _then(InvitationAccepted(
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

class _$InvitationAccepted implements InvitationAccepted {
  const _$InvitationAccepted({required this.gameInvitation});

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
            other is InvitationAccepted &&
            const DeepCollectionEquality()
                .equals(other.gameInvitation, gameInvitation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(gameInvitation));

  @JsonKey(ignore: true)
  @override
  $InvitationAcceptedCopyWith<InvitationAccepted> get copyWith =>
      _$InvitationAcceptedCopyWithImpl<InvitationAccepted>(this, _$identity);

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
    required TResult Function(Started value) started,
    required TResult Function(InvitationAccepted value) invitationAccepted,
    required TResult Function(InvitationDeclined value) invitationDeclined,
  }) {
    return invitationAccepted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(InvitationAccepted value)? invitationAccepted,
    TResult Function(InvitationDeclined value)? invitationDeclined,
  }) {
    return invitationAccepted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(InvitationAccepted value)? invitationAccepted,
    TResult Function(InvitationDeclined value)? invitationDeclined,
    required TResult orElse(),
  }) {
    if (invitationAccepted != null) {
      return invitationAccepted(this);
    }
    return orElse();
  }
}

abstract class InvitationAccepted implements GameInvitationsEvent {
  const factory InvitationAccepted({required GameInvitation gameInvitation}) =
      _$InvitationAccepted;

  GameInvitation get gameInvitation;
  @JsonKey(ignore: true)
  $InvitationAcceptedCopyWith<InvitationAccepted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvitationDeclinedCopyWith<$Res> {
  factory $InvitationDeclinedCopyWith(
          InvitationDeclined value, $Res Function(InvitationDeclined) then) =
      _$InvitationDeclinedCopyWithImpl<$Res>;
  $Res call({GameInvitation gameInvitation});

  $GameInvitationCopyWith<$Res> get gameInvitation;
}

/// @nodoc
class _$InvitationDeclinedCopyWithImpl<$Res>
    extends _$GameInvitationsEventCopyWithImpl<$Res>
    implements $InvitationDeclinedCopyWith<$Res> {
  _$InvitationDeclinedCopyWithImpl(
      InvitationDeclined _value, $Res Function(InvitationDeclined) _then)
      : super(_value, (v) => _then(v as InvitationDeclined));

  @override
  InvitationDeclined get _value => super._value as InvitationDeclined;

  @override
  $Res call({
    Object? gameInvitation = freezed,
  }) {
    return _then(InvitationDeclined(
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

class _$InvitationDeclined implements InvitationDeclined {
  const _$InvitationDeclined({required this.gameInvitation});

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
            other is InvitationDeclined &&
            const DeepCollectionEquality()
                .equals(other.gameInvitation, gameInvitation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(gameInvitation));

  @JsonKey(ignore: true)
  @override
  $InvitationDeclinedCopyWith<InvitationDeclined> get copyWith =>
      _$InvitationDeclinedCopyWithImpl<InvitationDeclined>(this, _$identity);

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
    required TResult Function(Started value) started,
    required TResult Function(InvitationAccepted value) invitationAccepted,
    required TResult Function(InvitationDeclined value) invitationDeclined,
  }) {
    return invitationDeclined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(InvitationAccepted value)? invitationAccepted,
    TResult Function(InvitationDeclined value)? invitationDeclined,
  }) {
    return invitationDeclined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(InvitationAccepted value)? invitationAccepted,
    TResult Function(InvitationDeclined value)? invitationDeclined,
    required TResult orElse(),
  }) {
    if (invitationDeclined != null) {
      return invitationDeclined(this);
    }
    return orElse();
  }
}

abstract class InvitationDeclined implements GameInvitationsEvent {
  const factory InvitationDeclined({required GameInvitation gameInvitation}) =
      _$InvitationDeclined;

  GameInvitation get gameInvitation;
  @JsonKey(ignore: true)
  $InvitationDeclinedCopyWith<InvitationDeclined> get copyWith =>
      throw _privateConstructorUsedError;
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
            const DeepCollectionEquality().equals(
                other.receivedGameInvitations, receivedGameInvitations) &&
            const DeepCollectionEquality()
                .equals(other.sentGameInvitations, sentGameInvitations) &&
            const DeepCollectionEquality()
                .equals(other.gameSnapshot, gameSnapshot) &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(receivedGameInvitations),
      const DeepCollectionEquality().hash(sentGameInvitations),
      const DeepCollectionEquality().hash(gameSnapshot),
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(failure));

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
