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

  WatchStarted watchStarted() {
    return const WatchStarted();
  }

  ReceivedInvitationsReceived receivedInvitationsReceived(
      {required KtList<GameInvitation> invitations}) {
    return ReceivedInvitationsReceived(
      invitations: invitations,
    );
  }

  SentInvitationsReceived sentInvitationsReceived(
      {required KtList<GameInvitation> invitations}) {
    return SentInvitationsReceived(
      invitations: invitations,
    );
  }

  FailureReceived failureReceived({required GameInvitationFailure failure}) {
    return FailureReceived(
      failure: failure,
    );
  }
}

/// @nodoc
const $InvitationsEvent = _$InvitationsEventTearOff();

/// @nodoc
mixin _$InvitationsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(KtList<GameInvitation> invitations)
        receivedInvitationsReceived,
    required TResult Function(KtList<GameInvitation> invitations)
        sentInvitationsReceived,
    required TResult Function(GameInvitationFailure failure) failureReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(KtList<GameInvitation> invitations)?
        receivedInvitationsReceived,
    TResult Function(KtList<GameInvitation> invitations)?
        sentInvitationsReceived,
    TResult Function(GameInvitationFailure failure)? failureReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(ReceivedInvitationsReceived value)
        receivedInvitationsReceived,
    required TResult Function(SentInvitationsReceived value)
        sentInvitationsReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(ReceivedInvitationsReceived value)?
        receivedInvitationsReceived,
    TResult Function(SentInvitationsReceived value)? sentInvitationsReceived,
    TResult Function(FailureReceived value)? failureReceived,
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
abstract class $WatchStartedCopyWith<$Res> {
  factory $WatchStartedCopyWith(
          WatchStarted value, $Res Function(WatchStarted) then) =
      _$WatchStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatchStartedCopyWithImpl<$Res>
    extends _$InvitationsEventCopyWithImpl<$Res>
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
    return 'InvitationsEvent.watchStarted()';
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
    required TResult Function(KtList<GameInvitation> invitations)
        receivedInvitationsReceived,
    required TResult Function(KtList<GameInvitation> invitations)
        sentInvitationsReceived,
    required TResult Function(GameInvitationFailure failure) failureReceived,
  }) {
    return watchStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(KtList<GameInvitation> invitations)?
        receivedInvitationsReceived,
    TResult Function(KtList<GameInvitation> invitations)?
        sentInvitationsReceived,
    TResult Function(GameInvitationFailure failure)? failureReceived,
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
    required TResult Function(ReceivedInvitationsReceived value)
        receivedInvitationsReceived,
    required TResult Function(SentInvitationsReceived value)
        sentInvitationsReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return watchStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(ReceivedInvitationsReceived value)?
        receivedInvitationsReceived,
    TResult Function(SentInvitationsReceived value)? sentInvitationsReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (watchStarted != null) {
      return watchStarted(this);
    }
    return orElse();
  }
}

abstract class WatchStarted implements InvitationsEvent {
  const factory WatchStarted() = _$WatchStarted;
}

/// @nodoc
abstract class $ReceivedInvitationsReceivedCopyWith<$Res> {
  factory $ReceivedInvitationsReceivedCopyWith(
          ReceivedInvitationsReceived value,
          $Res Function(ReceivedInvitationsReceived) then) =
      _$ReceivedInvitationsReceivedCopyWithImpl<$Res>;
  $Res call({KtList<GameInvitation> invitations});
}

/// @nodoc
class _$ReceivedInvitationsReceivedCopyWithImpl<$Res>
    extends _$InvitationsEventCopyWithImpl<$Res>
    implements $ReceivedInvitationsReceivedCopyWith<$Res> {
  _$ReceivedInvitationsReceivedCopyWithImpl(ReceivedInvitationsReceived _value,
      $Res Function(ReceivedInvitationsReceived) _then)
      : super(_value, (v) => _then(v as ReceivedInvitationsReceived));

  @override
  ReceivedInvitationsReceived get _value =>
      super._value as ReceivedInvitationsReceived;

  @override
  $Res call({
    Object? invitations = freezed,
  }) {
    return _then(ReceivedInvitationsReceived(
      invitations: invitations == freezed
          ? _value.invitations
          : invitations // ignore: cast_nullable_to_non_nullable
              as KtList<GameInvitation>,
    ));
  }
}

/// @nodoc

class _$ReceivedInvitationsReceived implements ReceivedInvitationsReceived {
  const _$ReceivedInvitationsReceived({required this.invitations});

