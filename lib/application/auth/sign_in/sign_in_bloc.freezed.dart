// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignInEventTearOff {
  const _$SignInEventTearOff();

  WatchStarted watchStarted() {
    return const WatchStarted();
  }

  EmailChanged emailChanged(String emailString) {
    return EmailChanged(
      emailString,
    );
  }

  PasswordChanged passwordChanged(String passwordString) {
    return PasswordChanged(
      passwordString,
    );
  }

  SignInPressed signInPressed() {
    return const SignInPressed();
  }

  SignInWithFacebookPressed signInWithFacebookPressed() {
    return const SignInWithFacebookPressed();
  }

  SignInWithGooglePressed signInWithGooglePressed() {
    return const SignInWithGooglePressed();
  }

  SignInWithApplePressed signInWithApplePressed() {
    return const SignInWithApplePressed();
  }

  InvitationsReceived invitationsReceived() {
    return const InvitationsReceived();
  }

  FriendRequestsReceived friendRequestsReceived() {
    return const FriendRequestsReceived();
  }

  UserReceived userReceived() {
    return const UserReceived();
  }

  FailureReceived failureReceived() {
    return const FailureReceived();
  }
}

/// @nodoc
const $SignInEvent = _$SignInEventTearOff();

/// @nodoc
mixin _$SignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function() signInPressed,
    required TResult Function() signInWithFacebookPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() signInWithApplePressed,
    required TResult Function() invitationsReceived,
    required TResult Function() friendRequestsReceived,
    required TResult Function() userReceived,
    required TResult Function() failureReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(String emailString)? emailChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? signInWithFacebookPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWithApplePressed,
    TResult Function()? invitationsReceived,
    TResult Function()? friendRequestsReceived,
    TResult Function()? userReceived,
    TResult Function()? failureReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInPressed value) signInPressed,
    required TResult Function(SignInWithFacebookPressed value)
        signInWithFacebookPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(SignInWithApplePressed value)
        signInWithApplePressed,
    required TResult Function(InvitationsReceived value) invitationsReceived,
    required TResult Function(FriendRequestsReceived value)
        friendRequestsReceived,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SignInWithApplePressed value)? signInWithApplePressed,
    TResult Function(InvitationsReceived value)? invitationsReceived,
    TResult Function(FriendRequestsReceived value)? friendRequestsReceived,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res> implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  final SignInEvent _value;
  // ignore: unused_field
  final $Res Function(SignInEvent) _then;
}

/// @nodoc
abstract class $WatchStartedCopyWith<$Res> {
  factory $WatchStartedCopyWith(
          WatchStarted value, $Res Function(WatchStarted) then) =
      _$WatchStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatchStartedCopyWithImpl<$Res> extends _$SignInEventCopyWithImpl<$Res>
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
    return 'SignInEvent.watchStarted()';
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
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function() signInPressed,
    required TResult Function() signInWithFacebookPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() signInWithApplePressed,
    required TResult Function() invitationsReceived,
    required TResult Function() friendRequestsReceived,
    required TResult Function() userReceived,
    required TResult Function() failureReceived,
  }) {
    return watchStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(String emailString)? emailChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? signInWithFacebookPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWithApplePressed,
    TResult Function()? invitationsReceived,
    TResult Function()? friendRequestsReceived,
    TResult Function()? userReceived,
    TResult Function()? failureReceived,
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
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInPressed value) signInPressed,
    required TResult Function(SignInWithFacebookPressed value)
        signInWithFacebookPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(SignInWithApplePressed value)
        signInWithApplePressed,
    required TResult Function(InvitationsReceived value) invitationsReceived,
    required TResult Function(FriendRequestsReceived value)
        friendRequestsReceived,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return watchStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SignInWithApplePressed value)? signInWithApplePressed,
    TResult Function(InvitationsReceived value)? invitationsReceived,
    TResult Function(FriendRequestsReceived value)? friendRequestsReceived,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (watchStarted != null) {
      return watchStarted(this);
    }
    return orElse();
  }
}

