// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

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

  GoToInvitationsPressed goToInvitationsPressed() {
    return const GoToInvitationsPressed();
  }

  GoToFriendsPressed goToFriendsPressed() {
    return const GoToFriendsPressed();
  }

  CreateOnlineGamePressed createOnlineGamePressed() {
    return const CreateOnlineGamePressed();
  }

  CreateOfflineGamePressed createOfflineGamePressed() {
    return const CreateOfflineGamePressed();
  }

  UserReceived userReceived({required User user}) {
    return UserReceived(
      user: user,
    );
  }

  GameReceived gameReceived({required GameSnapshot game}) {
    return GameReceived(
      game: game,
    );
  }

  UnreadInvitationsReceived unreadInvitationsReceived(
      {required int unreadInvitations}) {
    return UnreadInvitationsReceived(
      unreadInvitations: unreadInvitations,
    );
  }

  UnreadFriendRequestsReceived unreadFriendRequestsReceived(
      {required int unreadFriendRequests}) {
    return UnreadFriendRequestsReceived(
      unreadFriendRequests: unreadFriendRequests,
    );
  }

  FailureReceived failurReceived({required Object failure}) {
    return FailureReceived(
      failure: failure,
    );
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() goToInvitationsPressed,
    required TResult Function() goToFriendsPressed,
    required TResult Function() createOnlineGamePressed,
    required TResult Function() createOfflineGamePressed,
    required TResult Function(User user) userReceived,
    required TResult Function(GameSnapshot game) gameReceived,
    required TResult Function(int unreadInvitations) unreadInvitationsReceived,
    required TResult Function(int unreadFriendRequests)
        unreadFriendRequestsReceived,
    required TResult Function(Object failure) failurReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? goToInvitationsPressed,
    TResult Function()? goToFriendsPressed,
    TResult Function()? createOnlineGamePressed,
    TResult Function()? createOfflineGamePressed,
    TResult Function(User user)? userReceived,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(int unreadInvitations)? unreadInvitationsReceived,
    TResult Function(int unreadFriendRequests)? unreadFriendRequestsReceived,
    TResult Function(Object failure)? failurReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GoToInvitationsPressed value)
        goToInvitationsPressed,
    required TResult Function(GoToFriendsPressed value) goToFriendsPressed,
    required TResult Function(CreateOnlineGamePressed value)
        createOnlineGamePressed,
    required TResult Function(CreateOfflineGamePressed value)
        createOfflineGamePressed,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(GameReceived value) gameReceived,
    required TResult Function(UnreadInvitationsReceived value)
        unreadInvitationsReceived,
    required TResult Function(UnreadFriendRequestsReceived value)
        unreadFriendRequestsReceived,
    required TResult Function(FailureReceived value) failurReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GoToInvitationsPressed value)? goToInvitationsPressed,
    TResult Function(GoToFriendsPressed value)? goToFriendsPressed,
    TResult Function(CreateOnlineGamePressed value)? createOnlineGamePressed,
    TResult Function(CreateOfflineGamePressed value)? createOfflineGamePressed,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(UnreadInvitationsReceived value)?
        unreadInvitationsReceived,
    TResult Function(UnreadFriendRequestsReceived value)?
        unreadFriendRequestsReceived,
    TResult Function(FailureReceived value)? failurReceived,
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
abstract class $GoToInvitationsPressedCopyWith<$Res> {
  factory $GoToInvitationsPressedCopyWith(GoToInvitationsPressed value,
          $Res Function(GoToInvitationsPressed) then) =
      _$GoToInvitationsPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$GoToInvitationsPressedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements $GoToInvitationsPressedCopyWith<$Res> {
  _$GoToInvitationsPressedCopyWithImpl(GoToInvitationsPressed _value,
      $Res Function(GoToInvitationsPressed) _then)
      : super(_value, (v) => _then(v as GoToInvitationsPressed));

  @override
  GoToInvitationsPressed get _value => super._value as GoToInvitationsPressed;
}

/// @nodoc

class _$GoToInvitationsPressed implements GoToInvitationsPressed {
  const _$GoToInvitationsPressed();

