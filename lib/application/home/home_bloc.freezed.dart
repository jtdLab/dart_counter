// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  CreateOnlineGamePressed createOnlineGamePressed() {
    return const CreateOnlineGamePressed();
  }

  CreateOfflineGamePressed createOfflineGamePressed() {
    return const CreateOfflineGamePressed();
  }

  DataReceived dataReceived(
      {required User user,
      required int unreadInvitations,
      required int unreadFriendRequests}) {
    return DataReceived(
      user: user,
      unreadInvitations: unreadInvitations,
      unreadFriendRequests: unreadFriendRequests,
    );
  }

  GameReceived gameReceived({required GameSnapshot gameSnapshot}) {
    return GameReceived(
      gameSnapshot: gameSnapshot,
    );
  }

  TrainingGameReceived trainingGameReceived(
      {required TrainingGameSnapshot trainingGameSnapshot}) {
    return TrainingGameReceived(
      trainingGameSnapshot: trainingGameSnapshot,
    );
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createOnlineGamePressed,
    required TResult Function() createOfflineGamePressed,
    required TResult Function(
            User user, int unreadInvitations, int unreadFriendRequests)
        dataReceived,
    required TResult Function(GameSnapshot gameSnapshot) gameReceived,
    required TResult Function(TrainingGameSnapshot trainingGameSnapshot)
        trainingGameReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? createOnlineGamePressed,
    TResult Function()? createOfflineGamePressed,
    TResult Function(
            User user, int unreadInvitations, int unreadFriendRequests)?
        dataReceived,
    TResult Function(GameSnapshot gameSnapshot)? gameReceived,
    TResult Function(TrainingGameSnapshot trainingGameSnapshot)?
        trainingGameReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createOnlineGamePressed,
    TResult Function()? createOfflineGamePressed,
    TResult Function(
            User user, int unreadInvitations, int unreadFriendRequests)?
        dataReceived,
    TResult Function(GameSnapshot gameSnapshot)? gameReceived,
    TResult Function(TrainingGameSnapshot trainingGameSnapshot)?
        trainingGameReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateOnlineGamePressed value)
        createOnlineGamePressed,
    required TResult Function(CreateOfflineGamePressed value)
        createOfflineGamePressed,
    required TResult Function(DataReceived value) dataReceived,
    required TResult Function(GameReceived value) gameReceived,
    required TResult Function(TrainingGameReceived value) trainingGameReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateOnlineGamePressed value)? createOnlineGamePressed,
    TResult Function(CreateOfflineGamePressed value)? createOfflineGamePressed,
    TResult Function(DataReceived value)? dataReceived,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(TrainingGameReceived value)? trainingGameReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateOnlineGamePressed value)? createOnlineGamePressed,
    TResult Function(CreateOfflineGamePressed value)? createOfflineGamePressed,
    TResult Function(DataReceived value)? dataReceived,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(TrainingGameReceived value)? trainingGameReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class $CreateOnlineGamePressedCopyWith<$Res> {
  factory $CreateOnlineGamePressedCopyWith(CreateOnlineGamePressed value,
          $Res Function(CreateOnlineGamePressed) then) =
      _$CreateOnlineGamePressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateOnlineGamePressedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements $CreateOnlineGamePressedCopyWith<$Res> {
  _$CreateOnlineGamePressedCopyWithImpl(CreateOnlineGamePressed _value,
      $Res Function(CreateOnlineGamePressed) _then)
      : super(_value, (v) => _then(v as CreateOnlineGamePressed));

  @override
  CreateOnlineGamePressed get _value => super._value as CreateOnlineGamePressed;
}

/// @nodoc

class _$CreateOnlineGamePressed implements CreateOnlineGamePressed {
  const _$CreateOnlineGamePressed();

  @override
  String toString() {
    return 'HomeEvent.createOnlineGamePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CreateOnlineGamePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createOnlineGamePressed,
    required TResult Function() createOfflineGamePressed,
    required TResult Function(
            User user, int unreadInvitations, int unreadFriendRequests)
        dataReceived,
    required TResult Function(GameSnapshot gameSnapshot) gameReceived,
    required TResult Function(TrainingGameSnapshot trainingGameSnapshot)
        trainingGameReceived,
  }) {
    return createOnlineGamePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? createOnlineGamePressed,
    TResult Function()? createOfflineGamePressed,
    TResult Function(
            User user, int unreadInvitations, int unreadFriendRequests)?
        dataReceived,
    TResult Function(GameSnapshot gameSnapshot)? gameReceived,
    TResult Function(TrainingGameSnapshot trainingGameSnapshot)?
        trainingGameReceived,
  }) {
    return createOnlineGamePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createOnlineGamePressed,
    TResult Function()? createOfflineGamePressed,
    TResult Function(
            User user, int unreadInvitations, int unreadFriendRequests)?
        dataReceived,
    TResult Function(GameSnapshot gameSnapshot)? gameReceived,
    TResult Function(TrainingGameSnapshot trainingGameSnapshot)?
        trainingGameReceived,
    required TResult orElse(),
  }) {
    if (createOnlineGamePressed != null) {
      return createOnlineGamePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateOnlineGamePressed value)
        createOnlineGamePressed,
    required TResult Function(CreateOfflineGamePressed value)
        createOfflineGamePressed,
    required TResult Function(DataReceived value) dataReceived,
    required TResult Function(GameReceived value) gameReceived,
    required TResult Function(TrainingGameReceived value) trainingGameReceived,
  }) {
    return createOnlineGamePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateOnlineGamePressed value)? createOnlineGamePressed,
    TResult Function(CreateOfflineGamePressed value)? createOfflineGamePressed,
    TResult Function(DataReceived value)? dataReceived,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(TrainingGameReceived value)? trainingGameReceived,
  }) {
    return createOnlineGamePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateOnlineGamePressed value)? createOnlineGamePressed,
    TResult Function(CreateOfflineGamePressed value)? createOfflineGamePressed,
    TResult Function(DataReceived value)? dataReceived,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(TrainingGameReceived value)? trainingGameReceived,
    required TResult orElse(),
  }) {
    if (createOnlineGamePressed != null) {
      return createOnlineGamePressed(this);
    }
    return orElse();
  }
}

