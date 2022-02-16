// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_invitations_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GameInvitationsStateTearOff {
  const _$GameInvitationsStateTearOff();

  GameInvitationsLoadInProgress loadInProgress() {
    return const GameInvitationsLoadInProgress();
  }

  GameInvitationsLoadSuccess loadSuccess(
      {required KtList<GameInvitation> receivedGameInvitations,
      required KtList<GameInvitation> sentGameInvitations}) {
    return GameInvitationsLoadSuccess(
      receivedGameInvitations: receivedGameInvitations,
      sentGameInvitations: sentGameInvitations,
    );
  }

  GameInvitationsLoadFailure loadFailure(
      {required GameInvitationFailure failure}) {
    return GameInvitationsLoadFailure(
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
    required TResult Function() loadInProgress,
    required TResult Function(KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations)
        loadSuccess,
    required TResult Function(GameInvitationFailure failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations)?
        loadSuccess,
    TResult Function(GameInvitationFailure failure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations)?
        loadSuccess,
    TResult Function(GameInvitationFailure failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameInvitationsLoadInProgress value)
        loadInProgress,
    required TResult Function(GameInvitationsLoadSuccess value) loadSuccess,
    required TResult Function(GameInvitationsLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameInvitationsLoadInProgress value)? loadInProgress,
    TResult Function(GameInvitationsLoadSuccess value)? loadSuccess,
    TResult Function(GameInvitationsLoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameInvitationsLoadInProgress value)? loadInProgress,
    TResult Function(GameInvitationsLoadSuccess value)? loadSuccess,
    TResult Function(GameInvitationsLoadFailure value)? loadFailure,
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

class _$GameInvitationsLoadInProgress extends GameInvitationsLoadInProgress {
  const _$GameInvitationsLoadInProgress() : super._();

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
    required TResult Function() loadInProgress,
    required TResult Function(KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations)
        loadSuccess,
    required TResult Function(GameInvitationFailure failure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations)?
        loadSuccess,
    TResult Function(GameInvitationFailure failure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations)?
        loadSuccess,
    TResult Function(GameInvitationFailure failure)? loadFailure,
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
    required TResult Function(GameInvitationsLoadInProgress value)
        loadInProgress,
    required TResult Function(GameInvitationsLoadSuccess value) loadSuccess,
    required TResult Function(GameInvitationsLoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameInvitationsLoadInProgress value)? loadInProgress,
    TResult Function(GameInvitationsLoadSuccess value)? loadSuccess,
    TResult Function(GameInvitationsLoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameInvitationsLoadInProgress value)? loadInProgress,
    TResult Function(GameInvitationsLoadSuccess value)? loadSuccess,
    TResult Function(GameInvitationsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class GameInvitationsLoadInProgress extends GameInvitationsState {
  const factory GameInvitationsLoadInProgress() =
      _$GameInvitationsLoadInProgress;
  const GameInvitationsLoadInProgress._() : super._();
}

/// @nodoc
abstract class $GameInvitationsLoadSuccessCopyWith<$Res> {
  factory $GameInvitationsLoadSuccessCopyWith(GameInvitationsLoadSuccess value,
          $Res Function(GameInvitationsLoadSuccess) then) =
      _$GameInvitationsLoadSuccessCopyWithImpl<$Res>;
  $Res call(
      {KtList<GameInvitation> receivedGameInvitations,
      KtList<GameInvitation> sentGameInvitations});
}

/// @nodoc
class _$GameInvitationsLoadSuccessCopyWithImpl<$Res>
    extends _$GameInvitationsStateCopyWithImpl<$Res>
    implements $GameInvitationsLoadSuccessCopyWith<$Res> {
  _$GameInvitationsLoadSuccessCopyWithImpl(GameInvitationsLoadSuccess _value,
      $Res Function(GameInvitationsLoadSuccess) _then)
      : super(_value, (v) => _then(v as GameInvitationsLoadSuccess));

  @override
  GameInvitationsLoadSuccess get _value =>
      super._value as GameInvitationsLoadSuccess;

  @override
  $Res call({
    Object? receivedGameInvitations = freezed,
    Object? sentGameInvitations = freezed,
  }) {
    return _then(GameInvitationsLoadSuccess(
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

class _$GameInvitationsLoadSuccess extends GameInvitationsLoadSuccess {
  const _$GameInvitationsLoadSuccess(
      {required this.receivedGameInvitations,
      required this.sentGameInvitations})
      : super._();

  @override
  final KtList<GameInvitation> receivedGameInvitations;
  @override
  final KtList<GameInvitation> sentGameInvitations;

  @override
  String toString() {
    return 'GameInvitationsState.loadSuccess(receivedGameInvitations: $receivedGameInvitations, sentGameInvitations: $sentGameInvitations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GameInvitationsLoadSuccess &&
            const DeepCollectionEquality().equals(
                other.receivedGameInvitations, receivedGameInvitations) &&
            const DeepCollectionEquality()
                .equals(other.sentGameInvitations, sentGameInvitations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(receivedGameInvitations),
      const DeepCollectionEquality().hash(sentGameInvitations));

  @JsonKey(ignore: true)
  @override
  $GameInvitationsLoadSuccessCopyWith<GameInvitationsLoadSuccess>
      get copyWith =>
          _$GameInvitationsLoadSuccessCopyWithImpl<GameInvitationsLoadSuccess>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations)
        loadSuccess,
    required TResult Function(GameInvitationFailure failure) loadFailure,
  }) {
    return loadSuccess(receivedGameInvitations, sentGameInvitations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations)?
        loadSuccess,
    TResult Function(GameInvitationFailure failure)? loadFailure,
  }) {
    return loadSuccess?.call(receivedGameInvitations, sentGameInvitations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations)?
        loadSuccess,
    TResult Function(GameInvitationFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(receivedGameInvitations, sentGameInvitations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameInvitationsLoadInProgress value)
        loadInProgress,
    required TResult Function(GameInvitationsLoadSuccess value) loadSuccess,
    required TResult Function(GameInvitationsLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameInvitationsLoadInProgress value)? loadInProgress,
    TResult Function(GameInvitationsLoadSuccess value)? loadSuccess,
    TResult Function(GameInvitationsLoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameInvitationsLoadInProgress value)? loadInProgress,
    TResult Function(GameInvitationsLoadSuccess value)? loadSuccess,
    TResult Function(GameInvitationsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class GameInvitationsLoadSuccess extends GameInvitationsState {
  const factory GameInvitationsLoadSuccess(
          {required KtList<GameInvitation> receivedGameInvitations,
          required KtList<GameInvitation> sentGameInvitations}) =
      _$GameInvitationsLoadSuccess;
  const GameInvitationsLoadSuccess._() : super._();

  KtList<GameInvitation> get receivedGameInvitations;
  KtList<GameInvitation> get sentGameInvitations;
  @JsonKey(ignore: true)
  $GameInvitationsLoadSuccessCopyWith<GameInvitationsLoadSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameInvitationsLoadFailureCopyWith<$Res> {
  factory $GameInvitationsLoadFailureCopyWith(GameInvitationsLoadFailure value,
          $Res Function(GameInvitationsLoadFailure) then) =
      _$GameInvitationsLoadFailureCopyWithImpl<$Res>;
  $Res call({GameInvitationFailure failure});

  $GameInvitationFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$GameInvitationsLoadFailureCopyWithImpl<$Res>
    extends _$GameInvitationsStateCopyWithImpl<$Res>
    implements $GameInvitationsLoadFailureCopyWith<$Res> {
  _$GameInvitationsLoadFailureCopyWithImpl(GameInvitationsLoadFailure _value,
      $Res Function(GameInvitationsLoadFailure) _then)
      : super(_value, (v) => _then(v as GameInvitationsLoadFailure));

  @override
  GameInvitationsLoadFailure get _value =>
      super._value as GameInvitationsLoadFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(GameInvitationsLoadFailure(
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

class _$GameInvitationsLoadFailure extends GameInvitationsLoadFailure {
  const _$GameInvitationsLoadFailure({required this.failure}) : super._();

  @override
  final GameInvitationFailure failure;

  @override
  String toString() {
    return 'GameInvitationsState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GameInvitationsLoadFailure &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  $GameInvitationsLoadFailureCopyWith<GameInvitationsLoadFailure>
      get copyWith =>
          _$GameInvitationsLoadFailureCopyWithImpl<GameInvitationsLoadFailure>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations)
        loadSuccess,
    required TResult Function(GameInvitationFailure failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations)?
        loadSuccess,
    TResult Function(GameInvitationFailure failure)? loadFailure,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations)?
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
    required TResult Function(GameInvitationsLoadInProgress value)
        loadInProgress,
    required TResult Function(GameInvitationsLoadSuccess value) loadSuccess,
    required TResult Function(GameInvitationsLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameInvitationsLoadInProgress value)? loadInProgress,
    TResult Function(GameInvitationsLoadSuccess value)? loadSuccess,
    TResult Function(GameInvitationsLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameInvitationsLoadInProgress value)? loadInProgress,
    TResult Function(GameInvitationsLoadSuccess value)? loadSuccess,
    TResult Function(GameInvitationsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class GameInvitationsLoadFailure extends GameInvitationsState {
  const factory GameInvitationsLoadFailure(
      {required GameInvitationFailure failure}) = _$GameInvitationsLoadFailure;
  const GameInvitationsLoadFailure._() : super._();

  GameInvitationFailure get failure;
  @JsonKey(ignore: true)
  $GameInvitationsLoadFailureCopyWith<GameInvitationsLoadFailure>
      get copyWith => throw _privateConstructorUsedError;
}