abstract class WatchStarted implements SignInEvent {
  const factory WatchStarted() = _$WatchStarted;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailString});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res> extends _$SignInEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object? emailString = freezed,
  }) {
    return _then(EmailChanged(
      emailString == freezed
          ? _value.emailString
          : emailString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.emailString);

  @override
  final String emailString;

  @override
  String toString() {
    return 'SignInEvent.emailChanged(emailString: $emailString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.emailString, emailString) ||
                const DeepCollectionEquality()
                    .equals(other.emailString, emailString)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailString);

  @JsonKey(ignore: true)
  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function() signInPressed,
    required TResult Function() signInWithFacebookPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() signInWithApplePressed,
    required TResult Function() invitationsReceived,
    required TResult Function() friendRequestsReceived,
    required TResult Function() userReceived,
    required TResult Function() failureReceived,
  }) {
    return emailChanged(emailString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(String emailString)? emailChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? signInWithFacebookPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWithApplePressed,
    TResult Function()? invitationsReceived,
    TResult Function()? friendRequestsReceived,
    TResult Function()? userReceived,
    TResult Function()? failureReceived,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(emailString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInPressed value) signInPressed,
    required TResult Function(SignInWithFacebookPressed value)
        signInWithFacebookPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(SignInWithApplePressed value)
        signInWithApplePressed,
    required TResult Function(InvitationsReceived value) invitationsReceived,
    required TResult Function(FriendRequestsReceived value)
        friendRequestsReceived,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SignInWithApplePressed value)? signInWithApplePressed,
    TResult Function(InvitationsReceived value)? invitationsReceived,
    TResult Function(FriendRequestsReceived value)? friendRequestsReceived,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SignInEvent {
  const factory EmailChanged(String emailString) = _$EmailChanged;

  String get emailString => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordString});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object? passwordString = freezed,
  }) {
    return _then(PasswordChanged(
      passwordString == freezed
          ? _value.passwordString
          : passwordString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.passwordString);

  @override
  final String passwordString;

  @override
  String toString() {
    return 'SignInEvent.passwordChanged(passwordString: $passwordString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.passwordString, passwordString) ||
                const DeepCollectionEquality()
                    .equals(other.passwordString, passwordString)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(passwordString);

  @JsonKey(ignore: true)
  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function() signInPressed,
    required TResult Function() signInWithFacebookPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() signInWithApplePressed,
    required TResult Function() invitationsReceived,
    required TResult Function() friendRequestsReceived,
    required TResult Function() userReceived,
    required TResult Function() failureReceived,
  }) {
    return passwordChanged(passwordString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(String emailString)? emailChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? signInWithFacebookPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWithApplePressed,
    TResult Function()? invitationsReceived,
    TResult Function()? friendRequestsReceived,
    TResult Function()? userReceived,
    TResult Function()? failureReceived,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(passwordString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInPressed value) signInPressed,
    required TResult Function(SignInWithFacebookPressed value)
        signInWithFacebookPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(SignInWithApplePressed value)
        signInWithApplePressed,
    required TResult Function(InvitationsReceived value) invitationsReceived,
    required TResult Function(FriendRequestsReceived value)
        friendRequestsReceived,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SignInWithApplePressed value)? signInWithApplePressed,
    TResult Function(InvitationsReceived value)? invitationsReceived,
    TResult Function(FriendRequestsReceived value)? friendRequestsReceived,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignInEvent {
  const factory PasswordChanged(String passwordString) = _$PasswordChanged;

  String get passwordString => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInPressedCopyWith<$Res> {
  factory $SignInPressedCopyWith(
          SignInPressed value, $Res Function(SignInPressed) then) =
      _$SignInPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInPressedCopyWithImpl<$Res> extends _$SignInEventCopyWithImpl<$Res>
    implements $SignInPressedCopyWith<$Res> {
  _$SignInPressedCopyWithImpl(
      SignInPressed _value, $Res Function(SignInPressed) _then)
      : super(_value, (v) => _then(v as SignInPressed));

  @override
  SignInPressed get _value => super._value as SignInPressed;
}

/// @nodoc

class _$SignInPressed implements SignInPressed {
  const _$SignInPressed();

  @override
  String toString() {
    return 'SignInEvent.signInPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function() signInPressed,
    required TResult Function() signInWithFacebookPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() signInWithApplePressed,
    required TResult Function() invitationsReceived,
    required TResult Function() friendRequestsReceived,
    required TResult Function() userReceived,
    required TResult Function() failureReceived,
  }) {
    return signInPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(String emailString)? emailChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? signInWithFacebookPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWithApplePressed,
    TResult Function()? invitationsReceived,
    TResult Function()? friendRequestsReceived,
    TResult Function()? userReceived,
    TResult Function()? failureReceived,
    required TResult orElse(),
  }) {
    if (signInPressed != null) {
      return signInPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInPressed value) signInPressed,
    required TResult Function(SignInWithFacebookPressed value)
        signInWithFacebookPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(SignInWithApplePressed value)
        signInWithApplePressed,
    required TResult Function(InvitationsReceived value) invitationsReceived,
    required TResult Function(FriendRequestsReceived value)
        friendRequestsReceived,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return signInPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SignInWithApplePressed value)? signInWithApplePressed,
    TResult Function(InvitationsReceived value)? invitationsReceived,
    TResult Function(FriendRequestsReceived value)? friendRequestsReceived,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (signInPressed != null) {
      return signInPressed(this);
    }
    return orElse();
  }
}

abstract class SignInPressed implements SignInEvent {
  const factory SignInPressed() = _$SignInPressed;
}

/// @nodoc
abstract class $SignInWithFacebookPressedCopyWith<$Res> {
  factory $SignInWithFacebookPressedCopyWith(SignInWithFacebookPressed value,
          $Res Function(SignInWithFacebookPressed) then) =
      _$SignInWithFacebookPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInWithFacebookPressedCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements $SignInWithFacebookPressedCopyWith<$Res> {
  _$SignInWithFacebookPressedCopyWithImpl(SignInWithFacebookPressed _value,
      $Res Function(SignInWithFacebookPressed) _then)
      : super(_value, (v) => _then(v as SignInWithFacebookPressed));

  @override
  SignInWithFacebookPressed get _value =>
      super._value as SignInWithFacebookPressed;
}

/// @nodoc

class _$SignInWithFacebookPressed implements SignInWithFacebookPressed {
  const _$SignInWithFacebookPressed();

  @override
  String toString() {
    return 'SignInEvent.signInWithFacebookPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInWithFacebookPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function() signInPressed,
    required TResult Function() signInWithFacebookPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() signInWithApplePressed,
    required TResult Function() invitationsReceived,
    required TResult Function() friendRequestsReceived,
    required TResult Function() userReceived,
    required TResult Function() failureReceived,
  }) {
    return signInWithFacebookPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(String emailString)? emailChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? signInWithFacebookPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWithApplePressed,
    TResult Function()? invitationsReceived,
    TResult Function()? friendRequestsReceived,
    TResult Function()? userReceived,
    TResult Function()? failureReceived,
    required TResult orElse(),
  }) {
    if (signInWithFacebookPressed != null) {
      return signInWithFacebookPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInPressed value) signInPressed,
    required TResult Function(SignInWithFacebookPressed value)
        signInWithFacebookPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(SignInWithApplePressed value)
        signInWithApplePressed,
    required TResult Function(InvitationsReceived value) invitationsReceived,
    required TResult Function(FriendRequestsReceived value)
        friendRequestsReceived,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return signInWithFacebookPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SignInWithApplePressed value)? signInWithApplePressed,
    TResult Function(InvitationsReceived value)? invitationsReceived,
    TResult Function(FriendRequestsReceived value)? friendRequestsReceived,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (signInWithFacebookPressed != null) {
      return signInWithFacebookPressed(this);
    }
    return orElse();
  }
}

