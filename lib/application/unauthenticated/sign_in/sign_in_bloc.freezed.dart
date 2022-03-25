// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
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

  _EmailChanged emailChanged({required String newEmail}) {
    return _EmailChanged(
      newEmail: newEmail,
    );
  }

  _PasswordChanged passwordChanged({required String newPassword}) {
    return _PasswordChanged(
      newPassword: newPassword,
    );
  }

  _SignInPressed signInPressed() {
    return const _SignInPressed();
  }

  _SignInWithFacebookPressed signInWithFacebookPressed() {
    return const _SignInWithFacebookPressed();
  }

  _SignInWithGooglePressed signInWithGooglePressed() {
    return const _SignInWithGooglePressed();
  }

  _SignInWithApplePressed signInWithApplePressed() {
    return const _SignInWithApplePressed();
  }
}

/// @nodoc
const $SignInEvent = _$SignInEventTearOff();

/// @nodoc
mixin _$SignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newEmail) emailChanged,
    required TResult Function(String newPassword) passwordChanged,
    required TResult Function() signInPressed,
    required TResult Function() signInWithFacebookPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() signInWithApplePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newEmail)? emailChanged,
    TResult Function(String newPassword)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? signInWithFacebookPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWithApplePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newEmail)? emailChanged,
    TResult Function(String newPassword)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? signInWithFacebookPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWithApplePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SignInPressed value) signInPressed,
    required TResult Function(_SignInWithFacebookPressed value)
        signInWithFacebookPressed,
    required TResult Function(_SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(_SignInWithApplePressed value)
        signInWithApplePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SignInPressed value)? signInPressed,
    TResult Function(_SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(_SignInWithApplePressed value)? signInWithApplePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SignInPressed value)? signInPressed,
    TResult Function(_SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(_SignInWithApplePressed value)? signInWithApplePressed,
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
abstract class _$EmailChangedCopyWith<$Res> {
  factory _$EmailChangedCopyWith(
          _EmailChanged value, $Res Function(_EmailChanged) then) =
      __$EmailChangedCopyWithImpl<$Res>;
  $Res call({String newEmail});
}

/// @nodoc
class __$EmailChangedCopyWithImpl<$Res> extends _$SignInEventCopyWithImpl<$Res>
    implements _$EmailChangedCopyWith<$Res> {
  __$EmailChangedCopyWithImpl(
      _EmailChanged _value, $Res Function(_EmailChanged) _then)
      : super(_value, (v) => _then(v as _EmailChanged));

  @override
  _EmailChanged get _value => super._value as _EmailChanged;

  @override
  $Res call({
    Object? newEmail = freezed,
  }) {
    return _then(_EmailChanged(
      newEmail: newEmail == freezed
          ? _value.newEmail
          : newEmail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged({required this.newEmail});

  @override
  final String newEmail;

  @override
  String toString() {
    return 'SignInEvent.emailChanged(newEmail: $newEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmailChanged &&
            const DeepCollectionEquality().equals(other.newEmail, newEmail));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newEmail));

  @JsonKey(ignore: true)
  @override
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      __$EmailChangedCopyWithImpl<_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newEmail) emailChanged,
    required TResult Function(String newPassword) passwordChanged,
    required TResult Function() signInPressed,
    required TResult Function() signInWithFacebookPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() signInWithApplePressed,
  }) {
    return emailChanged(newEmail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newEmail)? emailChanged,
    TResult Function(String newPassword)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? signInWithFacebookPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWithApplePressed,
  }) {
    return emailChanged?.call(newEmail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newEmail)? emailChanged,
    TResult Function(String newPassword)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? signInWithFacebookPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWithApplePressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(newEmail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SignInPressed value) signInPressed,
    required TResult Function(_SignInWithFacebookPressed value)
        signInWithFacebookPressed,
    required TResult Function(_SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(_SignInWithApplePressed value)
        signInWithApplePressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SignInPressed value)? signInPressed,
    TResult Function(_SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(_SignInWithApplePressed value)? signInWithApplePressed,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SignInPressed value)? signInPressed,
    TResult Function(_SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(_SignInWithApplePressed value)? signInWithApplePressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements SignInEvent {
  const factory _EmailChanged({required String newEmail}) = _$_EmailChanged;

  String get newEmail;
  @JsonKey(ignore: true)
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PasswordChangedCopyWith<$Res> {
  factory _$PasswordChangedCopyWith(
          _PasswordChanged value, $Res Function(_PasswordChanged) then) =
      __$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String newPassword});
}

/// @nodoc
class __$PasswordChangedCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements _$PasswordChangedCopyWith<$Res> {
  __$PasswordChangedCopyWithImpl(
      _PasswordChanged _value, $Res Function(_PasswordChanged) _then)
      : super(_value, (v) => _then(v as _PasswordChanged));

  @override
  _PasswordChanged get _value => super._value as _PasswordChanged;

  @override
  $Res call({
    Object? newPassword = freezed,
  }) {
    return _then(_PasswordChanged(
      newPassword: newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordChanged implements _PasswordChanged {
  const _$_PasswordChanged({required this.newPassword});

  @override
  final String newPassword;

  @override
  String toString() {
    return 'SignInEvent.passwordChanged(newPassword: $newPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PasswordChanged &&
            const DeepCollectionEquality()
                .equals(other.newPassword, newPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(newPassword));

  @JsonKey(ignore: true)
  @override
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith =>
      __$PasswordChangedCopyWithImpl<_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newEmail) emailChanged,
    required TResult Function(String newPassword) passwordChanged,
    required TResult Function() signInPressed,
    required TResult Function() signInWithFacebookPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() signInWithApplePressed,
  }) {
    return passwordChanged(newPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newEmail)? emailChanged,
    TResult Function(String newPassword)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? signInWithFacebookPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWithApplePressed,
  }) {
    return passwordChanged?.call(newPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newEmail)? emailChanged,
    TResult Function(String newPassword)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? signInWithFacebookPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWithApplePressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(newPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SignInPressed value) signInPressed,
    required TResult Function(_SignInWithFacebookPressed value)
        signInWithFacebookPressed,
    required TResult Function(_SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(_SignInWithApplePressed value)
        signInWithApplePressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SignInPressed value)? signInPressed,
    TResult Function(_SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(_SignInWithApplePressed value)? signInWithApplePressed,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SignInPressed value)? signInPressed,
    TResult Function(_SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(_SignInWithApplePressed value)? signInWithApplePressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements SignInEvent {
  const factory _PasswordChanged({required String newPassword}) =
      _$_PasswordChanged;

  String get newPassword;
  @JsonKey(ignore: true)
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SignInPressedCopyWith<$Res> {
  factory _$SignInPressedCopyWith(
          _SignInPressed value, $Res Function(_SignInPressed) then) =
      __$SignInPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignInPressedCopyWithImpl<$Res> extends _$SignInEventCopyWithImpl<$Res>
    implements _$SignInPressedCopyWith<$Res> {
  __$SignInPressedCopyWithImpl(
      _SignInPressed _value, $Res Function(_SignInPressed) _then)
      : super(_value, (v) => _then(v as _SignInPressed));

  @override
  _SignInPressed get _value => super._value as _SignInPressed;
}

/// @nodoc

class _$_SignInPressed implements _SignInPressed {
  const _$_SignInPressed();

  @override
  String toString() {
    return 'SignInEvent.signInPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SignInPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newEmail) emailChanged,
    required TResult Function(String newPassword) passwordChanged,
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
    TResult Function(String newEmail)? emailChanged,
    TResult Function(String newPassword)? passwordChanged,
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
    TResult Function(String newEmail)? emailChanged,
    TResult Function(String newPassword)? passwordChanged,
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
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SignInPressed value) signInPressed,
    required TResult Function(_SignInWithFacebookPressed value)
        signInWithFacebookPressed,
    required TResult Function(_SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(_SignInWithApplePressed value)
        signInWithApplePressed,
  }) {
    return signInPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SignInPressed value)? signInPressed,
    TResult Function(_SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(_SignInWithApplePressed value)? signInWithApplePressed,
  }) {
    return signInPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SignInPressed value)? signInPressed,
    TResult Function(_SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(_SignInWithApplePressed value)? signInWithApplePressed,
    required TResult orElse(),
  }) {
    if (signInPressed != null) {
      return signInPressed(this);
    }
    return orElse();
  }
}

abstract class _SignInPressed implements SignInEvent {
  const factory _SignInPressed() = _$_SignInPressed;
}

/// @nodoc
abstract class _$SignInWithFacebookPressedCopyWith<$Res> {
  factory _$SignInWithFacebookPressedCopyWith(_SignInWithFacebookPressed value,
          $Res Function(_SignInWithFacebookPressed) then) =
      __$SignInWithFacebookPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignInWithFacebookPressedCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements _$SignInWithFacebookPressedCopyWith<$Res> {
  __$SignInWithFacebookPressedCopyWithImpl(_SignInWithFacebookPressed _value,
      $Res Function(_SignInWithFacebookPressed) _then)
      : super(_value, (v) => _then(v as _SignInWithFacebookPressed));

  @override
  _SignInWithFacebookPressed get _value =>
      super._value as _SignInWithFacebookPressed;
}

/// @nodoc

class _$_SignInWithFacebookPressed implements _SignInWithFacebookPressed {
  const _$_SignInWithFacebookPressed();

  @override
  String toString() {
    return 'SignInEvent.signInWithFacebookPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignInWithFacebookPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newEmail) emailChanged,
    required TResult Function(String newPassword) passwordChanged,
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
    TResult Function(String newEmail)? emailChanged,
    TResult Function(String newPassword)? passwordChanged,
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
    TResult Function(String newEmail)? emailChanged,
    TResult Function(String newPassword)? passwordChanged,
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
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SignInPressed value) signInPressed,
    required TResult Function(_SignInWithFacebookPressed value)
        signInWithFacebookPressed,
    required TResult Function(_SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(_SignInWithApplePressed value)
        signInWithApplePressed,
  }) {
    return signInWithFacebookPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SignInPressed value)? signInPressed,
    TResult Function(_SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(_SignInWithApplePressed value)? signInWithApplePressed,
  }) {
    return signInWithFacebookPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SignInPressed value)? signInPressed,
    TResult Function(_SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(_SignInWithApplePressed value)? signInWithApplePressed,
    required TResult orElse(),
  }) {
    if (signInWithFacebookPressed != null) {
      return signInWithFacebookPressed(this);
    }
    return orElse();
  }
}

abstract class _SignInWithFacebookPressed implements SignInEvent {
  const factory _SignInWithFacebookPressed() = _$_SignInWithFacebookPressed;
}

/// @nodoc
abstract class _$SignInWithGooglePressedCopyWith<$Res> {
  factory _$SignInWithGooglePressedCopyWith(_SignInWithGooglePressed value,
          $Res Function(_SignInWithGooglePressed) then) =
      __$SignInWithGooglePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignInWithGooglePressedCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements _$SignInWithGooglePressedCopyWith<$Res> {
  __$SignInWithGooglePressedCopyWithImpl(_SignInWithGooglePressed _value,
      $Res Function(_SignInWithGooglePressed) _then)
      : super(_value, (v) => _then(v as _SignInWithGooglePressed));

  @override
  _SignInWithGooglePressed get _value =>
      super._value as _SignInWithGooglePressed;
}

/// @nodoc

class _$_SignInWithGooglePressed implements _SignInWithGooglePressed {
  const _$_SignInWithGooglePressed();

  @override
  String toString() {
    return 'SignInEvent.signInWithGooglePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SignInWithGooglePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newEmail) emailChanged,
    required TResult Function(String newPassword) passwordChanged,
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
    TResult Function(String newEmail)? emailChanged,
    TResult Function(String newPassword)? passwordChanged,
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
    TResult Function(String newEmail)? emailChanged,
    TResult Function(String newPassword)? passwordChanged,
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
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SignInPressed value) signInPressed,
    required TResult Function(_SignInWithFacebookPressed value)
        signInWithFacebookPressed,
    required TResult Function(_SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(_SignInWithApplePressed value)
        signInWithApplePressed,
  }) {
    return signInWithGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SignInPressed value)? signInPressed,
    TResult Function(_SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(_SignInWithApplePressed value)? signInWithApplePressed,
  }) {
    return signInWithGooglePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SignInPressed value)? signInPressed,
    TResult Function(_SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(_SignInWithApplePressed value)? signInWithApplePressed,
    required TResult orElse(),
  }) {
    if (signInWithGooglePressed != null) {
      return signInWithGooglePressed(this);
    }
    return orElse();
  }
}