  @override
  String toString() {
    return 'HomeEvent.goToInvitationsPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GoToInvitationsPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() goToInvitationsPressed,
    required TResult Function() goToFriendsPressed,
    required TResult Function() createOnlineGamePressed,
    required TResult Function() createOfflineGamePressed,
    required TResult Function(User user) userReceived,
    required TResult Function(GameSnapshot game) gameReceived,
    required TResult Function(int unreadInvitations) unreadInvitationsReceived,
    required TResult Function(int unreadFriendRequests)
        unreadFriendRequestsReceived,
    required TResult Function(Object failure) failurReceived,
  }) {
    return goToInvitationsPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? goToInvitationsPressed,
    TResult Function()? goToFriendsPressed,
    TResult Function()? createOnlineGamePressed,
    TResult Function()? createOfflineGamePressed,
    TResult Function(User user)? userReceived,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(int unreadInvitations)? unreadInvitationsReceived,
    TResult Function(int unreadFriendRequests)? unreadFriendRequestsReceived,
    TResult Function(Object failure)? failurReceived,
    required TResult orElse(),
  }) {
    if (goToInvitationsPressed != null) {
      return goToInvitationsPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GoToInvitationsPressed value)
        goToInvitationsPressed,
    required TResult Function(GoToFriendsPressed value) goToFriendsPressed,
    required TResult Function(CreateOnlineGamePressed value)
        createOnlineGamePressed,
    required TResult Function(CreateOfflineGamePressed value)
        createOfflineGamePressed,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(GameReceived value) gameReceived,
    required TResult Function(UnreadInvitationsReceived value)
        unreadInvitationsReceived,
    required TResult Function(UnreadFriendRequestsReceived value)
        unreadFriendRequestsReceived,
    required TResult Function(FailureReceived value) failurReceived,
  }) {
    return goToInvitationsPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GoToInvitationsPressed value)? goToInvitationsPressed,
    TResult Function(GoToFriendsPressed value)? goToFriendsPressed,
    TResult Function(CreateOnlineGamePressed value)? createOnlineGamePressed,
    TResult Function(CreateOfflineGamePressed value)? createOfflineGamePressed,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(UnreadInvitationsReceived value)?
        unreadInvitationsReceived,
    TResult Function(UnreadFriendRequestsReceived value)?
        unreadFriendRequestsReceived,
    TResult Function(FailureReceived value)? failurReceived,
    required TResult orElse(),
  }) {
    if (goToInvitationsPressed != null) {
      return goToInvitationsPressed(this);
    }
    return orElse();
  }
}

abstract class GoToInvitationsPressed implements HomeEvent {
  const factory GoToInvitationsPressed() = _$GoToInvitationsPressed;
}

/// @nodoc
abstract class $GoToFriendsPressedCopyWith<$Res> {
  factory $GoToFriendsPressedCopyWith(
          GoToFriendsPressed value, $Res Function(GoToFriendsPressed) then) =
      _$GoToFriendsPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$GoToFriendsPressedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements $GoToFriendsPressedCopyWith<$Res> {
  _$GoToFriendsPressedCopyWithImpl(
      GoToFriendsPressed _value, $Res Function(GoToFriendsPressed) _then)
      : super(_value, (v) => _then(v as GoToFriendsPressed));

  @override
  GoToFriendsPressed get _value => super._value as GoToFriendsPressed;
}

/// @nodoc

class _$GoToFriendsPressed implements GoToFriendsPressed {
  const _$GoToFriendsPressed();

  @override
  String toString() {
    return 'HomeEvent.goToFriendsPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GoToFriendsPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() goToInvitationsPressed,
    required TResult Function() goToFriendsPressed,
    required TResult Function() createOnlineGamePressed,
    required TResult Function() createOfflineGamePressed,
    required TResult Function(User user) userReceived,
    required TResult Function(GameSnapshot game) gameReceived,
    required TResult Function(int unreadInvitations) unreadInvitationsReceived,
    required TResult Function(int unreadFriendRequests)
        unreadFriendRequestsReceived,
    required TResult Function(Object failure) failurReceived,
  }) {
    return goToFriendsPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? goToInvitationsPressed,
    TResult Function()? goToFriendsPressed,
    TResult Function()? createOnlineGamePressed,
    TResult Function()? createOfflineGamePressed,
    TResult Function(User user)? userReceived,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(int unreadInvitations)? unreadInvitationsReceived,
    TResult Function(int unreadFriendRequests)? unreadFriendRequestsReceived,
    TResult Function(Object failure)? failurReceived,
    required TResult orElse(),
  }) {
    if (goToFriendsPressed != null) {
      return goToFriendsPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GoToInvitationsPressed value)
        goToInvitationsPressed,
    required TResult Function(GoToFriendsPressed value) goToFriendsPressed,
    required TResult Function(CreateOnlineGamePressed value)
        createOnlineGamePressed,
    required TResult Function(CreateOfflineGamePressed value)
        createOfflineGamePressed,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(GameReceived value) gameReceived,
    required TResult Function(UnreadInvitationsReceived value)
        unreadInvitationsReceived,
    required TResult Function(UnreadFriendRequestsReceived value)
        unreadFriendRequestsReceived,
    required TResult Function(FailureReceived value) failurReceived,
  }) {
    return goToFriendsPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GoToInvitationsPressed value)? goToInvitationsPressed,
    TResult Function(GoToFriendsPressed value)? goToFriendsPressed,
    TResult Function(CreateOnlineGamePressed value)? createOnlineGamePressed,
    TResult Function(CreateOfflineGamePressed value)? createOfflineGamePressed,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(UnreadInvitationsReceived value)?
        unreadInvitationsReceived,
    TResult Function(UnreadFriendRequestsReceived value)?
        unreadFriendRequestsReceived,
    TResult Function(FailureReceived value)? failurReceived,
    required TResult orElse(),
  }) {
    if (goToFriendsPressed != null) {
      return goToFriendsPressed(this);
    }
    return orElse();
  }
}