abstract class CreateOnlineGamePressed implements HomeEvent {
  const factory CreateOnlineGamePressed() = _$CreateOnlineGamePressed;
}

/// @nodoc
abstract class $CreateOfflineGamePressedCopyWith<$Res> {
  factory $CreateOfflineGamePressedCopyWith(CreateOfflineGamePressed value,
          $Res Function(CreateOfflineGamePressed) then) =
      _$CreateOfflineGamePressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateOfflineGamePressedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements $CreateOfflineGamePressedCopyWith<$Res> {
  _$CreateOfflineGamePressedCopyWithImpl(CreateOfflineGamePressed _value,
      $Res Function(CreateOfflineGamePressed) _then)
      : super(_value, (v) => _then(v as CreateOfflineGamePressed));

  @override
  CreateOfflineGamePressed get _value =>
      super._value as CreateOfflineGamePressed;
}

/// @nodoc

class _$CreateOfflineGamePressed implements CreateOfflineGamePressed {
  const _$CreateOfflineGamePressed();

  @override
  String toString() {
    return 'HomeEvent.createOfflineGamePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CreateOfflineGamePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createOnlineGamePressed,
    required TResult Function() createOfflineGamePressed,
    required TResult Function(
            User user, int unreadInvitations, int unreadFriendRequests)
        dataReceived,
    required TResult Function(GameSnapshot gameSnapshot) gameReceived,
    required TResult Function(TrainingGameSnapshot trainingGameSnapshot)
        trainingGameReceived,
  }) {
    return createOfflineGamePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? createOnlineGamePressed,
    TResult Function()? createOfflineGamePressed,
    TResult Function(
            User user, int unreadInvitations, int unreadFriendRequests)?
        dataReceived,
    TResult Function(GameSnapshot gameSnapshot)? gameReceived,
    TResult Function(TrainingGameSnapshot trainingGameSnapshot)?
        trainingGameReceived,
  }) {
    return createOfflineGamePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createOnlineGamePressed,
    TResult Function()? createOfflineGamePressed,
    TResult Function(
            User user, int unreadInvitations, int unreadFriendRequests)?
        dataReceived,
    TResult Function(GameSnapshot gameSnapshot)? gameReceived,
    TResult Function(TrainingGameSnapshot trainingGameSnapshot)?
        trainingGameReceived,
    required TResult orElse(),
  }) {
    if (createOfflineGamePressed != null) {
      return createOfflineGamePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateOnlineGamePressed value)
        createOnlineGamePressed,
    required TResult Function(CreateOfflineGamePressed value)
        createOfflineGamePressed,
    required TResult Function(DataReceived value) dataReceived,
    required TResult Function(GameReceived value) gameReceived,
    required TResult Function(TrainingGameReceived value) trainingGameReceived,
  }) {
    return createOfflineGamePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateOnlineGamePressed value)? createOnlineGamePressed,
    TResult Function(CreateOfflineGamePressed value)? createOfflineGamePressed,
    TResult Function(DataReceived value)? dataReceived,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(TrainingGameReceived value)? trainingGameReceived,
  }) {
    return createOfflineGamePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateOnlineGamePressed value)? createOnlineGamePressed,
    TResult Function(CreateOfflineGamePressed value)? createOfflineGamePressed,
    TResult Function(DataReceived value)? dataReceived,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(TrainingGameReceived value)? trainingGameReceived,
    required TResult orElse(),
  }) {
    if (createOfflineGamePressed != null) {
      return createOfflineGamePressed(this);
    }
    return orElse();
  }
}