abstract class SignInWithFacebookPressed implements SignInEvent {
  const factory SignInWithFacebookPressed() = _$SignInWithFacebookPressed;
}

/// @nodoc
abstract class $SignInWithGooglePressedCopyWith<$Res> {
  factory $SignInWithGooglePressedCopyWith(SignInWithGooglePressed value,
          $Res Function(SignInWithGooglePressed) then) =
      _$SignInWithGooglePressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInWithGooglePressedCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements $SignInWithGooglePressedCopyWith<$Res> {
  _$SignInWithGooglePressedCopyWithImpl(SignInWithGooglePressed _value,
      $Res Function(SignInWithGooglePressed) _then)
      : super(_value, (v) => _then(v as SignInWithGooglePressed));

  @override
  SignInWithGooglePressed get _value => super._value as SignInWithGooglePressed;
}

/// @nodoc

class _$SignInWithGooglePressed implements SignInWithGooglePressed {
  const _$SignInWithGooglePressed();

  @override
  String toString() {
    return 'SignInEvent.signInWithGooglePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInWithGooglePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function() signInPressed,
    required TResult Function() signInWithFacebookPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() signInWithApplePressed,
    required TResult Function() invitationsReceived,
    required TResult Function() friendRequestsReceived,
    required TResult Function() userReceived,
    required TResult Function() failureReceived,
  }) {
    return signInWithGooglePressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(String emailString)? emailChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? signInWithFacebookPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWithApplePressed,
    TResult Function()? invitationsReceived,
    TResult Function()? friendRequestsReceived,
    TResult Function()? userReceived,
    TResult Function()? failureReceived,
    required TResult orElse(),
  }) {
    if (signInWithGooglePressed != null) {
      return signInWithGooglePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInPressed value) signInPressed,
    required TResult Function(SignInWithFacebookPressed value)
        signInWithFacebookPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(SignInWithApplePressed value)
        signInWithApplePressed,
    required TResult Function(InvitationsReceived value) invitationsReceived,
    required TResult Function(FriendRequestsReceived value)
        friendRequestsReceived,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return signInWithGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SignInWithApplePressed value)? signInWithApplePressed,
    TResult Function(InvitationsReceived value)? invitationsReceived,
    TResult Function(FriendRequestsReceived value)? friendRequestsReceived,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (signInWithGooglePressed != null) {
      return signInWithGooglePressed(this);
    }
    return orElse();
  }
}