abstract class GoToFriendsPressed implements HomeEvent {
  const factory GoToFriendsPressed() = _$GoToFriendsPressed;
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
    required TResult Function() goToInvitationsPressed,
    required TResult Function() goToFriendsPressed,
    required TResult Function() createOnlineGamePressed,
    required TResult Function() createOfflineGamePressed,
    required TResult Function(User user) userReceived,
    required TResult Function(GameSnapshot game) gameReceived,
    required TResult Function(int unreadInvitations) unreadInvitationsReceived,
    required TResult Function(int unreadFriendRequests)
        unreadFriendRequestsReceived,
    required TResult Function(Object failure) failurReceived,
  }) {
    return createOnlineGamePressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? goToInvitationsPressed,
    TResult Function()? goToFriendsPressed,
    TResult Function()? createOnlineGamePressed,
    TResult Function()? createOfflineGamePressed,
    TResult Function(User user)? userReceived,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(int unreadInvitations)? unreadInvitationsReceived,
    TResult Function(int unreadFriendRequests)? unreadFriendRequestsReceived,
    TResult Function(Object failure)? failurReceived,
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
    required TResult Function(GoToInvitationsPressed value)
        goToInvitationsPressed,
    required TResult Function(GoToFriendsPressed value) goToFriendsPressed,
    required TResult Function(CreateOnlineGamePressed value)
        createOnlineGamePressed,
    required TResult Function(CreateOfflineGamePressed value)
        createOfflineGamePressed,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(GameReceived value) gameReceived,
    required TResult Function(UnreadInvitationsReceived value)
        unreadInvitationsReceived,
    required TResult Function(UnreadFriendRequestsReceived value)
        unreadFriendRequestsReceived,
    required TResult Function(FailureReceived value) failurReceived,
  }) {
    return createOnlineGamePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GoToInvitationsPressed value)? goToInvitationsPressed,
    TResult Function(GoToFriendsPressed value)? goToFriendsPressed,
    TResult Function(CreateOnlineGamePressed value)? createOnlineGamePressed,
    TResult Function(CreateOfflineGamePressed value)? createOfflineGamePressed,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(UnreadInvitationsReceived value)?
        unreadInvitationsReceived,
    TResult Function(UnreadFriendRequestsReceived value)?
        unreadFriendRequestsReceived,
    TResult Function(FailureReceived value)? failurReceived,
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
    required TResult Function() goToInvitationsPressed,
    required TResult Function() goToFriendsPressed,
    required TResult Function() createOnlineGamePressed,
    required TResult Function() createOfflineGamePressed,
    required TResult Function(User user) userReceived,
    required TResult Function(GameSnapshot game) gameReceived,
    required TResult Function(int unreadInvitations) unreadInvitationsReceived,
    required TResult Function(int unreadFriendRequests)
        unreadFriendRequestsReceived,
    required TResult Function(Object failure) failurReceived,
  }) {
    return createOfflineGamePressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? goToInvitationsPressed,
    TResult Function()? goToFriendsPressed,
    TResult Function()? createOnlineGamePressed,
    TResult Function()? createOfflineGamePressed,
    TResult Function(User user)? userReceived,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(int unreadInvitations)? unreadInvitationsReceived,
    TResult Function(int unreadFriendRequests)? unreadFriendRequestsReceived,
    TResult Function(Object failure)? failurReceived,
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
    required TResult Function(GoToInvitationsPressed value)
        goToInvitationsPressed,
    required TResult Function(GoToFriendsPressed value) goToFriendsPressed,
    required TResult Function(CreateOnlineGamePressed value)
        createOnlineGamePressed,
    required TResult Function(CreateOfflineGamePressed value)
        createOfflineGamePressed,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(GameReceived value) gameReceived,
    required TResult Function(UnreadInvitationsReceived value)
        unreadInvitationsReceived,
    required TResult Function(UnreadFriendRequestsReceived value)
        unreadFriendRequestsReceived,
    required TResult Function(FailureReceived value) failurReceived,
  }) {
    return createOfflineGamePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GoToInvitationsPressed value)? goToInvitationsPressed,
    TResult Function(GoToFriendsPressed value)? goToFriendsPressed,
    TResult Function(CreateOnlineGamePressed value)? createOnlineGamePressed,
    TResult Function(CreateOfflineGamePressed value)? createOfflineGamePressed,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(UnreadInvitationsReceived value)?
        unreadInvitationsReceived,
    TResult Function(UnreadFriendRequestsReceived value)?
        unreadFriendRequestsReceived,
    TResult Function(FailureReceived value)? failurReceived,
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
abstract class $UserReceivedCopyWith<$Res> {
  factory $UserReceivedCopyWith(
          UserReceived value, $Res Function(UserReceived) then) =
      _$UserReceivedCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$UserReceivedCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $UserReceivedCopyWith<$Res> {
  _$UserReceivedCopyWithImpl(
      UserReceived _value, $Res Function(UserReceived) _then)
      : super(_value, (v) => _then(v as UserReceived));

  @override
  UserReceived get _value => super._value as UserReceived;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(UserReceived(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
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

class _$UserReceived implements UserReceived {
  const _$UserReceived({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'HomeEvent.userReceived(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserReceived &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $UserReceivedCopyWith<UserReceived> get copyWith =>
      _$UserReceivedCopyWithImpl<UserReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() goToInvitationsPressed,
    required TResult Function() goToFriendsPressed,
    required TResult Function() createOnlineGamePressed,
    required TResult Function() createOfflineGamePressed,
    required TResult Function(User user) userReceived,
    required TResult Function(GameSnapshot game) gameReceived,
    required TResult Function(int unreadInvitations) unreadInvitationsReceived,
    required TResult Function(int unreadFriendRequests)
        unreadFriendRequestsReceived,
    required TResult Function(Object failure) failurReceived,
  }) {
    return userReceived(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? goToInvitationsPressed,
    TResult Function()? goToFriendsPressed,
    TResult Function()? createOnlineGamePressed,
    TResult Function()? createOfflineGamePressed,
    TResult Function(User user)? userReceived,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(int unreadInvitations)? unreadInvitationsReceived,
    TResult Function(int unreadFriendRequests)? unreadFriendRequestsReceived,
    TResult Function(Object failure)? failurReceived,
    required TResult orElse(),
  }) {
    if (userReceived != null) {
      return userReceived(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GoToInvitationsPressed value)
        goToInvitationsPressed,
    required TResult Function(GoToFriendsPressed value) goToFriendsPressed,
    required TResult Function(CreateOnlineGamePressed value)
        createOnlineGamePressed,
    required TResult Function(CreateOfflineGamePressed value)
        createOfflineGamePressed,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(GameReceived value) gameReceived,
    required TResult Function(UnreadInvitationsReceived value)
        unreadInvitationsReceived,
    required TResult Function(UnreadFriendRequestsReceived value)
        unreadFriendRequestsReceived,
    required TResult Function(FailureReceived value) failurReceived,
  }) {
    return userReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GoToInvitationsPressed value)? goToInvitationsPressed,
    TResult Function(GoToFriendsPressed value)? goToFriendsPressed,
    TResult Function(CreateOnlineGamePressed value)? createOnlineGamePressed,
    TResult Function(CreateOfflineGamePressed value)? createOfflineGamePressed,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(UnreadInvitationsReceived value)?
        unreadInvitationsReceived,
    TResult Function(UnreadFriendRequestsReceived value)?
        unreadFriendRequestsReceived,
    TResult Function(FailureReceived value)? failurReceived,
    required TResult orElse(),
  }) {
    if (userReceived != null) {
      return userReceived(this);
    }
    return orElse();
  }
}

abstract class UserReceived implements HomeEvent {
  const factory UserReceived({required User user}) = _$UserReceived;

  User get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserReceivedCopyWith<UserReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameReceivedCopyWith<$Res> {
  factory $GameReceivedCopyWith(
          GameReceived value, $Res Function(GameReceived) then) =
      _$GameReceivedCopyWithImpl<$Res>;
  $Res call({GameSnapshot game});
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
    return 'HomeEvent.gameReceived(game: $game)';
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
    required TResult Function() goToInvitationsPressed,
    required TResult Function() goToFriendsPressed,
    required TResult Function() createOnlineGamePressed,
    required TResult Function() createOfflineGamePressed,
    required TResult Function(User user) userReceived,
    required TResult Function(GameSnapshot game) gameReceived,
    required TResult Function(int unreadInvitations) unreadInvitationsReceived,
    required TResult Function(int unreadFriendRequests)
        unreadFriendRequestsReceived,
    required TResult Function(Object failure) failurReceived,
  }) {
    return gameReceived(game);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? goToInvitationsPressed,
    TResult Function()? goToFriendsPressed,
    TResult Function()? createOnlineGamePressed,
    TResult Function()? createOfflineGamePressed,
    TResult Function(User user)? userReceived,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(int unreadInvitations)? unreadInvitationsReceived,
    TResult Function(int unreadFriendRequests)? unreadFriendRequestsReceived,
    TResult Function(Object failure)? failurReceived,
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
    required TResult Function(GoToInvitationsPressed value)
        goToInvitationsPressed,
    required TResult Function(GoToFriendsPressed value) goToFriendsPressed,
    required TResult Function(CreateOnlineGamePressed value)
        createOnlineGamePressed,
    required TResult Function(CreateOfflineGamePressed value)
        createOfflineGamePressed,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(GameReceived value) gameReceived,
    required TResult Function(UnreadInvitationsReceived value)
        unreadInvitationsReceived,
    required TResult Function(UnreadFriendRequestsReceived value)
        unreadFriendRequestsReceived,
    required TResult Function(FailureReceived value) failurReceived,
  }) {
    return gameReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GoToInvitationsPressed value)? goToInvitationsPressed,
    TResult Function(GoToFriendsPressed value)? goToFriendsPressed,
    TResult Function(CreateOnlineGamePressed value)? createOnlineGamePressed,
    TResult Function(CreateOfflineGamePressed value)? createOfflineGamePressed,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(UnreadInvitationsReceived value)?
        unreadInvitationsReceived,
    TResult Function(UnreadFriendRequestsReceived value)?
        unreadFriendRequestsReceived,
    TResult Function(FailureReceived value)? failurReceived,
    required TResult orElse(),
  }) {
    if (gameReceived != null) {
      return gameReceived(this);
    }
    return orElse();
  }
}