abstract class CreateOfflineGamePressed implements HomeEvent {
  const factory CreateOfflineGamePressed() = _$CreateOfflineGamePressed;
}

/// @nodoc
abstract class $DataReceivedCopyWith<$Res> {
  factory $DataReceivedCopyWith(
          DataReceived value, $Res Function(DataReceived) then) =
      _$DataReceivedCopyWithImpl<$Res>;
  $Res call({User user, int unreadInvitations, int unreadFriendRequests});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$DataReceivedCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $DataReceivedCopyWith<$Res> {
  _$DataReceivedCopyWithImpl(
      DataReceived _value, $Res Function(DataReceived) _then)
      : super(_value, (v) => _then(v as DataReceived));

  @override
  DataReceived get _value => super._value as DataReceived;

  @override
  $Res call({
    Object? user = freezed,
    Object? unreadInvitations = freezed,
    Object? unreadFriendRequests = freezed,
  }) {
    return _then(DataReceived(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      unreadInvitations: unreadInvitations == freezed
          ? _value.unreadInvitations
          : unreadInvitations // ignore: cast_nullable_to_non_nullable
              as int,
      unreadFriendRequests: unreadFriendRequests == freezed
          ? _value.unreadFriendRequests
          : unreadFriendRequests // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$DataReceived implements DataReceived {
  const _$DataReceived(
      {required this.user,
      required this.unreadInvitations,
      required this.unreadFriendRequests});

  @override
  final User user;
  @override
  final int unreadInvitations;
  @override
  final int unreadFriendRequests;

  @override
  String toString() {
    return 'HomeEvent.dataReceived(user: $user, unreadInvitations: $unreadInvitations, unreadFriendRequests: $unreadFriendRequests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DataReceived &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.unreadInvitations, unreadInvitations) ||
                const DeepCollectionEquality()
                    .equals(other.unreadInvitations, unreadInvitations)) &&
            (identical(other.unreadFriendRequests, unreadFriendRequests) ||
                const DeepCollectionEquality()
                    .equals(other.unreadFriendRequests, unreadFriendRequests)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(unreadInvitations) ^
      const DeepCollectionEquality().hash(unreadFriendRequests);

  @JsonKey(ignore: true)
  @override
  $DataReceivedCopyWith<DataReceived> get copyWith =>
      _$DataReceivedCopyWithImpl<DataReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createOnlineGamePressed,
    required TResult Function() createOfflineGamePressed,
    required TResult Function(
            User user, int unreadInvitations, int unreadFriendRequests)
        dataReceived,
    required TResult Function(GameSnapshot gameSnapshot) gameReceived,
    required TResult Function(TrainingGameSnapshot trainingGameSnapshot)
        trainingGameReceived,
  }) {
    return dataReceived(user, unreadInvitations, unreadFriendRequests);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? createOnlineGamePressed,
    TResult Function()? createOfflineGamePressed,
    TResult Function(
            User user, int unreadInvitations, int unreadFriendRequests)?
        dataReceived,
    TResult Function(GameSnapshot gameSnapshot)? gameReceived,
    TResult Function(TrainingGameSnapshot trainingGameSnapshot)?
        trainingGameReceived,
  }) {
    return dataReceived?.call(user, unreadInvitations, unreadFriendRequests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createOnlineGamePressed,
    TResult Function()? createOfflineGamePressed,
    TResult Function(
            User user, int unreadInvitations, int unreadFriendRequests)?
        dataReceived,
    TResult Function(GameSnapshot gameSnapshot)? gameReceived,
    TResult Function(TrainingGameSnapshot trainingGameSnapshot)?
        trainingGameReceived,
    required TResult orElse(),
  }) {
    if (dataReceived != null) {
      return dataReceived(user, unreadInvitations, unreadFriendRequests);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateOnlineGamePressed value)
        createOnlineGamePressed,
    required TResult Function(CreateOfflineGamePressed value)
        createOfflineGamePressed,
    required TResult Function(DataReceived value) dataReceived,
    required TResult Function(GameReceived value) gameReceived,
    required TResult Function(TrainingGameReceived value) trainingGameReceived,
  }) {
    return dataReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateOnlineGamePressed value)? createOnlineGamePressed,
    TResult Function(CreateOfflineGamePressed value)? createOfflineGamePressed,
    TResult Function(DataReceived value)? dataReceived,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(TrainingGameReceived value)? trainingGameReceived,
  }) {
    return dataReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateOnlineGamePressed value)? createOnlineGamePressed,
    TResult Function(CreateOfflineGamePressed value)? createOfflineGamePressed,
    TResult Function(DataReceived value)? dataReceived,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(TrainingGameReceived value)? trainingGameReceived,
    required TResult orElse(),
  }) {
    if (dataReceived != null) {
      return dataReceived(this);
    }
    return orElse();
  }
}