abstract class SignInWithGooglePressed implements SignInEvent {
  const factory SignInWithGooglePressed() = _$SignInWithGooglePressed;
}

/// @nodoc
abstract class $SignInWithApplePressedCopyWith<$Res> {
  factory $SignInWithApplePressedCopyWith(SignInWithApplePressed value,
          $Res Function(SignInWithApplePressed) then) =
      _$SignInWithApplePressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInWithApplePressedCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements $SignInWithApplePressedCopyWith<$Res> {
  _$SignInWithApplePressedCopyWithImpl(SignInWithApplePressed _value,
      $Res Function(SignInWithApplePressed) _then)
      : super(_value, (v) => _then(v as SignInWithApplePressed));

  @override
  SignInWithApplePressed get _value => super._value as SignInWithApplePressed;
}

/// @nodoc

class _$SignInWithApplePressed implements SignInWithApplePressed {
  const _$SignInWithApplePressed();

  @override
  String toString() {
    return 'SignInEvent.signInWithApplePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInWithApplePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function() signInPressed,
    required TResult Function() signInWithFacebookPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() signInWithApplePressed,
    required TResult Function() invitationsReceived,
    required TResult Function() friendRequestsReceived,
    required TResult Function() userReceived,
    required TResult Function() failureReceived,
  }) {
    return signInWithApplePressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(String emailString)? emailChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? signInWithFacebookPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWithApplePressed,
    TResult Function()? invitationsReceived,
    TResult Function()? friendRequestsReceived,
    TResult Function()? userReceived,
    TResult Function()? failureReceived,
    required TResult orElse(),
  }) {
    if (signInWithApplePressed != null) {
      return signInWithApplePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInPressed value) signInPressed,
    required TResult Function(SignInWithFacebookPressed value)
        signInWithFacebookPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(SignInWithApplePressed value)
        signInWithApplePressed,
    required TResult Function(InvitationsReceived value) invitationsReceived,
    required TResult Function(FriendRequestsReceived value)
        friendRequestsReceived,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return signInWithApplePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SignInWithApplePressed value)? signInWithApplePressed,
    TResult Function(InvitationsReceived value)? invitationsReceived,
    TResult Function(FriendRequestsReceived value)? friendRequestsReceived,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (signInWithApplePressed != null) {
      return signInWithApplePressed(this);
    }
    return orElse();
  }
}