abstract class _SignInWithGooglePressed implements SignInEvent {
  const factory _SignInWithGooglePressed() = _$_SignInWithGooglePressed;
}

/// @nodoc
abstract class _$SignInWithApplePressedCopyWith<$Res> {
  factory _$SignInWithApplePressedCopyWith(_SignInWithApplePressed value,
          $Res Function(_SignInWithApplePressed) then) =
      __$SignInWithApplePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignInWithApplePressedCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements _$SignInWithApplePressedCopyWith<$Res> {
  __$SignInWithApplePressedCopyWithImpl(_SignInWithApplePressed _value,
      $Res Function(_SignInWithApplePressed) _then)
      : super(_value, (v) => _then(v as _SignInWithApplePressed));

  @override
  _SignInWithApplePressed get _value => super._value as _SignInWithApplePressed;
}

/// @nodoc

class _$_SignInWithApplePressed implements _SignInWithApplePressed {
  const _$_SignInWithApplePressed();

  @override
  String toString() {
    return 'SignInEvent.signInWithApplePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SignInWithApplePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newEmail) emailChanged,
    required TResult Function(String newPassword) passwordChanged,
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
    TResult Function(String newEmail)? emailChanged,
    TResult Function(String newPassword)? passwordChanged,
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
    TResult Function(String newEmail)? emailChanged,
    TResult Function(String newPassword)? passwordChanged,
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
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SignInPressed value) signInPressed,
    required TResult Function(_SignInWithFacebookPressed value)
        signInWithFacebookPressed,
    required TResult Function(_SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(_SignInWithApplePressed value)
        signInWithApplePressed,
  }) {
    return signInWithApplePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SignInPressed value)? signInPressed,
    TResult Function(_SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(_SignInWithApplePressed value)? signInWithApplePressed,
  }) {
    return signInWithApplePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SignInPressed value)? signInPressed,
    TResult Function(_SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(_SignInWithApplePressed value)? signInWithApplePressed,
    required TResult orElse(),
  }) {
    if (signInWithApplePressed != null) {
      return signInWithApplePressed(this);
    }
    return orElse();
  }
}