abstract class DataReceived implements HomeEvent {
  const factory DataReceived(
      {required User user,
      required int unreadInvitations,
      required int unreadFriendRequests}) = _$DataReceived;

  User get user => throw _privateConstructorUsedError;
  int get unreadInvitations => throw _privateConstructorUsedError;
  int get unreadFriendRequests => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataReceivedCopyWith<DataReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameReceivedCopyWith<$Res> {
  factory $GameReceivedCopyWith(
          GameReceived value, $Res Function(GameReceived) then) =
      _$GameReceivedCopyWithImpl<$Res>;
  $Res call({GameSnapshot gameSnapshot});
}

/// @nodoc
class _$GameReceivedCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $GameReceivedCopyWith<$Res> {
  _$GameReceivedCopyWithImpl(
      GameReceived _value, $Res Function(GameReceived) _then)
      : super(_value, (v) => _then(v as GameReceived));

  @override
  GameReceived get _value => super._value as GameReceived;

  @override
  $Res call({
    Object? gameSnapshot = freezed,
  }) {
    return _then(GameReceived(
      gameSnapshot: gameSnapshot == freezed
          ? _value.gameSnapshot
          : gameSnapshot // ignore: cast_nullable_to_non_nullable
              as GameSnapshot,
    ));
  }
}

/// @nodoc

class _$GameReceived implements GameReceived {
  const _$GameReceived({required this.gameSnapshot});

  @override
  final GameSnapshot gameSnapshot;