abstract class SignInWithApplePressed implements SignInEvent {
  const factory SignInWithApplePressed() = _$SignInWithApplePressed;
}

/// @nodoc
abstract class $InvitationsReceivedCopyWith<$Res> {
  factory $InvitationsReceivedCopyWith(
          InvitationsReceived value, $Res Function(InvitationsReceived) then) =
      _$InvitationsReceivedCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvitationsReceivedCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements $InvitationsReceivedCopyWith<$Res> {
  _$InvitationsReceivedCopyWithImpl(
      InvitationsReceived _value, $Res Function(InvitationsReceived) _then)
      : super(_value, (v) => _then(v as InvitationsReceived));

  @override
  InvitationsReceived get _value => super._value as InvitationsReceived;
}

/// @nodoc

class _$InvitationsReceived implements InvitationsReceived {
  const _$InvitationsReceived();

  @override
  String toString() {
    return 'SignInEvent.invitationsReceived()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvitationsReceived);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function() signInPressed,
    required TResult Function() signInWithFacebookPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() signInWithApplePressed,
    required TResult Function() invitationsReceived,
    required TResult Function() friendRequestsReceived,
    required TResult Function() userReceived,
    required TResult Function() failureReceived,
  }) {
    return invitationsReceived();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(String emailString)? emailChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? signInWithFacebookPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWithApplePressed,
    TResult Function()? invitationsReceived,
    TResult Function()? friendRequestsReceived,
    TResult Function()? userReceived,
    TResult Function()? failureReceived,
    required TResult orElse(),
  }) {
    if (invitationsReceived != null) {
      return invitationsReceived();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInPressed value) signInPressed,
    required TResult Function(SignInWithFacebookPressed value)
        signInWithFacebookPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(SignInWithApplePressed value)
        signInWithApplePressed,
    required TResult Function(InvitationsReceived value) invitationsReceived,
    required TResult Function(FriendRequestsReceived value)
        friendRequestsReceived,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return invitationsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SignInWithApplePressed value)? signInWithApplePressed,
    TResult Function(InvitationsReceived value)? invitationsReceived,
    TResult Function(FriendRequestsReceived value)? friendRequestsReceived,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (invitationsReceived != null) {
      return invitationsReceived(this);
    }
    return orElse();
  }
}

abstract class InvitationsReceived implements SignInEvent {
  const factory InvitationsReceived() = _$InvitationsReceived;
}

/// @nodoc
abstract class $FriendRequestsReceivedCopyWith<$Res> {
  factory $FriendRequestsReceivedCopyWith(FriendRequestsReceived value,
          $Res Function(FriendRequestsReceived) then) =
      _$FriendRequestsReceivedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FriendRequestsReceivedCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements $FriendRequestsReceivedCopyWith<$Res> {
  _$FriendRequestsReceivedCopyWithImpl(FriendRequestsReceived _value,
      $Res Function(FriendRequestsReceived) _then)
      : super(_value, (v) => _then(v as FriendRequestsReceived));

  @override
  FriendRequestsReceived get _value => super._value as FriendRequestsReceived;
}

/// @nodoc

class _$FriendRequestsReceived implements FriendRequestsReceived {
  const _$FriendRequestsReceived();