abstract class GameReceived implements HomeEvent {
  const factory GameReceived({required GameSnapshot game}) = _$GameReceived;

  GameSnapshot get game => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameReceivedCopyWith<GameReceived> get copyWith =>
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
    extends _$HomeEventCopyWithImpl<$Res>
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
    return 'HomeEvent.unreadInvitationsReceived(unreadInvitations: $unreadInvitations)';
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
    required TResult Function() goToInvitationsPressed,
    required TResult Function() goToFriendsPressed,
    required TResult Function() createOnlineGamePressed,
    required TResult Function() createOfflineGamePressed,
    required TResult Function(User user) userReceived,
    required TResult Function(GameSnapshot game) gameReceived,
    required TResult Function(int unreadInvitations) unreadInvitationsReceived,
    required TResult Function(int unreadFriendRequests)
        unreadFriendRequestsReceived,
    required TResult Function(Object failure) failurReceived,
  }) {
    return unreadInvitationsReceived(unreadInvitations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? goToInvitationsPressed,
    TResult Function()? goToFriendsPressed,
    TResult Function()? createOnlineGamePressed,
    TResult Function()? createOfflineGamePressed,
    TResult Function(User user)? userReceived,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(int unreadInvitations)? unreadInvitationsReceived,
    TResult Function(int unreadFriendRequests)? unreadFriendRequestsReceived,
    TResult Function(Object failure)? failurReceived,
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
    required TResult Function(GoToInvitationsPressed value)
        goToInvitationsPressed,
    required TResult Function(GoToFriendsPressed value) goToFriendsPressed,
    required TResult Function(CreateOnlineGamePressed value)
        createOnlineGamePressed,
    required TResult Function(CreateOfflineGamePressed value)
        createOfflineGamePressed,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(GameReceived value) gameReceived,
    required TResult Function(UnreadInvitationsReceived value)
        unreadInvitationsReceived,
    required TResult Function(UnreadFriendRequestsReceived value)
        unreadFriendRequestsReceived,
    required TResult Function(FailureReceived value) failurReceived,
  }) {
    return unreadInvitationsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GoToInvitationsPressed value)? goToInvitationsPressed,
    TResult Function(GoToFriendsPressed value)? goToFriendsPressed,
    TResult Function(CreateOnlineGamePressed value)? createOnlineGamePressed,
    TResult Function(CreateOfflineGamePressed value)? createOfflineGamePressed,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(UnreadInvitationsReceived value)?
        unreadInvitationsReceived,
    TResult Function(UnreadFriendRequestsReceived value)?
        unreadFriendRequestsReceived,
    TResult Function(FailureReceived value)? failurReceived,
    required TResult orElse(),
  }) {
    if (unreadInvitationsReceived != null) {
      return unreadInvitationsReceived(this);
    }
    return orElse();
  }
}

