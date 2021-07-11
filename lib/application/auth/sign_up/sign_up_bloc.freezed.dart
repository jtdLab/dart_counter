// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignUpEventTearOff {
  const _$SignUpEventTearOff();

  WatchStarted watchStarted() {
    return const WatchStarted();
  }

  EmailChanged emailChanged(String emailString) {
    return EmailChanged(
      emailString,
    );
  }

  UsernameChanged usernameChanged(String usernameString) {
    return UsernameChanged(
      usernameString,
    );
  }

  _asswordChanged passwordChanged(String passwordString) {
    return _asswordChanged(
      passwordString,
    );
  }

  PasswordAgainChanged passwordAgainChanged(String passwordAgainString) {
    return PasswordAgainChanged(
      passwordAgainString,
    );
  }

  SignUpPressed signUpPressed() {
    return const SignUpPressed();
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
const $SignUpEvent = _$SignUpEventTearOff();

/// @nodoc
mixin _$SignUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String usernameString) usernameChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function(String passwordAgainString) passwordAgainChanged,
    required TResult Function() signUpPressed,
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
    TResult Function(String usernameString)? usernameChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(String passwordAgainString)? passwordAgainChanged,
    TResult Function()? signUpPressed,
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
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(_asswordChanged value) passwordChanged,
    required TResult Function(PasswordAgainChanged value) passwordAgainChanged,
    required TResult Function(SignUpPressed value) signUpPressed,
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
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(_asswordChanged value)? passwordChanged,
    TResult Function(PasswordAgainChanged value)? passwordAgainChanged,
    TResult Function(SignUpPressed value)? signUpPressed,
    TResult Function(InvitationsReceived value)? invitationsReceived,
    TResult Function(FriendRequestsReceived value)? friendRequestsReceived,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
          SignUpEvent value, $Res Function(SignUpEvent) then) =
      _$SignUpEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res> implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

  final SignUpEvent _value;
  // ignore: unused_field
  final $Res Function(SignUpEvent) _then;
}

/// @nodoc
abstract class $WatchStartedCopyWith<$Res> {
  factory $WatchStartedCopyWith(
          WatchStarted value, $Res Function(WatchStarted) then) =
      _$WatchStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatchStartedCopyWithImpl<$Res> extends _$SignUpEventCopyWithImpl<$Res>
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
    return 'SignUpEvent.watchStarted()';
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
    required TResult Function(String usernameString) usernameChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function(String passwordAgainString) passwordAgainChanged,
    required TResult Function() signUpPressed,
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
    TResult Function(String usernameString)? usernameChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(String passwordAgainString)? passwordAgainChanged,
    TResult Function()? signUpPressed,
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
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(_asswordChanged value) passwordChanged,
    required TResult Function(PasswordAgainChanged value) passwordAgainChanged,
    required TResult Function(SignUpPressed value) signUpPressed,
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
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(_asswordChanged value)? passwordChanged,
    TResult Function(PasswordAgainChanged value)? passwordAgainChanged,
    TResult Function(SignUpPressed value)? signUpPressed,
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

abstract class WatchStarted implements SignUpEvent {
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
class _$EmailChangedCopyWithImpl<$Res> extends _$SignUpEventCopyWithImpl<$Res>
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
    return 'SignUpEvent.emailChanged(emailString: $emailString)';
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
    required TResult Function(String usernameString) usernameChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function(String passwordAgainString) passwordAgainChanged,
    required TResult Function() signUpPressed,
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
    TResult Function(String usernameString)? usernameChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(String passwordAgainString)? passwordAgainChanged,
    TResult Function()? signUpPressed,
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
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(_asswordChanged value) passwordChanged,
    required TResult Function(PasswordAgainChanged value) passwordAgainChanged,
    required TResult Function(SignUpPressed value) signUpPressed,
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
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(_asswordChanged value)? passwordChanged,
    TResult Function(PasswordAgainChanged value)? passwordAgainChanged,
    TResult Function(SignUpPressed value)? signUpPressed,
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

abstract class EmailChanged implements SignUpEvent {
  const factory EmailChanged(String emailString) = _$EmailChanged;