  @override
  String toString() {
    return 'SignInEvent.friendRequestsReceived()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FriendRequestsReceived);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function() signInPressed,
    required TResult Function() signInWithFacebookPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() signInWithApplePressed,
    required TResult Function() invitationsReceived,
    required TResult Function() friendRequestsReceived,
    required TResult Function() userReceived,
    required TResult Function() failureReceived,
  }) {
    return friendRequestsReceived();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(String emailString)? emailChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? signInWithFacebookPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWithApplePressed,
    TResult Function()? invitationsReceived,
    TResult Function()? friendRequestsReceived,
    TResult Function()? userReceived,
    TResult Function()? failureReceived,
    required TResult orElse(),
  }) {
    if (friendRequestsReceived != null) {
      return friendRequestsReceived();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInPressed value) signInPressed,
    required TResult Function(SignInWithFacebookPressed value)
        signInWithFacebookPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(SignInWithApplePressed value)
        signInWithApplePressed,
    required TResult Function(InvitationsReceived value) invitationsReceived,
    required TResult Function(FriendRequestsReceived value)
        friendRequestsReceived,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return friendRequestsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SignInWithApplePressed value)? signInWithApplePressed,
    TResult Function(InvitationsReceived value)? invitationsReceived,
    TResult Function(FriendRequestsReceived value)? friendRequestsReceived,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (friendRequestsReceived != null) {
      return friendRequestsReceived(this);
    }
    return orElse();
  }
}

abstract class FriendRequestsReceived implements SignInEvent {
  const factory FriendRequestsReceived() = _$FriendRequestsReceived;
}

/// @nodoc
abstract class $UserReceivedCopyWith<$Res> {
  factory $UserReceivedCopyWith(
          UserReceived value, $Res Function(UserReceived) then) =
      _$UserReceivedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserReceivedCopyWithImpl<$Res> extends _$SignInEventCopyWithImpl<$Res>
    implements $UserReceivedCopyWith<$Res> {
  _$UserReceivedCopyWithImpl(
      UserReceived _value, $Res Function(UserReceived) _then)
      : super(_value, (v) => _then(v as UserReceived));

  @override
  UserReceived get _value => super._value as UserReceived;
}

/// @nodoc

class _$UserReceived implements UserReceived {
  const _$UserReceived();

  @override
  String toString() {
    return 'SignInEvent.userReceived()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserReceived);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function() signInPressed,
    required TResult Function() signInWithFacebookPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() signInWithApplePressed,
    required TResult Function() invitationsReceived,
    required TResult Function() friendRequestsReceived,
    required TResult Function() userReceived,
    required TResult Function() failureReceived,
  }) {
    return userReceived();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(String emailString)? emailChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? signInWithFacebookPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWithApplePressed,
    TResult Function()? invitationsReceived,
    TResult Function()? friendRequestsReceived,
    TResult Function()? userReceived,
    TResult Function()? failureReceived,
    required TResult orElse(),
  }) {
    if (userReceived != null) {
      return userReceived();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInPressed value) signInPressed,
    required TResult Function(SignInWithFacebookPressed value)
        signInWithFacebookPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(SignInWithApplePressed value)
        signInWithApplePressed,
    required TResult Function(InvitationsReceived value) invitationsReceived,
    required TResult Function(FriendRequestsReceived value)
        friendRequestsReceived,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return userReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SignInWithApplePressed value)? signInWithApplePressed,
    TResult Function(InvitationsReceived value)? invitationsReceived,
    TResult Function(FriendRequestsReceived value)? friendRequestsReceived,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (userReceived != null) {
      return userReceived(this);
    }
    return orElse();
  }
}

abstract class UserReceived implements SignInEvent {
  const factory UserReceived() = _$UserReceived;
}