abstract class UnreadInvitationsReceived implements HomeEvent {
  const factory UnreadInvitationsReceived({required int unreadInvitations}) =
      _$UnreadInvitationsReceived;

  int get unreadInvitations => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnreadInvitationsReceivedCopyWith<UnreadInvitationsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnreadFriendRequestsReceivedCopyWith<$Res> {
  factory $UnreadFriendRequestsReceivedCopyWith(
          UnreadFriendRequestsReceived value,
          $Res Function(UnreadFriendRequestsReceived) then) =
      _$UnreadFriendRequestsReceivedCopyWithImpl<$Res>;
  $Res call({int unreadFriendRequests});
}

/// @nodoc
class _$UnreadFriendRequestsReceivedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements $UnreadFriendRequestsReceivedCopyWith<$Res> {
  _$UnreadFriendRequestsReceivedCopyWithImpl(
      UnreadFriendRequestsReceived _value,
      $Res Function(UnreadFriendRequestsReceived) _then)
      : super(_value, (v) => _then(v as UnreadFriendRequestsReceived));

  @override
  UnreadFriendRequestsReceived get _value =>
      super._value as UnreadFriendRequestsReceived;

  @override
  $Res call({
    Object? unreadFriendRequests = freezed,
  }) {
    return _then(UnreadFriendRequestsReceived(
      unreadFriendRequests: unreadFriendRequests == freezed
          ? _value.unreadFriendRequests
          : unreadFriendRequests // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UnreadFriendRequestsReceived implements UnreadFriendRequestsReceived {
  const _$UnreadFriendRequestsReceived({required this.unreadFriendRequests});

  @override
  final int unreadFriendRequests;

  @override
  String toString() {
    return 'HomeEvent.unreadFriendRequestsReceived(unreadFriendRequests: $unreadFriendRequests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnreadFriendRequestsReceived &&
            (identical(other.unreadFriendRequests, unreadFriendRequests) ||
                const DeepCollectionEquality()
                    .equals(other.unreadFriendRequests, unreadFriendRequests)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(unreadFriendRequests);

  @JsonKey(ignore: true)
  @override
  $UnreadFriendRequestsReceivedCopyWith<UnreadFriendRequestsReceived>
      get copyWith => _$UnreadFriendRequestsReceivedCopyWithImpl<
          UnreadFriendRequestsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() goToInvitationsPressed,
    required TResult Function() goToFriendsPressed,
    required TResult Function() createOnlineGamePressed,
    required TResult Function() createOfflineGamePressed,
    required TResult Function(User user) userReceived,
    required TResult Function(GameSnapshot game) gameReceived,
    required TResult Function(int unreadInvitations) unreadInvitationsReceived,
    required TResult Function(int unreadFriendRequests)
        unreadFriendRequestsReceived,
    required TResult Function(Object failure) failurReceived,
  }) {
    return unreadFriendRequestsReceived(unreadFriendRequests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? goToInvitationsPressed,
    TResult Function()? goToFriendsPressed,
    TResult Function()? createOnlineGamePressed,
    TResult Function()? createOfflineGamePressed,
    TResult Function(User user)? userReceived,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(int unreadInvitations)? unreadInvitationsReceived,
    TResult Function(int unreadFriendRequests)? unreadFriendRequestsReceived,
    TResult Function(Object failure)? failurReceived,
    required TResult orElse(),
  }) {
    if (unreadFriendRequestsReceived != null) {
      return unreadFriendRequestsReceived(unreadFriendRequests);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GoToInvitationsPressed value)
        goToInvitationsPressed,
    required TResult Function(GoToFriendsPressed value) goToFriendsPressed,
    required TResult Function(CreateOnlineGamePressed value)
        createOnlineGamePressed,
    required TResult Function(CreateOfflineGamePressed value)
        createOfflineGamePressed,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(GameReceived value) gameReceived,
    required TResult Function(UnreadInvitationsReceived value)
        unreadInvitationsReceived,
    required TResult Function(UnreadFriendRequestsReceived value)
        unreadFriendRequestsReceived,
    required TResult Function(FailureReceived value) failurReceived,
  }) {
    return unreadFriendRequestsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GoToInvitationsPressed value)? goToInvitationsPressed,
    TResult Function(GoToFriendsPressed value)? goToFriendsPressed,
    TResult Function(CreateOnlineGamePressed value)? createOnlineGamePressed,
    TResult Function(CreateOfflineGamePressed value)? createOfflineGamePressed,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(UnreadInvitationsReceived value)?
        unreadInvitationsReceived,
    TResult Function(UnreadFriendRequestsReceived value)?
        unreadFriendRequestsReceived,
    TResult Function(FailureReceived value)? failurReceived,
    required TResult orElse(),
  }) {
    if (unreadFriendRequestsReceived != null) {
      return unreadFriendRequestsReceived(this);
    }
    return orElse();
  }
}

abstract class UnreadFriendRequestsReceived implements HomeEvent {
  const factory UnreadFriendRequestsReceived(
      {required int unreadFriendRequests}) = _$UnreadFriendRequestsReceived;