abstract class _SignInWithApplePressed implements SignInEvent {
  const factory _SignInWithApplePressed() = _$_SignInWithApplePressed;
}

/// @nodoc
class _$SignInStateTearOff {
  const _$SignInStateTearOff();

  SignInInitial initial(
      {required EmailAddress email, required Password password}) {
    return SignInInitial(
      email: email,
      password: password,
    );
  }

  SignInLoadInProgress loadInProgress() {
    return const SignInLoadInProgress();
  }

  SignInLoadFailure loadFailure({required AuthFailure failure}) {
    return SignInLoadFailure(
      failure: failure,
    );
  }
}

/// @nodoc
const $SignInState = _$SignInStateTearOff();

/// @nodoc
mixin _$SignInState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmailAddress email, Password password) initial,
    required TResult Function() loadInProgress,
    required TResult Function(AuthFailure failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(EmailAddress email, Password password)? initial,
    TResult Function()? loadInProgress,
    TResult Function(AuthFailure failure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailAddress email, Password password)? initial,
    TResult Function()? loadInProgress,
    TResult Function(AuthFailure failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInInitial value) initial,
    required TResult Function(SignInLoadInProgress value) loadInProgress,
    required TResult Function(SignInLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignInInitial value)? initial,
    TResult Function(SignInLoadInProgress value)? loadInProgress,
    TResult Function(SignInLoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInInitial value)? initial,
    TResult Function(SignInLoadInProgress value)? loadInProgress,
    TResult Function(SignInLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res> implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  final SignInState _value;
  // ignore: unused_field
  final $Res Function(SignInState) _then;
}

/// @nodoc
abstract class $SignInInitialCopyWith<$Res> {
  factory $SignInInitialCopyWith(
          SignInInitial value, $Res Function(SignInInitial) then) =
      _$SignInInitialCopyWithImpl<$Res>;
  $Res call({EmailAddress email, Password password});
}

/// @nodoc
class _$SignInInitialCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
    implements $SignInInitialCopyWith<$Res> {
  _$SignInInitialCopyWithImpl(
      SignInInitial _value, $Res Function(SignInInitial) _then)
      : super(_value, (v) => _then(v as SignInInitial));

  @override
  SignInInitial get _value => super._value as SignInInitial;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(SignInInitial(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc

class _$SignInInitial implements SignInInitial {
  const _$SignInInitial({required this.email, required this.password});

  @override
  final EmailAddress email;
  @override
  final Password password;

  @override
  String toString() {
    return 'SignInState.initial(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignInInitial &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  $SignInInitialCopyWith<SignInInitial> get copyWith =>
      _$SignInInitialCopyWithImpl<SignInInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmailAddress email, Password password) initial,
    required TResult Function() loadInProgress,
    required TResult Function(AuthFailure failure) loadFailure,
  }) {
    return initial(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(EmailAddress email, Password password)? initial,
    TResult Function()? loadInProgress,
    TResult Function(AuthFailure failure)? loadFailure,
  }) {
    return initial?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailAddress email, Password password)? initial,
    TResult Function()? loadInProgress,
    TResult Function(AuthFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInInitial value) initial,
    required TResult Function(SignInLoadInProgress value) loadInProgress,
    required TResult Function(SignInLoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignInInitial value)? initial,
    TResult Function(SignInLoadInProgress value)? loadInProgress,
    TResult Function(SignInLoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInInitial value)? initial,
    TResult Function(SignInLoadInProgress value)? loadInProgress,
    TResult Function(SignInLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SignInInitial implements SignInState {
  const factory SignInInitial(
      {required EmailAddress email,
      required Password password}) = _$SignInInitial;

  EmailAddress get email;
  Password get password;
  @JsonKey(ignore: true)
  $SignInInitialCopyWith<SignInInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInLoadInProgressCopyWith<$Res> {
  factory $SignInLoadInProgressCopyWith(SignInLoadInProgress value,
          $Res Function(SignInLoadInProgress) then) =
      _$SignInLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInLoadInProgressCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res>
    implements $SignInLoadInProgressCopyWith<$Res> {
  _$SignInLoadInProgressCopyWithImpl(
      SignInLoadInProgress _value, $Res Function(SignInLoadInProgress) _then)
      : super(_value, (v) => _then(v as SignInLoadInProgress));

  @override
  SignInLoadInProgress get _value => super._value as SignInLoadInProgress;
}

/// @nodoc

class _$SignInLoadInProgress implements SignInLoadInProgress {
  const _$SignInLoadInProgress();

  @override
  String toString() {
    return 'SignInState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignInLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmailAddress email, Password password) initial,
    required TResult Function() loadInProgress,
    required TResult Function(AuthFailure failure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(EmailAddress email, Password password)? initial,
    TResult Function()? loadInProgress,
    TResult Function(AuthFailure failure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailAddress email, Password password)? initial,
    TResult Function()? loadInProgress,
    TResult Function(AuthFailure failure)? loadFailure,
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
    required TResult Function(SignInInitial value) initial,
    required TResult Function(SignInLoadInProgress value) loadInProgress,
    required TResult Function(SignInLoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignInInitial value)? initial,
    TResult Function(SignInLoadInProgress value)? loadInProgress,
    TResult Function(SignInLoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInInitial value)? initial,
    TResult Function(SignInLoadInProgress value)? loadInProgress,
    TResult Function(SignInLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class SignInLoadInProgress implements SignInState {
  const factory SignInLoadInProgress() = _$SignInLoadInProgress;
}

/// @nodoc
abstract class $SignInLoadFailureCopyWith<$Res> {
  factory $SignInLoadFailureCopyWith(
          SignInLoadFailure value, $Res Function(SignInLoadFailure) then) =
      _$SignInLoadFailureCopyWithImpl<$Res>;
  $Res call({AuthFailure failure});

  $AuthFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$SignInLoadFailureCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res>
    implements $SignInLoadFailureCopyWith<$Res> {
  _$SignInLoadFailureCopyWithImpl(
      SignInLoadFailure _value, $Res Function(SignInLoadFailure) _then)
      : super(_value, (v) => _then(v as SignInLoadFailure));

  @override
  SignInLoadFailure get _value => super._value as SignInLoadFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(SignInLoadFailure(
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AuthFailure,
    ));
  }

  @override
  $AuthFailureCopyWith<$Res> get failure {
    return $AuthFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$SignInLoadFailure implements SignInLoadFailure {
  const _$SignInLoadFailure({required this.failure});

  @override
  final AuthFailure failure;

  @override
  String toString() {
    return 'SignInState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignInLoadFailure &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  $SignInLoadFailureCopyWith<SignInLoadFailure> get copyWith =>
      _$SignInLoadFailureCopyWithImpl<SignInLoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmailAddress email, Password password) initial,
    required TResult Function() loadInProgress,
    required TResult Function(AuthFailure failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(EmailAddress email, Password password)? initial,
    TResult Function()? loadInProgress,
    TResult Function(AuthFailure failure)? loadFailure,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailAddress email, Password password)? initial,
    TResult Function()? loadInProgress,
    TResult Function(AuthFailure failure)? loadFailure,
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
    required TResult Function(SignInInitial value) initial,
    required TResult Function(SignInLoadInProgress value) loadInProgress,
    required TResult Function(SignInLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignInInitial value)? initial,
    TResult Function(SignInLoadInProgress value)? loadInProgress,
    TResult Function(SignInLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInInitial value)? initial,
    TResult Function(SignInLoadInProgress value)? loadInProgress,
    TResult Function(SignInLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class SignInLoadFailure implements SignInState {
  const factory SignInLoadFailure({required AuthFailure failure}) =
      _$SignInLoadFailure;

  AuthFailure get failure;
  @JsonKey(ignore: true)
  $SignInLoadFailureCopyWith<SignInLoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