  @override
  String toString() {
    return 'HomeEvent.gameReceived(gameSnapshot: $gameSnapshot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GameReceived &&
            (identical(other.gameSnapshot, gameSnapshot) ||
                const DeepCollectionEquality()
                    .equals(other.gameSnapshot, gameSnapshot)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(gameSnapshot);

  @JsonKey(ignore: true)
  @override
  $GameReceivedCopyWith<GameReceived> get copyWith =>
      _$GameReceivedCopyWithImpl<GameReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createOnlineGamePressed,
    required TResult Function() createOfflineGamePressed,
    required TResult Function(
            User user, int unreadInvitations, int unreadFriendRequests)
        dataReceived,
    required TResult Function(GameSnapshot gameSnapshot) gameReceived,
    required TResult Function(TrainingGameSnapshot trainingGameSnapshot)
        trainingGameReceived,
  }) {
    return gameReceived(gameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? createOnlineGamePressed,
    TResult Function()? createOfflineGamePressed,
    TResult Function(
            User user, int unreadInvitations, int unreadFriendRequests)?
        dataReceived,
    TResult Function(GameSnapshot gameSnapshot)? gameReceived,
    TResult Function(TrainingGameSnapshot trainingGameSnapshot)?
        trainingGameReceived,
  }) {
    return gameReceived?.call(gameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createOnlineGamePressed,
    TResult Function()? createOfflineGamePressed,
    TResult Function(
            User user, int unreadInvitations, int unreadFriendRequests)?
        dataReceived,
    TResult Function(GameSnapshot gameSnapshot)? gameReceived,
    TResult Function(TrainingGameSnapshot trainingGameSnapshot)?
        trainingGameReceived,
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
    required TResult Function(CreateOnlineGamePressed value)
        createOnlineGamePressed,
    required TResult Function(CreateOfflineGamePressed value)
        createOfflineGamePressed,
    required TResult Function(DataReceived value) dataReceived,
    required TResult Function(GameReceived value) gameReceived,
    required TResult Function(TrainingGameReceived value) trainingGameReceived,
  }) {
    return gameReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateOnlineGamePressed value)? createOnlineGamePressed,
    TResult Function(CreateOfflineGamePressed value)? createOfflineGamePressed,
    TResult Function(DataReceived value)? dataReceived,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(TrainingGameReceived value)? trainingGameReceived,
  }) {
    return gameReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateOnlineGamePressed value)? createOnlineGamePressed,
    TResult Function(CreateOfflineGamePressed value)? createOfflineGamePressed,
    TResult Function(DataReceived value)? dataReceived,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(TrainingGameReceived value)? trainingGameReceived,
    required TResult orElse(),
  }) {
    if (gameReceived != null) {
      return gameReceived(this);
    }
    return orElse();
  }
}

abstract class GameReceived implements HomeEvent {
  const factory GameReceived({required GameSnapshot gameSnapshot}) =
      _$GameReceived;

  GameSnapshot get gameSnapshot => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameReceivedCopyWith<GameReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainingGameReceivedCopyWith<$Res> {
  factory $TrainingGameReceivedCopyWith(TrainingGameReceived value,
          $Res Function(TrainingGameReceived) then) =
      _$TrainingGameReceivedCopyWithImpl<$Res>;
  $Res call({TrainingGameSnapshot trainingGameSnapshot});
}

/// @nodoc
class _$TrainingGameReceivedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements $TrainingGameReceivedCopyWith<$Res> {
  _$TrainingGameReceivedCopyWithImpl(
      TrainingGameReceived _value, $Res Function(TrainingGameReceived) _then)
      : super(_value, (v) => _then(v as TrainingGameReceived));

  @override
  TrainingGameReceived get _value => super._value as TrainingGameReceived;

  @override
  $Res call({
    Object? trainingGameSnapshot = freezed,
  }) {
    return _then(TrainingGameReceived(
      trainingGameSnapshot: trainingGameSnapshot == freezed
          ? _value.trainingGameSnapshot
          : trainingGameSnapshot // ignore: cast_nullable_to_non_nullable
              as TrainingGameSnapshot,
    ));
  }
}

/// @nodoc

class _$TrainingGameReceived implements TrainingGameReceived {
  const _$TrainingGameReceived({required this.trainingGameSnapshot});