/// @nodoc
abstract class $FailureReceivedCopyWith<$Res> {
  factory $FailureReceivedCopyWith(
          FailureReceived value, $Res Function(FailureReceived) then) =
      _$FailureReceivedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureReceivedCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements $FailureReceivedCopyWith<$Res> {
  _$FailureReceivedCopyWithImpl(
      FailureReceived _value, $Res Function(FailureReceived) _then)
      : super(_value, (v) => _then(v as FailureReceived));

  @override
  FailureReceived get _value => super._value as FailureReceived;
}

/// @nodoc

class _$FailureReceived implements FailureReceived {
  const _$FailureReceived();

  @override
  String toString() {
    return 'SignInEvent.failureReceived()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FailureReceived);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function() signInPressed,
    required TResult Function() signInWithFacebookPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() signInWithApplePressed,
    required TResult Function() invitationsReceived,
    required TResult Function() friendRequestsReceived,
    required TResult Function() userReceived,
    required TResult Function() failureReceived,
  }) {
    return failureReceived();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(String emailString)? emailChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? signInWithFacebookPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWithApplePressed,
    TResult Function()? invitationsReceived,
    TResult Function()? friendRequestsReceived,
    TResult Function()? userReceived,
    TResult Function()? failureReceived,
    required TResult orElse(),
  }) {
    if (failureReceived != null) {
      return failureReceived();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInPressed value) signInPressed,
    required TResult Function(SignInWithFacebookPressed value)
        signInWithFacebookPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(SignInWithApplePressed value)
        signInWithApplePressed,
    required TResult Function(InvitationsReceived value) invitationsReceived,
    required TResult Function(FriendRequestsReceived value)
        friendRequestsReceived,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return failureReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SignInWithApplePressed value)? signInWithApplePressed,
    TResult Function(InvitationsReceived value)? invitationsReceived,
    TResult Function(FriendRequestsReceived value)? friendRequestsReceived,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (failureReceived != null) {
      return failureReceived(this);
    }
    return orElse();
  }
}

abstract class FailureReceived implements SignInEvent {
  const factory FailureReceived() = _$FailureReceived;
}

/// @nodoc
class _$SignInStateTearOff {
  const _$SignInStateTearOff();

  _SignInState call(
      {required EmailAddress email,
      required Password password,
      required bool showErrorMessages,
      required bool isSubmitting,
      Either<AuthFailure, Unit>? authFailureOrSuccess,
      required bool invitationsReceived,
      required bool friendRequestsReceived,
      required bool userReceived}) {
    return _SignInState(
      email: email,
      password: password,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailureOrSuccess: authFailureOrSuccess,
      invitationsReceived: invitationsReceived,
      friendRequestsReceived: friendRequestsReceived,
      userReceived: userReceived,
    );
  }
}

/// @nodoc
const $SignInState = _$SignInStateTearOff();

/// @nodoc
mixin _$SignInState {
  EmailAddress get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Either<AuthFailure, Unit>? get authFailureOrSuccess =>
      throw _privateConstructorUsedError;
  bool get invitationsReceived => throw _privateConstructorUsedError;
  bool get friendRequestsReceived => throw _privateConstructorUsedError;
  bool get userReceived => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress email,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Either<AuthFailure, Unit>? authFailureOrSuccess,
      bool invitationsReceived,
      bool friendRequestsReceived,
      bool userReceived});
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res> implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  final SignInState _value;
  // ignore: unused_field
  final $Res Function(SignInState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccess = freezed,
    Object? invitationsReceived = freezed,
    Object? friendRequestsReceived = freezed,
    Object? userReceived = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccess: authFailureOrSuccess == freezed
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<AuthFailure, Unit>?,
      invitationsReceived: invitationsReceived == freezed
          ? _value.invitationsReceived
          : invitationsReceived // ignore: cast_nullable_to_non_nullable
              as bool,
      friendRequestsReceived: friendRequestsReceived == freezed
          ? _value.friendRequestsReceived
          : friendRequestsReceived // ignore: cast_nullable_to_non_nullable
              as bool,
      userReceived: userReceived == freezed
          ? _value.userReceived
          : userReceived // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SignInStateCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$SignInStateCopyWith(
          _SignInState value, $Res Function(_SignInState) then) =
      __$SignInStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress email,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Either<AuthFailure, Unit>? authFailureOrSuccess,
      bool invitationsReceived,
      bool friendRequestsReceived,
      bool userReceived});
}

