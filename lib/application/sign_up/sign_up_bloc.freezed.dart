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
}

/// @nodoc
const $SignUpEvent = _$SignUpEventTearOff();

/// @nodoc
mixin _$SignUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String usernameString) usernameChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function(String passwordAgainString) passwordAgainChanged,
    required TResult Function() signUpPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String usernameString)? usernameChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(String passwordAgainString)? passwordAgainChanged,
    TResult Function()? signUpPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(_asswordChanged value) passwordChanged,
    required TResult Function(PasswordAgainChanged value) passwordAgainChanged,
    required TResult Function(SignUpPressed value) signUpPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(_asswordChanged value)? passwordChanged,
    TResult Function(PasswordAgainChanged value)? passwordAgainChanged,
    TResult Function(SignUpPressed value)? signUpPressed,
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
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String usernameString) usernameChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function(String passwordAgainString) passwordAgainChanged,
    required TResult Function() signUpPressed,
  }) {
    return emailChanged(emailString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String usernameString)? usernameChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(String passwordAgainString)? passwordAgainChanged,
    TResult Function()? signUpPressed,
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
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(_asswordChanged value) passwordChanged,
    required TResult Function(PasswordAgainChanged value) passwordAgainChanged,
    required TResult Function(SignUpPressed value) signUpPressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(_asswordChanged value)? passwordChanged,
    TResult Function(PasswordAgainChanged value)? passwordAgainChanged,
    TResult Function(SignUpPressed value)? signUpPressed,
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
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String usernameString) usernameChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function(String passwordAgainString) passwordAgainChanged,
    required TResult Function() signUpPressed,
  }) {
    return usernameChanged(usernameString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String usernameString)? usernameChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(String passwordAgainString)? passwordAgainChanged,
    TResult Function()? signUpPressed,
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
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(_asswordChanged value) passwordChanged,
    required TResult Function(PasswordAgainChanged value) passwordAgainChanged,
    required TResult Function(SignUpPressed value) signUpPressed,
  }) {
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(_asswordChanged value)? passwordChanged,
    TResult Function(PasswordAgainChanged value)? passwordAgainChanged,
    TResult Function(SignUpPressed value)? signUpPressed,
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
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String usernameString) usernameChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function(String passwordAgainString) passwordAgainChanged,
    required TResult Function() signUpPressed,
  }) {
    return passwordChanged(passwordString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String usernameString)? usernameChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(String passwordAgainString)? passwordAgainChanged,
    TResult Function()? signUpPressed,
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
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(_asswordChanged value) passwordChanged,
    required TResult Function(PasswordAgainChanged value) passwordAgainChanged,
    required TResult Function(SignUpPressed value) signUpPressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(_asswordChanged value)? passwordChanged,
    TResult Function(PasswordAgainChanged value)? passwordAgainChanged,
    TResult Function(SignUpPressed value)? signUpPressed,
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
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String usernameString) usernameChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function(String passwordAgainString) passwordAgainChanged,
    required TResult Function() signUpPressed,
  }) {
    return passwordAgainChanged(passwordAgainString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String usernameString)? usernameChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(String passwordAgainString)? passwordAgainChanged,
    TResult Function()? signUpPressed,
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
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(_asswordChanged value) passwordChanged,
    required TResult Function(PasswordAgainChanged value) passwordAgainChanged,
    required TResult Function(SignUpPressed value) signUpPressed,
  }) {
    return passwordAgainChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(_asswordChanged value)? passwordChanged,
    TResult Function(PasswordAgainChanged value)? passwordAgainChanged,
    TResult Function(SignUpPressed value)? signUpPressed,
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
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String usernameString) usernameChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function(String passwordAgainString) passwordAgainChanged,
    required TResult Function() signUpPressed,
  }) {
    return signUpPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String usernameString)? usernameChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(String passwordAgainString)? passwordAgainChanged,
    TResult Function()? signUpPressed,
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
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(_asswordChanged value) passwordChanged,
    required TResult Function(PasswordAgainChanged value) passwordAgainChanged,
    required TResult Function(SignUpPressed value) signUpPressed,
  }) {
    return signUpPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(_asswordChanged value)? passwordChanged,
    TResult Function(PasswordAgainChanged value)? passwordAgainChanged,
    TResult Function(SignUpPressed value)? signUpPressed,
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
class _$SignUpStateTearOff {
  const _$SignUpStateTearOff();

  _SignUpState call(
      {required EmailAddress email,
      required Username username,
      required Password password,
      required Password passwordAgain,
      required bool showErrorMessages,
      required bool isSubmitting,
      AuthFailure? authFailure}) {
    return _SignUpState(
      email: email,
      username: username,
      password: password,
      passwordAgain: passwordAgain,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailure: authFailure,
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
  AuthFailure? get authFailure => throw _privateConstructorUsedError;

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
      AuthFailure? authFailure});

  $AuthFailureCopyWith<$Res>? get authFailure;
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
    Object? authFailure = freezed,
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
      authFailure: authFailure == freezed
          ? _value.authFailure
          : authFailure // ignore: cast_nullable_to_non_nullable
              as AuthFailure?,
    ));
  }

  @override
  $AuthFailureCopyWith<$Res>? get authFailure {
    if (_value.authFailure == null) {
      return null;
    }

    return $AuthFailureCopyWith<$Res>(_value.authFailure!, (value) {
      return _then(_value.copyWith(authFailure: value));
    });
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
      AuthFailure? authFailure});

  @override
  $AuthFailureCopyWith<$Res>? get authFailure;
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
    Object? authFailure = freezed,
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
      authFailure: authFailure == freezed
          ? _value.authFailure
          : authFailure // ignore: cast_nullable_to_non_nullable
              as AuthFailure?,
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
      this.authFailure});

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
  final AuthFailure? authFailure;

  @override
  String toString() {
    return 'SignUpState(email: $email, username: $username, password: $password, passwordAgain: $passwordAgain, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailure: $authFailure)';
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
            (identical(other.authFailure, authFailure) ||
                const DeepCollectionEquality()
                    .equals(other.authFailure, authFailure)));
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
      const DeepCollectionEquality().hash(authFailure);

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
      AuthFailure? authFailure}) = _$_SignUpState;

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
  AuthFailure? get authFailure => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignUpStateCopyWith<_SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}
