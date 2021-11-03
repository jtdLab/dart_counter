// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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

  EmailChanged emailChanged(String newEmailString) {
    return EmailChanged(
      newEmailString,
    );
  }

  PasswordChanged passwordChanged(String newPasswordString) {
    return PasswordChanged(
      newPasswordString,
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
}

/// @nodoc
const $SignInEvent = _$SignInEventTearOff();

/// @nodoc
mixin _$SignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newEmailString) emailChanged,
    required TResult Function(String newPasswordString) passwordChanged,
    required TResult Function() signInPressed,
    required TResult Function() signInWithFacebookPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() signInWithApplePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newEmailString)? emailChanged,
    TResult Function(String newPasswordString)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? signInWithFacebookPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWithApplePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newEmailString)? emailChanged,
    TResult Function(String newPasswordString)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? signInWithFacebookPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWithApplePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInPressed value) signInPressed,
    required TResult Function(SignInWithFacebookPressed value)
        signInWithFacebookPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(SignInWithApplePressed value)
        signInWithApplePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SignInWithApplePressed value)? signInWithApplePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SignInWithApplePressed value)? signInWithApplePressed,
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
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String newEmailString});
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
    Object? newEmailString = freezed,
  }) {
    return _then(EmailChanged(
      newEmailString == freezed
          ? _value.newEmailString
          : newEmailString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.newEmailString);

  @override
  final String newEmailString;

  @override
  String toString() {
    return 'SignInEvent.emailChanged(newEmailString: $newEmailString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmailChanged &&
            (identical(other.newEmailString, newEmailString) ||
                other.newEmailString == newEmailString));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newEmailString);

  @JsonKey(ignore: true)
  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newEmailString) emailChanged,
    required TResult Function(String newPasswordString) passwordChanged,
    required TResult Function() signInPressed,
    required TResult Function() signInWithFacebookPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() signInWithApplePressed,
  }) {
    return emailChanged(newEmailString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newEmailString)? emailChanged,
    TResult Function(String newPasswordString)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? signInWithFacebookPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWithApplePressed,
  }) {
    return emailChanged?.call(newEmailString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newEmailString)? emailChanged,
    TResult Function(String newPasswordString)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? signInWithFacebookPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWithApplePressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(newEmailString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInPressed value) signInPressed,
    required TResult Function(SignInWithFacebookPressed value)
        signInWithFacebookPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(SignInWithApplePressed value)
        signInWithApplePressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SignInWithApplePressed value)? signInWithApplePressed,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SignInWithApplePressed value)? signInWithApplePressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SignInEvent {
  const factory EmailChanged(String newEmailString) = _$EmailChanged;

  String get newEmailString;
  @JsonKey(ignore: true)
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String newPasswordString});
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
    Object? newPasswordString = freezed,
  }) {
    return _then(PasswordChanged(
      newPasswordString == freezed
          ? _value.newPasswordString
          : newPasswordString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.newPasswordString);

  @override
  final String newPasswordString;

  @override
  String toString() {
    return 'SignInEvent.passwordChanged(newPasswordString: $newPasswordString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PasswordChanged &&
            (identical(other.newPasswordString, newPasswordString) ||
                other.newPasswordString == newPasswordString));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newPasswordString);

  @JsonKey(ignore: true)
  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newEmailString) emailChanged,
    required TResult Function(String newPasswordString) passwordChanged,
    required TResult Function() signInPressed,
    required TResult Function() signInWithFacebookPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() signInWithApplePressed,
  }) {
    return passwordChanged(newPasswordString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newEmailString)? emailChanged,
    TResult Function(String newPasswordString)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? signInWithFacebookPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWithApplePressed,
  }) {
    return passwordChanged?.call(newPasswordString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newEmailString)? emailChanged,
    TResult Function(String newPasswordString)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? signInWithFacebookPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWithApplePressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(newPasswordString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInPressed value) signInPressed,
    required TResult Function(SignInWithFacebookPressed value)
        signInWithFacebookPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(SignInWithApplePressed value)
        signInWithApplePressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SignInWithApplePressed value)? signInWithApplePressed,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SignInWithApplePressed value)? signInWithApplePressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignInEvent {
  const factory PasswordChanged(String newPasswordString) = _$PasswordChanged;

  String get newPasswordString;
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignInPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newEmailString) emailChanged,
    required TResult Function(String newPasswordString) passwordChanged,
    required TResult Function() signInPressed,
    required TResult Function() signInWithFacebookPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() signInWithApplePressed,
  }) {
    return signInPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newEmailString)? emailChanged,
    TResult Function(String newPasswordString)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? signInWithFacebookPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWithApplePressed,
  }) {
    return signInPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newEmailString)? emailChanged,
    TResult Function(String newPasswordString)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? signInWithFacebookPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWithApplePressed,
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
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInPressed value) signInPressed,
    required TResult Function(SignInWithFacebookPressed value)
        signInWithFacebookPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(SignInWithApplePressed value)
        signInWithApplePressed,
  }) {
    return signInPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SignInWithApplePressed value)? signInWithApplePressed,
  }) {
    return signInPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SignInWithApplePressed value)? signInWithApplePressed,
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignInWithFacebookPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newEmailString) emailChanged,
    required TResult Function(String newPasswordString) passwordChanged,
    required TResult Function() signInPressed,
    required TResult Function() signInWithFacebookPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() signInWithApplePressed,
  }) {
    return signInWithFacebookPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newEmailString)? emailChanged,
    TResult Function(String newPasswordString)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? signInWithFacebookPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWithApplePressed,
  }) {
    return signInWithFacebookPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newEmailString)? emailChanged,
    TResult Function(String newPasswordString)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? signInWithFacebookPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWithApplePressed,
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
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInPressed value) signInPressed,
    required TResult Function(SignInWithFacebookPressed value)
        signInWithFacebookPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(SignInWithApplePressed value)
        signInWithApplePressed,
  }) {
    return signInWithFacebookPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SignInWithApplePressed value)? signInWithApplePressed,
  }) {
    return signInWithFacebookPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SignInWithApplePressed value)? signInWithApplePressed,
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignInWithGooglePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newEmailString) emailChanged,
    required TResult Function(String newPasswordString) passwordChanged,
    required TResult Function() signInPressed,
    required TResult Function() signInWithFacebookPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() signInWithApplePressed,
  }) {
    return signInWithGooglePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newEmailString)? emailChanged,
    TResult Function(String newPasswordString)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? signInWithFacebookPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWithApplePressed,
  }) {
    return signInWithGooglePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newEmailString)? emailChanged,
    TResult Function(String newPasswordString)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? signInWithFacebookPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWithApplePressed,
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
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInPressed value) signInPressed,
    required TResult Function(SignInWithFacebookPressed value)
        signInWithFacebookPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(SignInWithApplePressed value)
        signInWithApplePressed,
  }) {
    return signInWithGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SignInWithApplePressed value)? signInWithApplePressed,
  }) {
    return signInWithGooglePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SignInWithApplePressed value)? signInWithApplePressed,
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignInWithApplePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newEmailString) emailChanged,
    required TResult Function(String newPasswordString) passwordChanged,
    required TResult Function() signInPressed,
    required TResult Function() signInWithFacebookPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() signInWithApplePressed,
  }) {
    return signInWithApplePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newEmailString)? emailChanged,
    TResult Function(String newPasswordString)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? signInWithFacebookPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWithApplePressed,
  }) {
    return signInWithApplePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newEmailString)? emailChanged,
    TResult Function(String newPasswordString)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? signInWithFacebookPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWithApplePressed,
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
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInPressed value) signInPressed,
    required TResult Function(SignInWithFacebookPressed value)
        signInWithFacebookPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(SignInWithApplePressed value)
        signInWithApplePressed,
  }) {
    return signInWithApplePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SignInWithApplePressed value)? signInWithApplePressed,
  }) {
    return signInWithApplePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SignInWithApplePressed value)? signInWithApplePressed,
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
class _$SignInStateTearOff {
  const _$SignInStateTearOff();