  @override
  final TrainingGameSnapshot trainingGameSnapshot;

  @override
  String toString() {
    return 'HomeEvent.trainingGameReceived(trainingGameSnapshot: $trainingGameSnapshot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TrainingGameReceived &&
            (identical(other.trainingGameSnapshot, trainingGameSnapshot) ||
                const DeepCollectionEquality()
                    .equals(other.trainingGameSnapshot, trainingGameSnapshot)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(trainingGameSnapshot);

  @JsonKey(ignore: true)
  @override
  $TrainingGameReceivedCopyWith<TrainingGameReceived> get copyWith =>
      _$TrainingGameReceivedCopyWithImpl<TrainingGameReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createOnlineGamePressed,
    required TResult Function() createOfflineGamePressed,
    required TResult Function(
            User user, int unreadInvitations, int unreadFriendRequests)
        dataReceived,
    required TResult Function(GameSnapshot gameSnapshot) gameReceived,
    required TResult Function(TrainingGameSnapshot trainingGameSnapshot)
        trainingGameReceived,
  }) {
    return trainingGameReceived(trainingGameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? createOnlineGamePressed,
    TResult Function()? createOfflineGamePressed,
    TResult Function(
            User user, int unreadInvitations, int unreadFriendRequests)?
        dataReceived,
    TResult Function(GameSnapshot gameSnapshot)? gameReceived,
    TResult Function(TrainingGameSnapshot trainingGameSnapshot)?
        trainingGameReceived,
  }) {
    return trainingGameReceived?.call(trainingGameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createOnlineGamePressed,
    TResult Function()? createOfflineGamePressed,
    TResult Function(
            User user, int unreadInvitations, int unreadFriendRequests)?
        dataReceived,
    TResult Function(GameSnapshot gameSnapshot)? gameReceived,
    TResult Function(TrainingGameSnapshot trainingGameSnapshot)?
        trainingGameReceived,
    required TResult orElse(),
  }) {
    if (trainingGameReceived != null) {
      return trainingGameReceived(trainingGameSnapshot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateOnlineGamePressed value)
        createOnlineGamePressed,
    required TResult Function(CreateOfflineGamePressed value)
        createOfflineGamePressed,
    required TResult Function(DataReceived value) dataReceived,
    required TResult Function(GameReceived value) gameReceived,
    required TResult Function(TrainingGameReceived value) trainingGameReceived,
  }) {
    return trainingGameReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateOnlineGamePressed value)? createOnlineGamePressed,
    TResult Function(CreateOfflineGamePressed value)? createOfflineGamePressed,
    TResult Function(DataReceived value)? dataReceived,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(TrainingGameReceived value)? trainingGameReceived,
  }) {
    return trainingGameReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateOnlineGamePressed value)? createOnlineGamePressed,
    TResult Function(CreateOfflineGamePressed value)? createOfflineGamePressed,
    TResult Function(DataReceived value)? dataReceived,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(TrainingGameReceived value)? trainingGameReceived,
    required TResult orElse(),
  }) {
    if (trainingGameReceived != null) {
      return trainingGameReceived(this);
    }
    return orElse();
  }
}

abstract class TrainingGameReceived implements HomeEvent {
  const factory TrainingGameReceived(
          {required TrainingGameSnapshot trainingGameSnapshot}) =
      _$TrainingGameReceived;