  @override
  final KtList<GameInvitation> invitations;

  @override
  String toString() {
    return 'InvitationsEvent.receivedInvitationsReceived(invitations: $invitations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ReceivedInvitationsReceived &&
            (identical(other.invitations, invitations) ||
                const DeepCollectionEquality()
                    .equals(other.invitations, invitations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(invitations);

  @JsonKey(ignore: true)
  @override
  $ReceivedInvitationsReceivedCopyWith<ReceivedInvitationsReceived>
      get copyWith => _$ReceivedInvitationsReceivedCopyWithImpl<
          ReceivedInvitationsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(KtList<GameInvitation> invitations)
        receivedInvitationsReceived,
    required TResult Function(KtList<GameInvitation> invitations)
        sentInvitationsReceived,
    required TResult Function(GameInvitationFailure failure) failureReceived,
  }) {
    return receivedInvitationsReceived(invitations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(KtList<GameInvitation> invitations)?
        receivedInvitationsReceived,
    TResult Function(KtList<GameInvitation> invitations)?
        sentInvitationsReceived,
    TResult Function(GameInvitationFailure failure)? failureReceived,
    required TResult orElse(),
  }) {
    if (receivedInvitationsReceived != null) {
      return receivedInvitationsReceived(invitations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(ReceivedInvitationsReceived value)
        receivedInvitationsReceived,
    required TResult Function(SentInvitationsReceived value)
        sentInvitationsReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return receivedInvitationsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(ReceivedInvitationsReceived value)?
        receivedInvitationsReceived,
    TResult Function(SentInvitationsReceived value)? sentInvitationsReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (receivedInvitationsReceived != null) {
      return receivedInvitationsReceived(this);
    }
    return orElse();
  }
}

abstract class ReceivedInvitationsReceived implements InvitationsEvent {
  const factory ReceivedInvitationsReceived(
          {required KtList<GameInvitation> invitations}) =
      _$ReceivedInvitationsReceived;

  KtList<GameInvitation> get invitations => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReceivedInvitationsReceivedCopyWith<ReceivedInvitationsReceived>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SentInvitationsReceivedCopyWith<$Res> {
  factory $SentInvitationsReceivedCopyWith(SentInvitationsReceived value,
          $Res Function(SentInvitationsReceived) then) =
      _$SentInvitationsReceivedCopyWithImpl<$Res>;
  $Res call({KtList<GameInvitation> invitations});
}

/// @nodoc
class _$SentInvitationsReceivedCopyWithImpl<$Res>
    extends _$InvitationsEventCopyWithImpl<$Res>
    implements $SentInvitationsReceivedCopyWith<$Res> {
  _$SentInvitationsReceivedCopyWithImpl(SentInvitationsReceived _value,
      $Res Function(SentInvitationsReceived) _then)
      : super(_value, (v) => _then(v as SentInvitationsReceived));

  @override
  SentInvitationsReceived get _value => super._value as SentInvitationsReceived;

  @override
  $Res call({
    Object? invitations = freezed,
  }) {
    return _then(SentInvitationsReceived(
      invitations: invitations == freezed
          ? _value.invitations
          : invitations // ignore: cast_nullable_to_non_nullable
              as KtList<GameInvitation>,
    ));
  }
}

/// @nodoc

class _$SentInvitationsReceived implements SentInvitationsReceived {
  const _$SentInvitationsReceived({required this.invitations});

  @override
  final KtList<GameInvitation> invitations;

  @override
  String toString() {
    return 'InvitationsEvent.sentInvitationsReceived(invitations: $invitations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SentInvitationsReceived &&
            (identical(other.invitations, invitations) ||
                const DeepCollectionEquality()
                    .equals(other.invitations, invitations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(invitations);

  @JsonKey(ignore: true)
  @override
  $SentInvitationsReceivedCopyWith<SentInvitationsReceived> get copyWith =>
      _$SentInvitationsReceivedCopyWithImpl<SentInvitationsReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(KtList<GameInvitation> invitations)
        receivedInvitationsReceived,
    required TResult Function(KtList<GameInvitation> invitations)
        sentInvitationsReceived,
    required TResult Function(GameInvitationFailure failure) failureReceived,
  }) {
    return sentInvitationsReceived(invitations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(KtList<GameInvitation> invitations)?
        receivedInvitationsReceived,
    TResult Function(KtList<GameInvitation> invitations)?
        sentInvitationsReceived,
    TResult Function(GameInvitationFailure failure)? failureReceived,
    required TResult orElse(),
  }) {
    if (sentInvitationsReceived != null) {
      return sentInvitationsReceived(invitations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(ReceivedInvitationsReceived value)
        receivedInvitationsReceived,
    required TResult Function(SentInvitationsReceived value)
        sentInvitationsReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return sentInvitationsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(ReceivedInvitationsReceived value)?
        receivedInvitationsReceived,
    TResult Function(SentInvitationsReceived value)? sentInvitationsReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (sentInvitationsReceived != null) {
      return sentInvitationsReceived(this);
    }
    return orElse();
  }
}

abstract class SentInvitationsReceived implements InvitationsEvent {
  const factory SentInvitationsReceived(
          {required KtList<GameInvitation> invitations}) =
      _$SentInvitationsReceived;

  KtList<GameInvitation> get invitations => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SentInvitationsReceivedCopyWith<SentInvitationsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureReceivedCopyWith<$Res> {
  factory $FailureReceivedCopyWith(
          FailureReceived value, $Res Function(FailureReceived) then) =
      _$FailureReceivedCopyWithImpl<$Res>;
  $Res call({GameInvitationFailure failure});

  $GameInvitationFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$FailureReceivedCopyWithImpl<$Res>
    extends _$InvitationsEventCopyWithImpl<$Res>
    implements $FailureReceivedCopyWith<$Res> {
  _$FailureReceivedCopyWithImpl(
      FailureReceived _value, $Res Function(FailureReceived) _then)
      : super(_value, (v) => _then(v as FailureReceived));

  @override
  FailureReceived get _value => super._value as FailureReceived;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(FailureReceived(
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as GameInvitationFailure,
    ));
  }

  @override
  $GameInvitationFailureCopyWith<$Res> get failure {
    return $GameInvitationFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$FailureReceived implements FailureReceived {
  const _$FailureReceived({required this.failure});

  @override
  final GameInvitationFailure failure;

  @override
  String toString() {
    return 'InvitationsEvent.failureReceived(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FailureReceived &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  $FailureReceivedCopyWith<FailureReceived> get copyWith =>
      _$FailureReceivedCopyWithImpl<FailureReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(KtList<GameInvitation> invitations)
        receivedInvitationsReceived,
    required TResult Function(KtList<GameInvitation> invitations)
        sentInvitationsReceived,
    required TResult Function(GameInvitationFailure failure) failureReceived,
  }) {
    return failureReceived(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(KtList<GameInvitation> invitations)?
        receivedInvitationsReceived,
    TResult Function(KtList<GameInvitation> invitations)?
        sentInvitationsReceived,
    TResult Function(GameInvitationFailure failure)? failureReceived,
    required TResult orElse(),
  }) {
    if (failureReceived != null) {
      return failureReceived(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(ReceivedInvitationsReceived value)
        receivedInvitationsReceived,
    required TResult Function(SentInvitationsReceived value)
        sentInvitationsReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return failureReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(ReceivedInvitationsReceived value)?
        receivedInvitationsReceived,
    TResult Function(SentInvitationsReceived value)? sentInvitationsReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (failureReceived != null) {
      return failureReceived(this);
    }
    return orElse();
  }
}

abstract class FailureReceived implements InvitationsEvent {
  const factory FailureReceived({required GameInvitationFailure failure}) =
      _$FailureReceived;

  GameInvitationFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FailureReceivedCopyWith<FailureReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$InvitationsStateTearOff {
  const _$InvitationsStateTearOff();

  InvitationsLoadInProgress loadInProgress(
      {KtList<GameInvitation>? receivedInvitations,
      KtList<GameInvitation>? sentInvitations}) {
    return InvitationsLoadInProgress(
      receivedInvitations: receivedInvitations,
      sentInvitations: sentInvitations,
    );
  }

  InvitationsLoadSuccess loadSuccess(
      {required KtList<GameInvitation> receivedInvitations,
      required KtList<GameInvitation> sentInvitations,
      required int unreadInvitations}) {
    return InvitationsLoadSuccess(
      receivedInvitations: receivedInvitations,
      sentInvitations: sentInvitations,
      unreadInvitations: unreadInvitations,
    );
  }

  InvitationsLoadFailure loadFailure({required GameInvitationFailure failure}) {
    return InvitationsLoadFailure(
      failure: failure,
    );
  }
}

/// @nodoc
const $InvitationsState = _$InvitationsStateTearOff();

/// @nodoc
mixin _$InvitationsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KtList<GameInvitation>? receivedInvitations,
            KtList<GameInvitation>? sentInvitations)
        loadInProgress,
    required TResult Function(KtList<GameInvitation> receivedInvitations,
            KtList<GameInvitation> sentInvitations, int unreadInvitations)
        loadSuccess,
    required TResult Function(GameInvitationFailure failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<GameInvitation>? receivedInvitations,
            KtList<GameInvitation>? sentInvitations)?
        loadInProgress,
    TResult Function(KtList<GameInvitation> receivedInvitations,
            KtList<GameInvitation> sentInvitations, int unreadInvitations)?
        loadSuccess,
    TResult Function(GameInvitationFailure failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvitationsLoadInProgress value) loadInProgress,
    required TResult Function(InvitationsLoadSuccess value) loadSuccess,
    required TResult Function(InvitationsLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvitationsLoadInProgress value)? loadInProgress,
    TResult Function(InvitationsLoadSuccess value)? loadSuccess,
    TResult Function(InvitationsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvitationsStateCopyWith<$Res> {
  factory $InvitationsStateCopyWith(
          InvitationsState value, $Res Function(InvitationsState) then) =
      _$InvitationsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvitationsStateCopyWithImpl<$Res>
    implements $InvitationsStateCopyWith<$Res> {
  _$InvitationsStateCopyWithImpl(this._value, this._then);

  final InvitationsState _value;
  // ignore: unused_field
  final $Res Function(InvitationsState) _then;
}

/// @nodoc
abstract class $InvitationsLoadInProgressCopyWith<$Res> {
  factory $InvitationsLoadInProgressCopyWith(InvitationsLoadInProgress value,
          $Res Function(InvitationsLoadInProgress) then) =
      _$InvitationsLoadInProgressCopyWithImpl<$Res>;
  $Res call(
      {KtList<GameInvitation>? receivedInvitations,
      KtList<GameInvitation>? sentInvitations});
}

/// @nodoc
class _$InvitationsLoadInProgressCopyWithImpl<$Res>
    extends _$InvitationsStateCopyWithImpl<$Res>
    implements $InvitationsLoadInProgressCopyWith<$Res> {
  _$InvitationsLoadInProgressCopyWithImpl(InvitationsLoadInProgress _value,
      $Res Function(InvitationsLoadInProgress) _then)
      : super(_value, (v) => _then(v as InvitationsLoadInProgress));

  @override
  InvitationsLoadInProgress get _value =>
      super._value as InvitationsLoadInProgress;

  @override
  $Res call({
    Object? receivedInvitations = freezed,
    Object? sentInvitations = freezed,
  }) {
    return _then(InvitationsLoadInProgress(
      receivedInvitations: receivedInvitations == freezed
          ? _value.receivedInvitations
          : receivedInvitations // ignore: cast_nullable_to_non_nullable
              as KtList<GameInvitation>?,
      sentInvitations: sentInvitations == freezed
          ? _value.sentInvitations
          : sentInvitations // ignore: cast_nullable_to_non_nullable
              as KtList<GameInvitation>?,
    ));
  }
}

/// @nodoc

class _$InvitationsLoadInProgress implements InvitationsLoadInProgress {
  const _$InvitationsLoadInProgress(
      {this.receivedInvitations, this.sentInvitations});

  @override
  final KtList<GameInvitation>? receivedInvitations;
  @override
  final KtList<GameInvitation>? sentInvitations;

  @override
  String toString() {
    return 'InvitationsState.loadInProgress(receivedInvitations: $receivedInvitations, sentInvitations: $sentInvitations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvitationsLoadInProgress &&
            (identical(other.receivedInvitations, receivedInvitations) ||
                const DeepCollectionEquality()
                    .equals(other.receivedInvitations, receivedInvitations)) &&
            (identical(other.sentInvitations, sentInvitations) ||
                const DeepCollectionEquality()
                    .equals(other.sentInvitations, sentInvitations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(receivedInvitations) ^
      const DeepCollectionEquality().hash(sentInvitations);

  @JsonKey(ignore: true)
  @override
  $InvitationsLoadInProgressCopyWith<InvitationsLoadInProgress> get copyWith =>
      _$InvitationsLoadInProgressCopyWithImpl<InvitationsLoadInProgress>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KtList<GameInvitation>? receivedInvitations,
            KtList<GameInvitation>? sentInvitations)
        loadInProgress,
    required TResult Function(KtList<GameInvitation> receivedInvitations,
            KtList<GameInvitation> sentInvitations, int unreadInvitations)
        loadSuccess,
    required TResult Function(GameInvitationFailure failure) loadFailure,
  }) {
    return loadInProgress(receivedInvitations, sentInvitations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<GameInvitation>? receivedInvitations,
            KtList<GameInvitation>? sentInvitations)?
        loadInProgress,
    TResult Function(KtList<GameInvitation> receivedInvitations,
            KtList<GameInvitation> sentInvitations, int unreadInvitations)?
        loadSuccess,
    TResult Function(GameInvitationFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(receivedInvitations, sentInvitations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvitationsLoadInProgress value) loadInProgress,
    required TResult Function(InvitationsLoadSuccess value) loadSuccess,
    required TResult Function(InvitationsLoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvitationsLoadInProgress value)? loadInProgress,
    TResult Function(InvitationsLoadSuccess value)? loadSuccess,
    TResult Function(InvitationsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class InvitationsLoadInProgress implements InvitationsState {
  const factory InvitationsLoadInProgress(
      {KtList<GameInvitation>? receivedInvitations,
      KtList<GameInvitation>? sentInvitations}) = _$InvitationsLoadInProgress;

  KtList<GameInvitation>? get receivedInvitations =>
      throw _privateConstructorUsedError;
  KtList<GameInvitation>? get sentInvitations =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvitationsLoadInProgressCopyWith<InvitationsLoadInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvitationsLoadSuccessCopyWith<$Res> {
  factory $InvitationsLoadSuccessCopyWith(InvitationsLoadSuccess value,
          $Res Function(InvitationsLoadSuccess) then) =
      _$InvitationsLoadSuccessCopyWithImpl<$Res>;
  $Res call(
      {KtList<GameInvitation> receivedInvitations,
      KtList<GameInvitation> sentInvitations,
      int unreadInvitations});
}

/// @nodoc
class _$InvitationsLoadSuccessCopyWithImpl<$Res>
    extends _$InvitationsStateCopyWithImpl<$Res>
    implements $InvitationsLoadSuccessCopyWith<$Res> {
  _$InvitationsLoadSuccessCopyWithImpl(InvitationsLoadSuccess _value,
      $Res Function(InvitationsLoadSuccess) _then)
      : super(_value, (v) => _then(v as InvitationsLoadSuccess));

  @override
  InvitationsLoadSuccess get _value => super._value as InvitationsLoadSuccess;

  @override
  $Res call({
    Object? receivedInvitations = freezed,
    Object? sentInvitations = freezed,
    Object? unreadInvitations = freezed,
  }) {
    return _then(InvitationsLoadSuccess(
      receivedInvitations: receivedInvitations == freezed
          ? _value.receivedInvitations
          : receivedInvitations // ignore: cast_nullable_to_non_nullable
              as KtList<GameInvitation>,
      sentInvitations: sentInvitations == freezed
          ? _value.sentInvitations
          : sentInvitations // ignore: cast_nullable_to_non_nullable
              as KtList<GameInvitation>,
      unreadInvitations: unreadInvitations == freezed
          ? _value.unreadInvitations
          : unreadInvitations // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InvitationsLoadSuccess implements InvitationsLoadSuccess {
  const _$InvitationsLoadSuccess(
      {required this.receivedInvitations,
      required this.sentInvitations,
      required this.unreadInvitations});

  @override
  final KtList<GameInvitation> receivedInvitations;
  @override
  final KtList<GameInvitation> sentInvitations;
  @override
  final int unreadInvitations;

  @override
  String toString() {
    return 'InvitationsState.loadSuccess(receivedInvitations: $receivedInvitations, sentInvitations: $sentInvitations, unreadInvitations: $unreadInvitations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvitationsLoadSuccess &&
            (identical(other.receivedInvitations, receivedInvitations) ||
                const DeepCollectionEquality()
                    .equals(other.receivedInvitations, receivedInvitations)) &&
            (identical(other.sentInvitations, sentInvitations) ||
                const DeepCollectionEquality()
                    .equals(other.sentInvitations, sentInvitations)) &&
            (identical(other.unreadInvitations, unreadInvitations) ||
                const DeepCollectionEquality()
                    .equals(other.unreadInvitations, unreadInvitations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(receivedInvitations) ^
      const DeepCollectionEquality().hash(sentInvitations) ^
      const DeepCollectionEquality().hash(unreadInvitations);

  @JsonKey(ignore: true)
  @override
  $InvitationsLoadSuccessCopyWith<InvitationsLoadSuccess> get copyWith =>
      _$InvitationsLoadSuccessCopyWithImpl<InvitationsLoadSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KtList<GameInvitation>? receivedInvitations,
            KtList<GameInvitation>? sentInvitations)
        loadInProgress,
    required TResult Function(KtList<GameInvitation> receivedInvitations,
            KtList<GameInvitation> sentInvitations, int unreadInvitations)
        loadSuccess,
    required TResult Function(GameInvitationFailure failure) loadFailure,
  }) {
    return loadSuccess(receivedInvitations, sentInvitations, unreadInvitations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<GameInvitation>? receivedInvitations,
            KtList<GameInvitation>? sentInvitations)?
        loadInProgress,
    TResult Function(KtList<GameInvitation> receivedInvitations,
            KtList<GameInvitation> sentInvitations, int unreadInvitations)?
        loadSuccess,
    TResult Function(GameInvitationFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(
          receivedInvitations, sentInvitations, unreadInvitations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvitationsLoadInProgress value) loadInProgress,
    required TResult Function(InvitationsLoadSuccess value) loadSuccess,
    required TResult Function(InvitationsLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvitationsLoadInProgress value)? loadInProgress,
    TResult Function(InvitationsLoadSuccess value)? loadSuccess,
    TResult Function(InvitationsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class InvitationsLoadSuccess implements InvitationsState {
  const factory InvitationsLoadSuccess(
      {required KtList<GameInvitation> receivedInvitations,
      required KtList<GameInvitation> sentInvitations,
      required int unreadInvitations}) = _$InvitationsLoadSuccess;

  KtList<GameInvitation> get receivedInvitations =>
      throw _privateConstructorUsedError;
  KtList<GameInvitation> get sentInvitations =>
      throw _privateConstructorUsedError;
  int get unreadInvitations => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvitationsLoadSuccessCopyWith<InvitationsLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvitationsLoadFailureCopyWith<$Res> {
  factory $InvitationsLoadFailureCopyWith(InvitationsLoadFailure value,
          $Res Function(InvitationsLoadFailure) then) =
      _$InvitationsLoadFailureCopyWithImpl<$Res>;
  $Res call({GameInvitationFailure failure});

  $GameInvitationFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$InvitationsLoadFailureCopyWithImpl<$Res>
    extends _$InvitationsStateCopyWithImpl<$Res>
    implements $InvitationsLoadFailureCopyWith<$Res> {
  _$InvitationsLoadFailureCopyWithImpl(InvitationsLoadFailure _value,
      $Res Function(InvitationsLoadFailure) _then)
      : super(_value, (v) => _then(v as InvitationsLoadFailure));

  @override
  InvitationsLoadFailure get _value => super._value as InvitationsLoadFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(InvitationsLoadFailure(
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as GameInvitationFailure,
    ));
  }

  @override
  $GameInvitationFailureCopyWith<$Res> get failure {
    return $GameInvitationFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$InvitationsLoadFailure implements InvitationsLoadFailure {
  const _$InvitationsLoadFailure({required this.failure});

  @override
  final GameInvitationFailure failure;

  @override
  String toString() {
    return 'InvitationsState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvitationsLoadFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  $InvitationsLoadFailureCopyWith<InvitationsLoadFailure> get copyWith =>
      _$InvitationsLoadFailureCopyWithImpl<InvitationsLoadFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KtList<GameInvitation>? receivedInvitations,
            KtList<GameInvitation>? sentInvitations)
        loadInProgress,
    required TResult Function(KtList<GameInvitation> receivedInvitations,
            KtList<GameInvitation> sentInvitations, int unreadInvitations)
        loadSuccess,
    required TResult Function(GameInvitationFailure failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<GameInvitation>? receivedInvitations,
            KtList<GameInvitation>? sentInvitations)?
        loadInProgress,
    TResult Function(KtList<GameInvitation> receivedInvitations,
            KtList<GameInvitation> sentInvitations, int unreadInvitations)?
        loadSuccess,
    TResult Function(GameInvitationFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvitationsLoadInProgress value) loadInProgress,
    required TResult Function(InvitationsLoadSuccess value) loadSuccess,
    required TResult Function(InvitationsLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvitationsLoadInProgress value)? loadInProgress,
    TResult Function(InvitationsLoadSuccess value)? loadSuccess,
    TResult Function(InvitationsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class InvitationsLoadFailure implements InvitationsState {
  const factory InvitationsLoadFailure(
      {required GameInvitationFailure failure}) = _$InvitationsLoadFailure;

  GameInvitationFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvitationsLoadFailureCopyWith<InvitationsLoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