  _SignInState call(
      {required EmailAddress email,
      required Password password,
      required bool showErrorMessages,
      required bool isSubmitting,
      AuthFailure? authFailure,
      required bool isSignedIn}) {
    return _SignInState(
      email: email,
      password: password,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailure: authFailure,
      isSignedIn: isSignedIn,
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
  AuthFailure? get authFailure => throw _privateConstructorUsedError;
  bool get isSignedIn => throw _privateConstructorUsedError;

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
      AuthFailure? authFailure,
      bool isSignedIn});

  $AuthFailureCopyWith<$Res>? get authFailure;
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
    Object? authFailure = freezed,
    Object? isSignedIn = freezed,
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
      authFailure: authFailure == freezed
          ? _value.authFailure
          : authFailure // ignore: cast_nullable_to_non_nullable
              as AuthFailure?,
      isSignedIn: isSignedIn == freezed
          ? _value.isSignedIn
          : isSignedIn // ignore: cast_nullable_to_non_nullable
              as bool,
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
      AuthFailure? authFailure,
      bool isSignedIn});

  @override
  $AuthFailureCopyWith<$Res>? get authFailure;
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
    Object? authFailure = freezed,
    Object? isSignedIn = freezed,
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
      authFailure: authFailure == freezed
          ? _value.authFailure
          : authFailure // ignore: cast_nullable_to_non_nullable
              as AuthFailure?,
      isSignedIn: isSignedIn == freezed
          ? _value.isSignedIn
          : isSignedIn // ignore: cast_nullable_to_non_nullable
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
      this.authFailure,
      required this.isSignedIn});

  @override
  final EmailAddress email;
  @override
  final Password password;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final AuthFailure? authFailure;
  @override
  final bool isSignedIn;

  @override
  String toString() {
    return 'SignInState(email: $email, password: $password, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailure: $authFailure, isSignedIn: $isSignedIn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignInState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.authFailure, authFailure) ||
                other.authFailure == authFailure) &&
            (identical(other.isSignedIn, isSignedIn) ||
                other.isSignedIn == isSignedIn));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password,
      showErrorMessages, isSubmitting, authFailure, isSignedIn);

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
      AuthFailure? authFailure,
      required bool isSignedIn}) = _$_SignInState;

  @override
  EmailAddress get email;
  @override
  Password get password;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  AuthFailure? get authFailure;
  @override
  bool get isSignedIn;
  @override
  @JsonKey(ignore: true)
  _$SignInStateCopyWith<_SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}
