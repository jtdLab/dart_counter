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

  UnreadInvitationsReceived unreadInvitationsReceived(
      {required int unreadInvitations}) {
    return UnreadInvitationsReceived(
      unreadInvitations: unreadInvitations,
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
    required TResult Function(int unreadInvitations) unreadInvitationsReceived,
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
    TResult Function(int unreadInvitations)? unreadInvitationsReceived,
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
    required TResult Function(UnreadInvitationsReceived value)
        unreadInvitationsReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(ReceivedInvitationsReceived value)?
        receivedInvitationsReceived,
    TResult Function(SentInvitationsReceived value)? sentInvitationsReceived,
    TResult Function(UnreadInvitationsReceived value)?
        unreadInvitationsReceived,
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
    required TResult Function(int unreadInvitations) unreadInvitationsReceived,
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
    TResult Function(int unreadInvitations)? unreadInvitationsReceived,
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
    required TResult Function(UnreadInvitationsReceived value)
        unreadInvitationsReceived,
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
    TResult Function(UnreadInvitationsReceived value)?
        unreadInvitationsReceived,
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
    required TResult Function(int unreadInvitations) unreadInvitationsReceived,
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
    TResult Function(int unreadInvitations)? unreadInvitationsReceived,
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
    required TResult Function(UnreadInvitationsReceived value)
        unreadInvitationsReceived,
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
    TResult Function(UnreadInvitationsReceived value)?
        unreadInvitationsReceived,
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
    required TResult Function(int unreadInvitations) unreadInvitationsReceived,
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
    TResult Function(int unreadInvitations)? unreadInvitationsReceived,
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
    required TResult Function(UnreadInvitationsReceived value)
        unreadInvitationsReceived,
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
    TResult Function(UnreadInvitationsReceived value)?
        unreadInvitationsReceived,
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
abstract class $UnreadInvitationsReceivedCopyWith<$Res> {
  factory $UnreadInvitationsReceivedCopyWith(UnreadInvitationsReceived value,
          $Res Function(UnreadInvitationsReceived) then) =
      _$UnreadInvitationsReceivedCopyWithImpl<$Res>;
  $Res call({int unreadInvitations});
}

/// @nodoc
class _$UnreadInvitationsReceivedCopyWithImpl<$Res>
    extends _$InvitationsEventCopyWithImpl<$Res>
    implements $UnreadInvitationsReceivedCopyWith<$Res> {
  _$UnreadInvitationsReceivedCopyWithImpl(UnreadInvitationsReceived _value,
      $Res Function(UnreadInvitationsReceived) _then)
      : super(_value, (v) => _then(v as UnreadInvitationsReceived));

  @override
  UnreadInvitationsReceived get _value =>
      super._value as UnreadInvitationsReceived;

  @override
  $Res call({
    Object? unreadInvitations = freezed,
  }) {
    return _then(UnreadInvitationsReceived(
      unreadInvitations: unreadInvitations == freezed
          ? _value.unreadInvitations
          : unreadInvitations // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UnreadInvitationsReceived implements UnreadInvitationsReceived {
  const _$UnreadInvitationsReceived({required this.unreadInvitations});

  @override
  final int unreadInvitations;

  @override
  String toString() {
    return 'InvitationsEvent.unreadInvitationsReceived(unreadInvitations: $unreadInvitations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnreadInvitationsReceived &&
            (identical(other.unreadInvitations, unreadInvitations) ||
                const DeepCollectionEquality()
                    .equals(other.unreadInvitations, unreadInvitations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(unreadInvitations);

  @JsonKey(ignore: true)
  @override
  $UnreadInvitationsReceivedCopyWith<UnreadInvitationsReceived> get copyWith =>
      _$UnreadInvitationsReceivedCopyWithImpl<UnreadInvitationsReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(KtList<GameInvitation> invitations)
        receivedInvitationsReceived,
    required TResult Function(KtList<GameInvitation> invitations)
        sentInvitationsReceived,
    required TResult Function(int unreadInvitations) unreadInvitationsReceived,
    required TResult Function(GameInvitationFailure failure) failureReceived,
  }) {
    return unreadInvitationsReceived(unreadInvitations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(KtList<GameInvitation> invitations)?
        receivedInvitationsReceived,
    TResult Function(KtList<GameInvitation> invitations)?
        sentInvitationsReceived,
    TResult Function(int unreadInvitations)? unreadInvitationsReceived,
    TResult Function(GameInvitationFailure failure)? failureReceived,
    required TResult orElse(),
  }) {
    if (unreadInvitationsReceived != null) {
      return unreadInvitationsReceived(unreadInvitations);
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
    required TResult Function(UnreadInvitationsReceived value)
        unreadInvitationsReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return unreadInvitationsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(ReceivedInvitationsReceived value)?
        receivedInvitationsReceived,
    TResult Function(SentInvitationsReceived value)? sentInvitationsReceived,
    TResult Function(UnreadInvitationsReceived value)?
        unreadInvitationsReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (unreadInvitationsReceived != null) {
      return unreadInvitationsReceived(this);
    }
    return orElse();
  }
}

abstract class UnreadInvitationsReceived implements InvitationsEvent {
  const factory UnreadInvitationsReceived({required int unreadInvitations}) =
      _$UnreadInvitationsReceived;

  int get unreadInvitations => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnreadInvitationsReceivedCopyWith<UnreadInvitationsReceived> get copyWith =>
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
    required TResult Function(int unreadInvitations) unreadInvitationsReceived,
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
    TResult Function(int unreadInvitations)? unreadInvitationsReceived,
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
    required TResult Function(UnreadInvitationsReceived value)
        unreadInvitationsReceived,
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
    TResult Function(UnreadInvitationsReceived value)?
        unreadInvitationsReceived,
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

  Loading loading(
      {KtList<GameInvitation>? receivedInvitations,
      KtList<GameInvitation>? sentInvitations,
      int? unreadInvitations}) {
    return Loading(
      receivedInvitations: receivedInvitations,
      sentInvitations: sentInvitations,
      unreadInvitations: unreadInvitations,
    );
  }

  Success success(
      {required KtList<GameInvitation> receivedInvitations,
      required KtList<GameInvitation> sentInvitations,
      required int unreadInvitations}) {
    return Success(
      receivedInvitations: receivedInvitations,
      sentInvitations: sentInvitations,
      unreadInvitations: unreadInvitations,
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
            KtList<GameInvitation>? sentInvitations, int? unreadInvitations)
        loading,
    required TResult Function(KtList<GameInvitation> receivedInvitations,
            KtList<GameInvitation> sentInvitations, int unreadInvitations)
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<GameInvitation>? receivedInvitations,
            KtList<GameInvitation>? sentInvitations, int? unreadInvitations)?
        loading,
    TResult Function(KtList<GameInvitation> receivedInvitations,
            KtList<GameInvitation> sentInvitations, int unreadInvitations)?
        success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
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
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
  $Res call(
      {KtList<GameInvitation>? receivedInvitations,
      KtList<GameInvitation>? sentInvitations,
      int? unreadInvitations});
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$InvitationsStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;

  @override
  $Res call({
    Object? receivedInvitations = freezed,
    Object? sentInvitations = freezed,
    Object? unreadInvitations = freezed,
  }) {
    return _then(Loading(
      receivedInvitations: receivedInvitations == freezed
          ? _value.receivedInvitations
          : receivedInvitations // ignore: cast_nullable_to_non_nullable
              as KtList<GameInvitation>?,
      sentInvitations: sentInvitations == freezed
          ? _value.sentInvitations
          : sentInvitations // ignore: cast_nullable_to_non_nullable
              as KtList<GameInvitation>?,
      unreadInvitations: unreadInvitations == freezed
          ? _value.unreadInvitations
          : unreadInvitations // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading(
      {this.receivedInvitations, this.sentInvitations, this.unreadInvitations});

  @override
  final KtList<GameInvitation>? receivedInvitations;
  @override
  final KtList<GameInvitation>? sentInvitations;
  @override
  final int? unreadInvitations;

  @override
  String toString() {
    return 'InvitationsState.loading(receivedInvitations: $receivedInvitations, sentInvitations: $sentInvitations, unreadInvitations: $unreadInvitations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loading &&
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
  $LoadingCopyWith<Loading> get copyWith =>
      _$LoadingCopyWithImpl<Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KtList<GameInvitation>? receivedInvitations,
            KtList<GameInvitation>? sentInvitations, int? unreadInvitations)
        loading,
    required TResult Function(KtList<GameInvitation> receivedInvitations,
            KtList<GameInvitation> sentInvitations, int unreadInvitations)
        success,
  }) {
    return loading(receivedInvitations, sentInvitations, unreadInvitations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<GameInvitation>? receivedInvitations,
            KtList<GameInvitation>? sentInvitations, int? unreadInvitations)?
        loading,
    TResult Function(KtList<GameInvitation> receivedInvitations,
            KtList<GameInvitation> sentInvitations, int unreadInvitations)?
        success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(receivedInvitations, sentInvitations, unreadInvitations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements InvitationsState {
  const factory Loading(
      {KtList<GameInvitation>? receivedInvitations,
      KtList<GameInvitation>? sentInvitations,
      int? unreadInvitations}) = _$Loading;

  KtList<GameInvitation>? get receivedInvitations =>
      throw _privateConstructorUsedError;
  KtList<GameInvitation>? get sentInvitations =>
      throw _privateConstructorUsedError;
  int? get unreadInvitations => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadingCopyWith<Loading> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) then) =
      _$SuccessCopyWithImpl<$Res>;
  $Res call(
      {KtList<GameInvitation> receivedInvitations,
      KtList<GameInvitation> sentInvitations,
      int unreadInvitations});
}

/// @nodoc
class _$SuccessCopyWithImpl<$Res> extends _$InvitationsStateCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(Success _value, $Res Function(Success) _then)
      : super(_value, (v) => _then(v as Success));

  @override
  Success get _value => super._value as Success;

  @override
  $Res call({
    Object? receivedInvitations = freezed,
    Object? sentInvitations = freezed,
    Object? unreadInvitations = freezed,
  }) {
    return _then(Success(
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

class _$Success implements Success {
  const _$Success(
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
    return 'InvitationsState.success(receivedInvitations: $receivedInvitations, sentInvitations: $sentInvitations, unreadInvitations: $unreadInvitations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Success &&
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
  $SuccessCopyWith<Success> get copyWith =>
      _$SuccessCopyWithImpl<Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KtList<GameInvitation>? receivedInvitations,
            KtList<GameInvitation>? sentInvitations, int? unreadInvitations)
        loading,
    required TResult Function(KtList<GameInvitation> receivedInvitations,
            KtList<GameInvitation> sentInvitations, int unreadInvitations)
        success,
  }) {
    return success(receivedInvitations, sentInvitations, unreadInvitations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<GameInvitation>? receivedInvitations,
            KtList<GameInvitation>? sentInvitations, int? unreadInvitations)?
        loading,
    TResult Function(KtList<GameInvitation> receivedInvitations,
            KtList<GameInvitation> sentInvitations, int unreadInvitations)?
        success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(receivedInvitations, sentInvitations, unreadInvitations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements InvitationsState {
  const factory Success(
      {required KtList<GameInvitation> receivedInvitations,
      required KtList<GameInvitation> sentInvitations,
      required int unreadInvitations}) = _$Success;

  KtList<GameInvitation> get receivedInvitations =>
      throw _privateConstructorUsedError;
  KtList<GameInvitation> get sentInvitations =>
      throw _privateConstructorUsedError;
  int get unreadInvitations => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuccessCopyWith<Success> get copyWith => throw _privateConstructorUsedError;
}