  int get unreadFriendRequests => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnreadFriendRequestsReceivedCopyWith<UnreadFriendRequestsReceived>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureReceivedCopyWith<$Res> {
  factory $FailureReceivedCopyWith(
          FailureReceived value, $Res Function(FailureReceived) then) =
      _$FailureReceivedCopyWithImpl<$Res>;
  $Res call({Object failure});
}

/// @nodoc
class _$FailureReceivedCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
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
              as Object,
    ));
  }
}

/// @nodoc

class _$FailureReceived implements FailureReceived {
  const _$FailureReceived({required this.failure});

  @override
  final Object failure;

  @override
  String toString() {
    return 'HomeEvent.failurReceived(failure: $failure)';
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
    required TResult Function() goToInvitationsPressed,
    required TResult Function() goToFriendsPressed,
    required TResult Function() createOnlineGamePressed,
    required TResult Function() createOfflineGamePressed,
    required TResult Function(User user) userReceived,
    required TResult Function(GameSnapshot game) gameReceived,
    required TResult Function(int unreadInvitations) unreadInvitationsReceived,
    required TResult Function(int unreadFriendRequests)
        unreadFriendRequestsReceived,
    required TResult Function(Object failure) failurReceived,
  }) {
    return failurReceived(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? goToInvitationsPressed,
    TResult Function()? goToFriendsPressed,
    TResult Function()? createOnlineGamePressed,
    TResult Function()? createOfflineGamePressed,
    TResult Function(User user)? userReceived,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(int unreadInvitations)? unreadInvitationsReceived,
    TResult Function(int unreadFriendRequests)? unreadFriendRequestsReceived,
    TResult Function(Object failure)? failurReceived,
    required TResult orElse(),
  }) {
    if (failurReceived != null) {
      return failurReceived(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GoToInvitationsPressed value)
        goToInvitationsPressed,
    required TResult Function(GoToFriendsPressed value) goToFriendsPressed,
    required TResult Function(CreateOnlineGamePressed value)
        createOnlineGamePressed,
    required TResult Function(CreateOfflineGamePressed value)
        createOfflineGamePressed,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(GameReceived value) gameReceived,
    required TResult Function(UnreadInvitationsReceived value)
        unreadInvitationsReceived,
    required TResult Function(UnreadFriendRequestsReceived value)
        unreadFriendRequestsReceived,
    required TResult Function(FailureReceived value) failurReceived,
  }) {
    return failurReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GoToInvitationsPressed value)? goToInvitationsPressed,
    TResult Function(GoToFriendsPressed value)? goToFriendsPressed,
    TResult Function(CreateOnlineGamePressed value)? createOnlineGamePressed,
    TResult Function(CreateOfflineGamePressed value)? createOfflineGamePressed,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(UnreadInvitationsReceived value)?
        unreadInvitationsReceived,
    TResult Function(UnreadFriendRequestsReceived value)?
        unreadFriendRequestsReceived,
    TResult Function(FailureReceived value)? failurReceived,
    required TResult orElse(),
  }) {
    if (failurReceived != null) {
      return failurReceived(this);
    }
    return orElse();
  }
}