/// @nodoc
class __$SignInStateCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
    implements _$SignInStateCopyWith<$Res> {
  __$SignInStateCopyWithImpl(
      _SignInState _value, $Res Function(_SignInState) _then)
      : super(_value, (v) => _then(v as _SignInState));

  @override
  _SignInState get _value => super._value as _SignInState;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccess = freezed,
    Object? invitationsReceived = freezed,
    Object? friendRequestsReceived = freezed,
    Object? userReceived = freezed,
  }) {
    return _then(_SignInState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccess: authFailureOrSuccess == freezed
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<AuthFailure, Unit>?,
      invitationsReceived: invitationsReceived == freezed
          ? _value.invitationsReceived
          : invitationsReceived // ignore: cast_nullable_to_non_nullable
              as bool,
      friendRequestsReceived: friendRequestsReceived == freezed
          ? _value.friendRequestsReceived
          : friendRequestsReceived // ignore: cast_nullable_to_non_nullable
              as bool,
      userReceived: userReceived == freezed
          ? _value.userReceived
          : userReceived // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SignInState implements _SignInState {
  const _$_SignInState(
      {required this.email,
      required this.password,
      required this.showErrorMessages,
      required this.isSubmitting,
      this.authFailureOrSuccess,
      required this.invitationsReceived,
      required this.friendRequestsReceived,
      required this.userReceived});

  @override
  final EmailAddress email;
  @override
  final Password password;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Either<AuthFailure, Unit>? authFailureOrSuccess;
  @override
  final bool invitationsReceived;
  @override
  final bool friendRequestsReceived;
  @override
  final bool userReceived;

  @override
  String toString() {
    return 'SignInState(email: $email, password: $password, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccess: $authFailureOrSuccess, invitationsReceived: $invitationsReceived, friendRequestsReceived: $friendRequestsReceived, userReceived: $userReceived)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInState &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authFailureOrSuccess, authFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccess, authFailureOrSuccess)) &&
            (identical(other.invitationsReceived, invitationsReceived) ||
                const DeepCollectionEquality()
                    .equals(other.invitationsReceived, invitationsReceived)) &&
            (identical(other.friendRequestsReceived, friendRequestsReceived) ||
                const DeepCollectionEquality().equals(
                    other.friendRequestsReceived, friendRequestsReceived)) &&
            (identical(other.userReceived, userReceived) ||
                const DeepCollectionEquality()
                    .equals(other.userReceived, userReceived)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccess) ^
      const DeepCollectionEquality().hash(invitationsReceived) ^
      const DeepCollectionEquality().hash(friendRequestsReceived) ^
      const DeepCollectionEquality().hash(userReceived);

  @JsonKey(ignore: true)
  @override
  _$SignInStateCopyWith<_SignInState> get copyWith =>
      __$SignInStateCopyWithImpl<_SignInState>(this, _$identity);
}

abstract class _SignInState implements SignInState {
  const factory _SignInState(
      {required EmailAddress email,
      required Password password,
      required bool showErrorMessages,
      required bool isSubmitting,
      Either<AuthFailure, Unit>? authFailureOrSuccess,
      required bool invitationsReceived,
      required bool friendRequestsReceived,
      required bool userReceived}) = _$_SignInState;

  @override
  EmailAddress get email => throw _privateConstructorUsedError;
  @override
  Password get password => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Either<AuthFailure, Unit>? get authFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  bool get invitationsReceived => throw _privateConstructorUsedError;
  @override
  bool get friendRequestsReceived => throw _privateConstructorUsedError;
  @override
  bool get userReceived => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignInStateCopyWith<_SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}