  String get emailString => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsernameChangedCopyWith<$Res> {
  factory $UsernameChangedCopyWith(
          UsernameChanged value, $Res Function(UsernameChanged) then) =
      _$UsernameChangedCopyWithImpl<$Res>;
  $Res call({String usernameString});
}

/// @nodoc
class _$UsernameChangedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements $UsernameChangedCopyWith<$Res> {
  _$UsernameChangedCopyWithImpl(
      UsernameChanged _value, $Res Function(UsernameChanged) _then)
      : super(_value, (v) => _then(v as UsernameChanged));

  @override
  UsernameChanged get _value => super._value as UsernameChanged;

  @override
  $Res call({
    Object? usernameString = freezed,
  }) {
    return _then(UsernameChanged(
      usernameString == freezed
          ? _value.usernameString
          : usernameString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UsernameChanged implements UsernameChanged {
  const _$UsernameChanged(this.usernameString);

  @override
  final String usernameString;

  @override
  String toString() {
    return 'SignUpEvent.usernameChanged(usernameString: $usernameString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UsernameChanged &&
            (identical(other.usernameString, usernameString) ||
                const DeepCollectionEquality()
                    .equals(other.usernameString, usernameString)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(usernameString);

  @JsonKey(ignore: true)
  @override
  $UsernameChangedCopyWith<UsernameChanged> get copyWith =>
      _$UsernameChangedCopyWithImpl<UsernameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String usernameString) usernameChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function(String passwordAgainString) passwordAgainChanged,
    required TResult Function() signUpPressed,
    required TResult Function() invitationsReceived,
    required TResult Function() friendRequestsReceived,
    required TResult Function() userReceived,
    required TResult Function() failureReceived,
  }) {
    return usernameChanged(usernameString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(String emailString)? emailChanged,
    TResult Function(String usernameString)? usernameChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(String passwordAgainString)? passwordAgainChanged,
    TResult Function()? signUpPressed,
    TResult Function()? invitationsReceived,
    TResult Function()? friendRequestsReceived,
    TResult Function()? userReceived,
    TResult Function()? failureReceived,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(usernameString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(_asswordChanged value) passwordChanged,
    required TResult Function(PasswordAgainChanged value) passwordAgainChanged,
    required TResult Function(SignUpPressed value) signUpPressed,
    required TResult Function(InvitationsReceived value) invitationsReceived,
    required TResult Function(FriendRequestsReceived value)
        friendRequestsReceived,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(_asswordChanged value)? passwordChanged,
    TResult Function(PasswordAgainChanged value)? passwordAgainChanged,
    TResult Function(SignUpPressed value)? signUpPressed,
    TResult Function(InvitationsReceived value)? invitationsReceived,
    TResult Function(FriendRequestsReceived value)? friendRequestsReceived,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class UsernameChanged implements SignUpEvent {
  const factory UsernameChanged(String usernameString) = _$UsernameChanged;

  String get usernameString => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsernameChangedCopyWith<UsernameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$asswordChangedCopyWith<$Res> {
  factory _$asswordChangedCopyWith(
          _asswordChanged value, $Res Function(_asswordChanged) then) =
      __$asswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordString});
}

/// @nodoc
class __$asswordChangedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements _$asswordChangedCopyWith<$Res> {
  __$asswordChangedCopyWithImpl(
      _asswordChanged _value, $Res Function(_asswordChanged) _then)
      : super(_value, (v) => _then(v as _asswordChanged));

  @override
  _asswordChanged get _value => super._value as _asswordChanged;

  @override
  $Res call({
    Object? passwordString = freezed,
  }) {
    return _then(_asswordChanged(
      passwordString == freezed
          ? _value.passwordString
          : passwordString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_asswordChanged implements _asswordChanged {
  const _$_asswordChanged(this.passwordString);

  @override
  final String passwordString;

  @override
  String toString() {
    return 'SignUpEvent.passwordChanged(passwordString: $passwordString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _asswordChanged &&
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
  _$asswordChangedCopyWith<_asswordChanged> get copyWith =>
      __$asswordChangedCopyWithImpl<_asswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String usernameString) usernameChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function(String passwordAgainString) passwordAgainChanged,
    required TResult Function() signUpPressed,
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
    TResult Function(String usernameString)? usernameChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(String passwordAgainString)? passwordAgainChanged,
    TResult Function()? signUpPressed,
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
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(_asswordChanged value) passwordChanged,
    required TResult Function(PasswordAgainChanged value) passwordAgainChanged,
    required TResult Function(SignUpPressed value) signUpPressed,
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
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(_asswordChanged value)? passwordChanged,
    TResult Function(PasswordAgainChanged value)? passwordAgainChanged,
    TResult Function(SignUpPressed value)? signUpPressed,
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

abstract class _asswordChanged implements SignUpEvent {
  const factory _asswordChanged(String passwordString) = _$_asswordChanged;

  String get passwordString => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$asswordChangedCopyWith<_asswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordAgainChangedCopyWith<$Res> {
  factory $PasswordAgainChangedCopyWith(PasswordAgainChanged value,
          $Res Function(PasswordAgainChanged) then) =
      _$PasswordAgainChangedCopyWithImpl<$Res>;
  $Res call({String passwordAgainString});
}

/// @nodoc
class _$PasswordAgainChangedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements $PasswordAgainChangedCopyWith<$Res> {
  _$PasswordAgainChangedCopyWithImpl(
      PasswordAgainChanged _value, $Res Function(PasswordAgainChanged) _then)
      : super(_value, (v) => _then(v as PasswordAgainChanged));

  @override
  PasswordAgainChanged get _value => super._value as PasswordAgainChanged;

  @override
  $Res call({
    Object? passwordAgainString = freezed,
  }) {
    return _then(PasswordAgainChanged(
      passwordAgainString == freezed
          ? _value.passwordAgainString
          : passwordAgainString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordAgainChanged implements PasswordAgainChanged {
  const _$PasswordAgainChanged(this.passwordAgainString);

  @override
  final String passwordAgainString;

  @override
  String toString() {
    return 'SignUpEvent.passwordAgainChanged(passwordAgainString: $passwordAgainString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordAgainChanged &&
            (identical(other.passwordAgainString, passwordAgainString) ||
                const DeepCollectionEquality()
                    .equals(other.passwordAgainString, passwordAgainString)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(passwordAgainString);

  @JsonKey(ignore: true)
  @override
  $PasswordAgainChangedCopyWith<PasswordAgainChanged> get copyWith =>
      _$PasswordAgainChangedCopyWithImpl<PasswordAgainChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String usernameString) usernameChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function(String passwordAgainString) passwordAgainChanged,
    required TResult Function() signUpPressed,
    required TResult Function() invitationsReceived,
    required TResult Function() friendRequestsReceived,
    required TResult Function() userReceived,
    required TResult Function() failureReceived,
  }) {
    return passwordAgainChanged(passwordAgainString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(String emailString)? emailChanged,
    TResult Function(String usernameString)? usernameChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(String passwordAgainString)? passwordAgainChanged,
    TResult Function()? signUpPressed,
    TResult Function()? invitationsReceived,
    TResult Function()? friendRequestsReceived,
    TResult Function()? userReceived,
    TResult Function()? failureReceived,
    required TResult orElse(),
  }) {
    if (passwordAgainChanged != null) {
      return passwordAgainChanged(passwordAgainString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(_asswordChanged value) passwordChanged,
    required TResult Function(PasswordAgainChanged value) passwordAgainChanged,
    required TResult Function(SignUpPressed value) signUpPressed,
    required TResult Function(InvitationsReceived value) invitationsReceived,
    required TResult Function(FriendRequestsReceived value)
        friendRequestsReceived,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return passwordAgainChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(_asswordChanged value)? passwordChanged,
    TResult Function(PasswordAgainChanged value)? passwordAgainChanged,
    TResult Function(SignUpPressed value)? signUpPressed,
    TResult Function(InvitationsReceived value)? invitationsReceived,
    TResult Function(FriendRequestsReceived value)? friendRequestsReceived,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (passwordAgainChanged != null) {
      return passwordAgainChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordAgainChanged implements SignUpEvent {
  const factory PasswordAgainChanged(String passwordAgainString) =
      _$PasswordAgainChanged;

  String get passwordAgainString => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordAgainChangedCopyWith<PasswordAgainChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpPressedCopyWith<$Res> {
  factory $SignUpPressedCopyWith(
          SignUpPressed value, $Res Function(SignUpPressed) then) =
      _$SignUpPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpPressedCopyWithImpl<$Res> extends _$SignUpEventCopyWithImpl<$Res>
    implements $SignUpPressedCopyWith<$Res> {
  _$SignUpPressedCopyWithImpl(
      SignUpPressed _value, $Res Function(SignUpPressed) _then)
      : super(_value, (v) => _then(v as SignUpPressed));

  @override
  SignUpPressed get _value => super._value as SignUpPressed;
}

/// @nodoc

class _$SignUpPressed implements SignUpPressed {
  const _$SignUpPressed();

  @override
  String toString() {
    return 'SignUpEvent.signUpPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignUpPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String usernameString) usernameChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function(String passwordAgainString) passwordAgainChanged,
    required TResult Function() signUpPressed,
    required TResult Function() invitationsReceived,
    required TResult Function() friendRequestsReceived,
    required TResult Function() userReceived,
    required TResult Function() failureReceived,
  }) {
    return signUpPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(String emailString)? emailChanged,
    TResult Function(String usernameString)? usernameChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(String passwordAgainString)? passwordAgainChanged,
    TResult Function()? signUpPressed,
    TResult Function()? invitationsReceived,
    TResult Function()? friendRequestsReceived,
    TResult Function()? userReceived,
    TResult Function()? failureReceived,
    required TResult orElse(),
  }) {
    if (signUpPressed != null) {
      return signUpPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(_asswordChanged value) passwordChanged,
    required TResult Function(PasswordAgainChanged value) passwordAgainChanged,
    required TResult Function(SignUpPressed value) signUpPressed,
    required TResult Function(InvitationsReceived value) invitationsReceived,
    required TResult Function(FriendRequestsReceived value)
        friendRequestsReceived,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return signUpPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(_asswordChanged value)? passwordChanged,
    TResult Function(PasswordAgainChanged value)? passwordAgainChanged,
    TResult Function(SignUpPressed value)? signUpPressed,
    TResult Function(InvitationsReceived value)? invitationsReceived,
    TResult Function(FriendRequestsReceived value)? friendRequestsReceived,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (signUpPressed != null) {
      return signUpPressed(this);
    }
    return orElse();
  }
}

abstract class SignUpPressed implements SignUpEvent {
  const factory SignUpPressed() = _$SignUpPressed;
}

/// @nodoc
abstract class $InvitationsReceivedCopyWith<$Res> {
  factory $InvitationsReceivedCopyWith(
          InvitationsReceived value, $Res Function(InvitationsReceived) then) =
      _$InvitationsReceivedCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvitationsReceivedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
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
    return 'SignUpEvent.invitationsReceived()';
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
    required TResult Function(String usernameString) usernameChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function(String passwordAgainString) passwordAgainChanged,
    required TResult Function() signUpPressed,
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
    TResult Function(String usernameString)? usernameChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(String passwordAgainString)? passwordAgainChanged,
    TResult Function()? signUpPressed,
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
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(_asswordChanged value) passwordChanged,
    required TResult Function(PasswordAgainChanged value) passwordAgainChanged,
    required TResult Function(SignUpPressed value) signUpPressed,
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
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(_asswordChanged value)? passwordChanged,
    TResult Function(PasswordAgainChanged value)? passwordAgainChanged,
    TResult Function(SignUpPressed value)? signUpPressed,
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

abstract class InvitationsReceived implements SignUpEvent {
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
    extends _$SignUpEventCopyWithImpl<$Res>
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
    return 'SignUpEvent.friendRequestsReceived()';
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
    required TResult Function(String usernameString) usernameChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function(String passwordAgainString) passwordAgainChanged,
    required TResult Function() signUpPressed,
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
    TResult Function(String usernameString)? usernameChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(String passwordAgainString)? passwordAgainChanged,
    TResult Function()? signUpPressed,
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
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(_asswordChanged value) passwordChanged,
    required TResult Function(PasswordAgainChanged value) passwordAgainChanged,
    required TResult Function(SignUpPressed value) signUpPressed,
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
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(_asswordChanged value)? passwordChanged,
    TResult Function(PasswordAgainChanged value)? passwordAgainChanged,
    TResult Function(SignUpPressed value)? signUpPressed,
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

abstract class FriendRequestsReceived implements SignUpEvent {
  const factory FriendRequestsReceived() = _$FriendRequestsReceived;
}

/// @nodoc
abstract class $UserReceivedCopyWith<$Res> {
  factory $UserReceivedCopyWith(
          UserReceived value, $Res Function(UserReceived) then) =
      _$UserReceivedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserReceivedCopyWithImpl<$Res> extends _$SignUpEventCopyWithImpl<$Res>
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
    return 'SignUpEvent.userReceived()';
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
    required TResult Function(String usernameString) usernameChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function(String passwordAgainString) passwordAgainChanged,
    required TResult Function() signUpPressed,
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
    TResult Function(String usernameString)? usernameChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(String passwordAgainString)? passwordAgainChanged,
    TResult Function()? signUpPressed,
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
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(_asswordChanged value) passwordChanged,
    required TResult Function(PasswordAgainChanged value) passwordAgainChanged,
    required TResult Function(SignUpPressed value) signUpPressed,
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
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(_asswordChanged value)? passwordChanged,
    TResult Function(PasswordAgainChanged value)? passwordAgainChanged,
    TResult Function(SignUpPressed value)? signUpPressed,
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

abstract class UserReceived implements SignUpEvent {
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
    extends _$SignUpEventCopyWithImpl<$Res>
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
    return 'SignUpEvent.failureReceived()';
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
    required TResult Function(String usernameString) usernameChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function(String passwordAgainString) passwordAgainChanged,
    required TResult Function() signUpPressed,
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
    TResult Function(String usernameString)? usernameChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(String passwordAgainString)? passwordAgainChanged,
    TResult Function()? signUpPressed,
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
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(_asswordChanged value) passwordChanged,
    required TResult Function(PasswordAgainChanged value) passwordAgainChanged,
    required TResult Function(SignUpPressed value) signUpPressed,
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
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(_asswordChanged value)? passwordChanged,
    TResult Function(PasswordAgainChanged value)? passwordAgainChanged,
    TResult Function(SignUpPressed value)? signUpPressed,
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

abstract class FailureReceived implements SignUpEvent {
  const factory FailureReceived() = _$FailureReceived;
}

/// @nodoc
class _$SignUpStateTearOff {
  const _$SignUpStateTearOff();

  _SignUpState call(
      {required EmailAddress email,
      required Username username,
      required Password password,
      required Password passwordAgain,
      required bool showErrorMessages,
      required bool isSubmitting,
      Either<AuthFailure, Unit>? authFailureOrSuccess,
      required bool invitationsReceived,
      required bool friendRequestsReceived,
      required bool userReceived}) {
    return _SignUpState(
      email: email,
      username: username,
      password: password,
      passwordAgain: passwordAgain,
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
const $SignUpState = _$SignUpStateTearOff();

/// @nodoc
mixin _$SignUpState {
  EmailAddress get email => throw _privateConstructorUsedError;
  Username get username => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  Password get passwordAgain => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Either<AuthFailure, Unit>? get authFailureOrSuccess =>
      throw _privateConstructorUsedError;
  bool get invitationsReceived => throw _privateConstructorUsedError;
  bool get friendRequestsReceived => throw _privateConstructorUsedError;
  bool get userReceived => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress email,
      Username username,
      Password password,
      Password passwordAgain,
      bool showErrorMessages,
      bool isSubmitting,
      Either<AuthFailure, Unit>? authFailureOrSuccess,
      bool invitationsReceived,
      bool friendRequestsReceived,
      bool userReceived});
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res> implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  final SignUpState _value;
  // ignore: unused_field
  final $Res Function(SignUpState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? passwordAgain = freezed,
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
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      passwordAgain: passwordAgain == freezed
          ? _value.passwordAgain
          : passwordAgain // ignore: cast_nullable_to_non_nullable
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
abstract class _$SignUpStateCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$SignUpStateCopyWith(
          _SignUpState value, $Res Function(_SignUpState) then) =
      __$SignUpStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress email,
      Username username,
      Password password,
      Password passwordAgain,
      bool showErrorMessages,
      bool isSubmitting,
      Either<AuthFailure, Unit>? authFailureOrSuccess,
      bool invitationsReceived,
      bool friendRequestsReceived,
      bool userReceived});
}

/// @nodoc
class __$SignUpStateCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
    implements _$SignUpStateCopyWith<$Res> {
  __$SignUpStateCopyWithImpl(
      _SignUpState _value, $Res Function(_SignUpState) _then)
      : super(_value, (v) => _then(v as _SignUpState));

  @override
  _SignUpState get _value => super._value as _SignUpState;

  @override
  $Res call({
    Object? email = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? passwordAgain = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccess = freezed,
    Object? invitationsReceived = freezed,
    Object? friendRequestsReceived = freezed,
    Object? userReceived = freezed,
  }) {
    return _then(_SignUpState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      passwordAgain: passwordAgain == freezed
          ? _value.passwordAgain
          : passwordAgain // ignore: cast_nullable_to_non_nullable
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

class _$_SignUpState implements _SignUpState {
  const _$_SignUpState(
      {required this.email,
      required this.username,
      required this.password,
      required this.passwordAgain,
      required this.showErrorMessages,
      required this.isSubmitting,
      this.authFailureOrSuccess,
      required this.invitationsReceived,
      required this.friendRequestsReceived,
      required this.userReceived});

  @override
  final EmailAddress email;
  @override
  final Username username;
  @override
  final Password password;
  @override
  final Password passwordAgain;
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
    return 'SignUpState(email: $email, username: $username, password: $password, passwordAgain: $passwordAgain, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccess: $authFailureOrSuccess, invitationsReceived: $invitationsReceived, friendRequestsReceived: $friendRequestsReceived, userReceived: $userReceived)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpState &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.passwordAgain, passwordAgain) ||
                const DeepCollectionEquality()
                    .equals(other.passwordAgain, passwordAgain)) &&
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
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(passwordAgain) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccess) ^
      const DeepCollectionEquality().hash(invitationsReceived) ^
      const DeepCollectionEquality().hash(friendRequestsReceived) ^
      const DeepCollectionEquality().hash(userReceived);

  @JsonKey(ignore: true)
  @override
  _$SignUpStateCopyWith<_SignUpState> get copyWith =>
      __$SignUpStateCopyWithImpl<_SignUpState>(this, _$identity);
}

abstract class _SignUpState implements SignUpState {
  const factory _SignUpState(
      {required EmailAddress email,
      required Username username,
      required Password password,
      required Password passwordAgain,
      required bool showErrorMessages,
      required bool isSubmitting,
      Either<AuthFailure, Unit>? authFailureOrSuccess,
      required bool invitationsReceived,
      required bool friendRequestsReceived,
      required bool userReceived}) = _$_SignUpState;

  @override
  EmailAddress get email => throw _privateConstructorUsedError;
  @override
  Username get username => throw _privateConstructorUsedError;
  @override
  Password get password => throw _privateConstructorUsedError;
  @override
  Password get passwordAgain => throw _privateConstructorUsedError;
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
  _$SignUpStateCopyWith<_SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}