abstract class FailureReceived implements HomeEvent {
  const factory FailureReceived({required Object failure}) = _$FailureReceived;

  Object get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FailureReceivedCopyWith<FailureReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  HomeLoadInProgress loadInProgress(
      {User? user, int? unreadInvitations, int? unreadFriendRequests}) {
    return HomeLoadInProgress(
      user: user,
      unreadInvitations: unreadInvitations,
      unreadFriendRequests: unreadFriendRequests,
    );
  }

  HomeLoadSuccess loadSuccess(
      {required User user,
      GameSnapshot? game,
      required int unreadInvitations,
      required int unreadFriendRequests}) {
    return HomeLoadSuccess(
      user: user,
      game: game,
      unreadInvitations: unreadInvitations,
      unreadFriendRequests: unreadFriendRequests,
    );
  }

  HomeFailure failure({required Object failure}) {
    return HomeFailure(
      failure: failure,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            User? user, int? unreadInvitations, int? unreadFriendRequests)
        loadInProgress,
    required TResult Function(User user, GameSnapshot? game,
            int unreadInvitations, int unreadFriendRequests)
        loadSuccess,
    required TResult Function(Object failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            User? user, int? unreadInvitations, int? unreadFriendRequests)?
        loadInProgress,
    TResult Function(User user, GameSnapshot? game, int unreadInvitations,
            int unreadFriendRequests)?
        loadSuccess,
    TResult Function(Object failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeLoadInProgress value) loadInProgress,
    required TResult Function(HomeLoadSuccess value) loadSuccess,
    required TResult Function(HomeFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLoadInProgress value)? loadInProgress,
    TResult Function(HomeLoadSuccess value)? loadSuccess,
    TResult Function(HomeFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class $HomeLoadInProgressCopyWith<$Res> {
  factory $HomeLoadInProgressCopyWith(
          HomeLoadInProgress value, $Res Function(HomeLoadInProgress) then) =
      _$HomeLoadInProgressCopyWithImpl<$Res>;
  $Res call({User? user, int? unreadInvitations, int? unreadFriendRequests});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$HomeLoadInProgressCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeLoadInProgressCopyWith<$Res> {
  _$HomeLoadInProgressCopyWithImpl(
      HomeLoadInProgress _value, $Res Function(HomeLoadInProgress) _then)
      : super(_value, (v) => _then(v as HomeLoadInProgress));

  @override
  HomeLoadInProgress get _value => super._value as HomeLoadInProgress;

  @override
  $Res call({
    Object? user = freezed,
    Object? unreadInvitations = freezed,
    Object? unreadFriendRequests = freezed,
  }) {
    return _then(HomeLoadInProgress(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      unreadInvitations: unreadInvitations == freezed
          ? _value.unreadInvitations
          : unreadInvitations // ignore: cast_nullable_to_non_nullable
              as int?,
      unreadFriendRequests: unreadFriendRequests == freezed
          ? _value.unreadFriendRequests
          : unreadFriendRequests // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$HomeLoadInProgress implements HomeLoadInProgress {
  const _$HomeLoadInProgress(
      {this.user, this.unreadInvitations, this.unreadFriendRequests});

  @override
  final User? user;
  @override
  final int? unreadInvitations;
  @override
  final int? unreadFriendRequests;

  @override
  String toString() {
    return 'HomeState.loadInProgress(user: $user, unreadInvitations: $unreadInvitations, unreadFriendRequests: $unreadFriendRequests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HomeLoadInProgress &&
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
  $HomeLoadInProgressCopyWith<HomeLoadInProgress> get copyWith =>
      _$HomeLoadInProgressCopyWithImpl<HomeLoadInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            User? user, int? unreadInvitations, int? unreadFriendRequests)
        loadInProgress,
    required TResult Function(User user, GameSnapshot? game,
            int unreadInvitations, int unreadFriendRequests)
        loadSuccess,
    required TResult Function(Object failure) failure,
  }) {
    return loadInProgress(user, unreadInvitations, unreadFriendRequests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            User? user, int? unreadInvitations, int? unreadFriendRequests)?
        loadInProgress,
    TResult Function(User user, GameSnapshot? game, int unreadInvitations,
            int unreadFriendRequests)?
        loadSuccess,
    TResult Function(Object failure)? failure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(user, unreadInvitations, unreadFriendRequests);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeLoadInProgress value) loadInProgress,
    required TResult Function(HomeLoadSuccess value) loadSuccess,
    required TResult Function(HomeFailure value) failure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLoadInProgress value)? loadInProgress,
    TResult Function(HomeLoadSuccess value)? loadSuccess,
    TResult Function(HomeFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class HomeLoadInProgress implements HomeState {
  const factory HomeLoadInProgress(
      {User? user,
      int? unreadInvitations,
      int? unreadFriendRequests}) = _$HomeLoadInProgress;

  User? get user => throw _privateConstructorUsedError;
  int? get unreadInvitations => throw _privateConstructorUsedError;
  int? get unreadFriendRequests => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeLoadInProgressCopyWith<HomeLoadInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeLoadSuccessCopyWith<$Res> {
  factory $HomeLoadSuccessCopyWith(
          HomeLoadSuccess value, $Res Function(HomeLoadSuccess) then) =
      _$HomeLoadSuccessCopyWithImpl<$Res>;
  $Res call(
      {User user,
      GameSnapshot? game,
      int unreadInvitations,
      int unreadFriendRequests});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$HomeLoadSuccessCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeLoadSuccessCopyWith<$Res> {
  _$HomeLoadSuccessCopyWithImpl(
      HomeLoadSuccess _value, $Res Function(HomeLoadSuccess) _then)
      : super(_value, (v) => _then(v as HomeLoadSuccess));

  @override
  HomeLoadSuccess get _value => super._value as HomeLoadSuccess;

  @override
  $Res call({
    Object? user = freezed,
    Object? game = freezed,
    Object? unreadInvitations = freezed,
    Object? unreadFriendRequests = freezed,
  }) {
    return _then(HomeLoadSuccess(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      game: game == freezed
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as GameSnapshot?,
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

class _$HomeLoadSuccess implements HomeLoadSuccess {
  const _$HomeLoadSuccess(
      {required this.user,
      this.game,
      required this.unreadInvitations,
      required this.unreadFriendRequests});

  @override
  final User user;
  @override
  final GameSnapshot? game;
  @override
  final int unreadInvitations;
  @override
  final int unreadFriendRequests;

  @override
  String toString() {
    return 'HomeState.loadSuccess(user: $user, game: $game, unreadInvitations: $unreadInvitations, unreadFriendRequests: $unreadFriendRequests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HomeLoadSuccess &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.game, game) ||
                const DeepCollectionEquality().equals(other.game, game)) &&
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
      const DeepCollectionEquality().hash(game) ^
      const DeepCollectionEquality().hash(unreadInvitations) ^
      const DeepCollectionEquality().hash(unreadFriendRequests);

  @JsonKey(ignore: true)
  @override
  $HomeLoadSuccessCopyWith<HomeLoadSuccess> get copyWith =>
      _$HomeLoadSuccessCopyWithImpl<HomeLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            User? user, int? unreadInvitations, int? unreadFriendRequests)
        loadInProgress,
    required TResult Function(User user, GameSnapshot? game,
            int unreadInvitations, int unreadFriendRequests)
        loadSuccess,
    required TResult Function(Object failure) failure,
  }) {
    return loadSuccess(user, game, unreadInvitations, unreadFriendRequests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            User? user, int? unreadInvitations, int? unreadFriendRequests)?
        loadInProgress,
    TResult Function(User user, GameSnapshot? game, int unreadInvitations,
            int unreadFriendRequests)?
        loadSuccess,
    TResult Function(Object failure)? failure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(user, game, unreadInvitations, unreadFriendRequests);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeLoadInProgress value) loadInProgress,
    required TResult Function(HomeLoadSuccess value) loadSuccess,
    required TResult Function(HomeFailure value) failure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLoadInProgress value)? loadInProgress,
    TResult Function(HomeLoadSuccess value)? loadSuccess,
    TResult Function(HomeFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class HomeLoadSuccess implements HomeState {
  const factory HomeLoadSuccess(
      {required User user,
      GameSnapshot? game,
      required int unreadInvitations,
      required int unreadFriendRequests}) = _$HomeLoadSuccess;

  User get user => throw _privateConstructorUsedError;
  GameSnapshot? get game => throw _privateConstructorUsedError;
  int get unreadInvitations => throw _privateConstructorUsedError;
  int get unreadFriendRequests => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeLoadSuccessCopyWith<HomeLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeFailureCopyWith<$Res> {
  factory $HomeFailureCopyWith(
          HomeFailure value, $Res Function(HomeFailure) then) =
      _$HomeFailureCopyWithImpl<$Res>;
  $Res call({Object failure});
}

/// @nodoc
class _$HomeFailureCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeFailureCopyWith<$Res> {
  _$HomeFailureCopyWithImpl(
      HomeFailure _value, $Res Function(HomeFailure) _then)
      : super(_value, (v) => _then(v as HomeFailure));

  @override
  HomeFailure get _value => super._value as HomeFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(HomeFailure(
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$HomeFailure implements HomeFailure {
  const _$HomeFailure({required this.failure});

  @override
  final Object failure;

  @override
  String toString() {
    return 'HomeState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HomeFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  $HomeFailureCopyWith<HomeFailure> get copyWith =>
      _$HomeFailureCopyWithImpl<HomeFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            User? user, int? unreadInvitations, int? unreadFriendRequests)
        loadInProgress,
    required TResult Function(User user, GameSnapshot? game,
            int unreadInvitations, int unreadFriendRequests)
        loadSuccess,
    required TResult Function(Object failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            User? user, int? unreadInvitations, int? unreadFriendRequests)?
        loadInProgress,
    TResult Function(User user, GameSnapshot? game, int unreadInvitations,
            int unreadFriendRequests)?
        loadSuccess,
    TResult Function(Object failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeLoadInProgress value) loadInProgress,
    required TResult Function(HomeLoadSuccess value) loadSuccess,
    required TResult Function(HomeFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLoadInProgress value)? loadInProgress,
    TResult Function(HomeLoadSuccess value)? loadSuccess,
    TResult Function(HomeFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class HomeFailure implements HomeState {
  const factory HomeFailure({required Object failure}) = _$HomeFailure;

  Object get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeFailureCopyWith<HomeFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