  TrainingGameSnapshot get trainingGameSnapshot =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrainingGameReceivedCopyWith<TrainingGameReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  HomeInitial initial(
      {required User user,
      required int unreadInvitations,
      required int unreadFriendRequests,
      GameSnapshot? gameSnapshot,
      TrainingGameSnapshot? trainingGameSnapshot,
      required bool loading,
      PlayFailure? failure}) {
    return HomeInitial(
      user: user,
      unreadInvitations: unreadInvitations,
      unreadFriendRequests: unreadFriendRequests,
      gameSnapshot: gameSnapshot,
      trainingGameSnapshot: trainingGameSnapshot,
      loading: loading,
      failure: failure,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  User get user => throw _privateConstructorUsedError;
  int get unreadInvitations => throw _privateConstructorUsedError;
  int get unreadFriendRequests => throw _privateConstructorUsedError;
  GameSnapshot? get gameSnapshot => throw _privateConstructorUsedError;
  TrainingGameSnapshot? get trainingGameSnapshot =>
      throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  PlayFailure? get failure => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            User user,
            int unreadInvitations,
            int unreadFriendRequests,
            GameSnapshot? gameSnapshot,
            TrainingGameSnapshot? trainingGameSnapshot,
            bool loading,
            PlayFailure? failure)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            User user,
            int unreadInvitations,
            int unreadFriendRequests,
            GameSnapshot? gameSnapshot,
            TrainingGameSnapshot? trainingGameSnapshot,
            bool loading,
            PlayFailure? failure)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            User user,
            int unreadInvitations,
            int unreadFriendRequests,
            GameSnapshot? gameSnapshot,
            TrainingGameSnapshot? trainingGameSnapshot,
            bool loading,
            PlayFailure? failure)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeInitial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {User user,
      int unreadInvitations,
      int unreadFriendRequests,
      GameSnapshot? gameSnapshot,
      TrainingGameSnapshot? trainingGameSnapshot,
      bool loading,
      PlayFailure? failure});

  $UserCopyWith<$Res> get user;
  $PlayFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? unreadInvitations = freezed,
    Object? unreadFriendRequests = freezed,
    Object? gameSnapshot = freezed,
    Object? trainingGameSnapshot = freezed,
    Object? loading = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      unreadInvitations: unreadInvitations == freezed
          ? _value.unreadInvitations
          : unreadInvitations // ignore: cast_nullable_to_non_nullable
              as int,
      unreadFriendRequests: unreadFriendRequests == freezed
          ? _value.unreadFriendRequests
          : unreadFriendRequests // ignore: cast_nullable_to_non_nullable
              as int,
      gameSnapshot: gameSnapshot == freezed
          ? _value.gameSnapshot
          : gameSnapshot // ignore: cast_nullable_to_non_nullable
              as GameSnapshot?,
      trainingGameSnapshot: trainingGameSnapshot == freezed
          ? _value.trainingGameSnapshot
          : trainingGameSnapshot // ignore: cast_nullable_to_non_nullable
              as TrainingGameSnapshot?,
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
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
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
abstract class $HomeInitialCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $HomeInitialCopyWith(
          HomeInitial value, $Res Function(HomeInitial) then) =
      _$HomeInitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {User user,
      int unreadInvitations,
      int unreadFriendRequests,
      GameSnapshot? gameSnapshot,
      TrainingGameSnapshot? trainingGameSnapshot,
      bool loading,
      PlayFailure? failure});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $PlayFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$HomeInitialCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeInitialCopyWith<$Res> {
  _$HomeInitialCopyWithImpl(
      HomeInitial _value, $Res Function(HomeInitial) _then)
      : super(_value, (v) => _then(v as HomeInitial));

  @override
  HomeInitial get _value => super._value as HomeInitial;

  @override
  $Res call({
    Object? user = freezed,
    Object? unreadInvitations = freezed,
    Object? unreadFriendRequests = freezed,
    Object? gameSnapshot = freezed,
    Object? trainingGameSnapshot = freezed,
    Object? loading = freezed,
    Object? failure = freezed,
  }) {
    return _then(HomeInitial(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      unreadInvitations: unreadInvitations == freezed
          ? _value.unreadInvitations
          : unreadInvitations // ignore: cast_nullable_to_non_nullable
              as int,
      unreadFriendRequests: unreadFriendRequests == freezed
          ? _value.unreadFriendRequests
          : unreadFriendRequests // ignore: cast_nullable_to_non_nullable
              as int,
      gameSnapshot: gameSnapshot == freezed
          ? _value.gameSnapshot
          : gameSnapshot // ignore: cast_nullable_to_non_nullable
              as GameSnapshot?,
      trainingGameSnapshot: trainingGameSnapshot == freezed
          ? _value.trainingGameSnapshot
          : trainingGameSnapshot // ignore: cast_nullable_to_non_nullable
              as TrainingGameSnapshot?,
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

class _$HomeInitial implements HomeInitial {
  const _$HomeInitial(
      {required this.user,
      required this.unreadInvitations,
      required this.unreadFriendRequests,
      this.gameSnapshot,
      this.trainingGameSnapshot,
      required this.loading,
      this.failure});

  @override
  final User user;
  @override
  final int unreadInvitations;
  @override
  final int unreadFriendRequests;
  @override
  final GameSnapshot? gameSnapshot;
  @override
  final TrainingGameSnapshot? trainingGameSnapshot;
  @override
  final bool loading;
  @override
  final PlayFailure? failure;

  @override
  String toString() {
    return 'HomeState.initial(user: $user, unreadInvitations: $unreadInvitations, unreadFriendRequests: $unreadFriendRequests, gameSnapshot: $gameSnapshot, trainingGameSnapshot: $trainingGameSnapshot, loading: $loading, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HomeInitial &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.unreadInvitations, unreadInvitations) ||
                const DeepCollectionEquality()
                    .equals(other.unreadInvitations, unreadInvitations)) &&
            (identical(other.unreadFriendRequests, unreadFriendRequests) ||
                const DeepCollectionEquality().equals(
                    other.unreadFriendRequests, unreadFriendRequests)) &&
            (identical(other.gameSnapshot, gameSnapshot) ||
                const DeepCollectionEquality()
                    .equals(other.gameSnapshot, gameSnapshot)) &&
            (identical(other.trainingGameSnapshot, trainingGameSnapshot) ||
                const DeepCollectionEquality().equals(
                    other.trainingGameSnapshot, trainingGameSnapshot)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality()
                    .equals(other.loading, loading)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(unreadInvitations) ^
      const DeepCollectionEquality().hash(unreadFriendRequests) ^
      const DeepCollectionEquality().hash(gameSnapshot) ^
      const DeepCollectionEquality().hash(trainingGameSnapshot) ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  $HomeInitialCopyWith<HomeInitial> get copyWith =>
      _$HomeInitialCopyWithImpl<HomeInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            User user,
            int unreadInvitations,
            int unreadFriendRequests,
            GameSnapshot? gameSnapshot,
            TrainingGameSnapshot? trainingGameSnapshot,
            bool loading,
            PlayFailure? failure)
        initial,
  }) {
    return initial(user, unreadInvitations, unreadFriendRequests, gameSnapshot,
        trainingGameSnapshot, loading, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            User user,
            int unreadInvitations,
            int unreadFriendRequests,
            GameSnapshot? gameSnapshot,
            TrainingGameSnapshot? trainingGameSnapshot,
            bool loading,
            PlayFailure? failure)?
        initial,
  }) {
    return initial?.call(user, unreadInvitations, unreadFriendRequests,
        gameSnapshot, trainingGameSnapshot, loading, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            User user,
            int unreadInvitations,
            int unreadFriendRequests,
            GameSnapshot? gameSnapshot,
            TrainingGameSnapshot? trainingGameSnapshot,
            bool loading,
            PlayFailure? failure)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(user, unreadInvitations, unreadFriendRequests,
          gameSnapshot, trainingGameSnapshot, loading, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeInitial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class HomeInitial implements HomeState {
  const factory HomeInitial(
      {required User user,
      required int unreadInvitations,
      required int unreadFriendRequests,
      GameSnapshot? gameSnapshot,
      TrainingGameSnapshot? trainingGameSnapshot,
      required bool loading,
      PlayFailure? failure}) = _$HomeInitial;

  @override
  User get user => throw _privateConstructorUsedError;
  @override
  int get unreadInvitations => throw _privateConstructorUsedError;
  @override
  int get unreadFriendRequests => throw _privateConstructorUsedError;
  @override
  GameSnapshot? get gameSnapshot => throw _privateConstructorUsedError;
  @override
  TrainingGameSnapshot? get trainingGameSnapshot =>
      throw _privateConstructorUsedError;
  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  PlayFailure? get failure => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $HomeInitialCopyWith<HomeInitial> get copyWith =>
      throw _privateConstructorUsedError;
}
