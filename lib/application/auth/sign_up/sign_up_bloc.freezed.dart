// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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

  _EmailChanged emailChanged({required String newEmail}) {
    return _EmailChanged(
      newEmail: newEmail,
    );
  }

  _UsernameChanged usernameChanged({required String newUsername}) {
    return _UsernameChanged(
      newUsername: newUsername,
    );
  }

  _PasswordChanged passwordChanged({required String newPassword}) {
    return _PasswordChanged(
      newPassword: newPassword,
    );
  }

  _PasswordAgainChanged passwordAgainChanged(
      {required String newPasswordAgain}) {
    return _PasswordAgainChanged(
      newPasswordAgain: newPasswordAgain,
    );
  }

  _SignUpPressed signUpPressed() {
    return const _SignUpPressed();
  }
}

/// @nodoc
const $SignUpEvent = _$SignUpEventTearOff();

/// @nodoc
mixin _$SignUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newEmail) emailChanged,
    required TResult Function(String newUsername) usernameChanged,
    required TResult Function(String newPassword) passwordChanged,
    required TResult Function(String newPasswordAgain) passwordAgainChanged,
    required TResult Function() signUpPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newEmail)? emailChanged,
    TResult Function(String newUsername)? usernameChanged,
    TResult Function(String newPassword)? passwordChanged,
    TResult Function(String newPasswordAgain)? passwordAgainChanged,
    TResult Function()? signUpPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newEmail)? emailChanged,
    TResult Function(String newUsername)? usernameChanged,
    TResult Function(String newPassword)? passwordChanged,
    TResult Function(String newPasswordAgain)? passwordAgainChanged,
    TResult Function()? signUpPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordAgainChanged value) passwordAgainChanged,
    required TResult Function(_SignUpPressed value) signUpPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordAgainChanged value)? passwordAgainChanged,
    TResult Function(_SignUpPressed value)? signUpPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordAgainChanged value)? passwordAgainChanged,
    TResult Function(_SignUpPressed value)? signUpPressed,
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
abstract class _$EmailChangedCopyWith<$Res> {
  factory _$EmailChangedCopyWith(
          _EmailChanged value, $Res Function(_EmailChanged) then) =
      __$EmailChangedCopyWithImpl<$Res>;
  $Res call({String newEmail});
}

/// @nodoc
class __$EmailChangedCopyWithImpl<$Res> extends _$SignUpEventCopyWithImpl<$Res>
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
    return 'SignUpEvent.emailChanged(newEmail: $newEmail)';
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
    required TResult Function(String newUsername) usernameChanged,
    required TResult Function(String newPassword) passwordChanged,
    required TResult Function(String newPasswordAgain) passwordAgainChanged,
    required TResult Function() signUpPressed,
  }) {
    return emailChanged(newEmail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newEmail)? emailChanged,
    TResult Function(String newUsername)? usernameChanged,
    TResult Function(String newPassword)? passwordChanged,
    TResult Function(String newPasswordAgain)? passwordAgainChanged,
    TResult Function()? signUpPressed,
  }) {
    return emailChanged?.call(newEmail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newEmail)? emailChanged,
    TResult Function(String newUsername)? usernameChanged,
    TResult Function(String newPassword)? passwordChanged,
    TResult Function(String newPasswordAgain)? passwordAgainChanged,
    TResult Function()? signUpPressed,
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
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordAgainChanged value) passwordAgainChanged,
    required TResult Function(_SignUpPressed value) signUpPressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordAgainChanged value)? passwordAgainChanged,
    TResult Function(_SignUpPressed value)? signUpPressed,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordAgainChanged value)? passwordAgainChanged,
    TResult Function(_SignUpPressed value)? signUpPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements SignUpEvent {
  const factory _EmailChanged({required String newEmail}) = _$_EmailChanged;

  String get newEmail;
  @JsonKey(ignore: true)
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UsernameChangedCopyWith<$Res> {
  factory _$UsernameChangedCopyWith(
          _UsernameChanged value, $Res Function(_UsernameChanged) then) =
      __$UsernameChangedCopyWithImpl<$Res>;
  $Res call({String newUsername});
}

/// @nodoc
class __$UsernameChangedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements _$UsernameChangedCopyWith<$Res> {
  __$UsernameChangedCopyWithImpl(
      _UsernameChanged _value, $Res Function(_UsernameChanged) _then)
      : super(_value, (v) => _then(v as _UsernameChanged));

  @override
  _UsernameChanged get _value => super._value as _UsernameChanged;

  @override
  $Res call({
    Object? newUsername = freezed,
  }) {
    return _then(_UsernameChanged(
      newUsername: newUsername == freezed
          ? _value.newUsername
          : newUsername // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UsernameChanged implements _UsernameChanged {
  const _$_UsernameChanged({required this.newUsername});

  @override
  final String newUsername;

  @override
  String toString() {
    return 'SignUpEvent.usernameChanged(newUsername: $newUsername)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UsernameChanged &&
            const DeepCollectionEquality()
                .equals(other.newUsername, newUsername));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(newUsername));

  @JsonKey(ignore: true)
  @override
  _$UsernameChangedCopyWith<_UsernameChanged> get copyWith =>
      __$UsernameChangedCopyWithImpl<_UsernameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newEmail) emailChanged,
    required TResult Function(String newUsername) usernameChanged,
    required TResult Function(String newPassword) passwordChanged,
    required TResult Function(String newPasswordAgain) passwordAgainChanged,
    required TResult Function() signUpPressed,
  }) {
    return usernameChanged(newUsername);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newEmail)? emailChanged,
    TResult Function(String newUsername)? usernameChanged,
    TResult Function(String newPassword)? passwordChanged,
    TResult Function(String newPasswordAgain)? passwordAgainChanged,
    TResult Function()? signUpPressed,
  }) {
    return usernameChanged?.call(newUsername);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newEmail)? emailChanged,
    TResult Function(String newUsername)? usernameChanged,
    TResult Function(String newPassword)? passwordChanged,
    TResult Function(String newPasswordAgain)? passwordAgainChanged,
    TResult Function()? signUpPressed,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(newUsername);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordAgainChanged value) passwordAgainChanged,
    required TResult Function(_SignUpPressed value) signUpPressed,
  }) {
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordAgainChanged value)? passwordAgainChanged,
    TResult Function(_SignUpPressed value)? signUpPressed,
  }) {
    return usernameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordAgainChanged value)? passwordAgainChanged,
    TResult Function(_SignUpPressed value)? signUpPressed,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class _UsernameChanged implements SignUpEvent {
  const factory _UsernameChanged({required String newUsername}) =
      _$_UsernameChanged;

  String get newUsername;
  @JsonKey(ignore: true)
  _$UsernameChangedCopyWith<_UsernameChanged> get copyWith =>
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
    extends _$SignUpEventCopyWithImpl<$Res>
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
    return 'SignUpEvent.passwordChanged(newPassword: $newPassword)';
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
    required TResult Function(String newUsername) usernameChanged,
    required TResult Function(String newPassword) passwordChanged,
    required TResult Function(String newPasswordAgain) passwordAgainChanged,
    required TResult Function() signUpPressed,
  }) {
    return passwordChanged(newPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newEmail)? emailChanged,
    TResult Function(String newUsername)? usernameChanged,
    TResult Function(String newPassword)? passwordChanged,
    TResult Function(String newPasswordAgain)? passwordAgainChanged,
    TResult Function()? signUpPressed,
  }) {
    return passwordChanged?.call(newPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newEmail)? emailChanged,
    TResult Function(String newUsername)? usernameChanged,
    TResult Function(String newPassword)? passwordChanged,
    TResult Function(String newPasswordAgain)? passwordAgainChanged,
    TResult Function()? signUpPressed,
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
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordAgainChanged value) passwordAgainChanged,
    required TResult Function(_SignUpPressed value) signUpPressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordAgainChanged value)? passwordAgainChanged,
    TResult Function(_SignUpPressed value)? signUpPressed,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordAgainChanged value)? passwordAgainChanged,
    TResult Function(_SignUpPressed value)? signUpPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements SignUpEvent {
  const factory _PasswordChanged({required String newPassword}) =
      _$_PasswordChanged;

  String get newPassword;
  @JsonKey(ignore: true)
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PasswordAgainChangedCopyWith<$Res> {
  factory _$PasswordAgainChangedCopyWith(_PasswordAgainChanged value,
          $Res Function(_PasswordAgainChanged) then) =
      __$PasswordAgainChangedCopyWithImpl<$Res>;
  $Res call({String newPasswordAgain});
}

/// @nodoc
class __$PasswordAgainChangedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements _$PasswordAgainChangedCopyWith<$Res> {
  __$PasswordAgainChangedCopyWithImpl(
      _PasswordAgainChanged _value, $Res Function(_PasswordAgainChanged) _then)
      : super(_value, (v) => _then(v as _PasswordAgainChanged));

  @override
  _PasswordAgainChanged get _value => super._value as _PasswordAgainChanged;

  @override
  $Res call({
    Object? newPasswordAgain = freezed,
  }) {
    return _then(_PasswordAgainChanged(
      newPasswordAgain: newPasswordAgain == freezed
          ? _value.newPasswordAgain
          : newPasswordAgain // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordAgainChanged implements _PasswordAgainChanged {
  const _$_PasswordAgainChanged({required this.newPasswordAgain});

  @override
  final String newPasswordAgain;

  @override
  String toString() {
    return 'SignUpEvent.passwordAgainChanged(newPasswordAgain: $newPasswordAgain)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PasswordAgainChanged &&
            const DeepCollectionEquality()
                .equals(other.newPasswordAgain, newPasswordAgain));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(newPasswordAgain));

  @JsonKey(ignore: true)
  @override
  _$PasswordAgainChangedCopyWith<_PasswordAgainChanged> get copyWith =>
      __$PasswordAgainChangedCopyWithImpl<_PasswordAgainChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newEmail) emailChanged,
    required TResult Function(String newUsername) usernameChanged,
    required TResult Function(String newPassword) passwordChanged,
    required TResult Function(String newPasswordAgain) passwordAgainChanged,
    required TResult Function() signUpPressed,
  }) {
    return passwordAgainChanged(newPasswordAgain);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newEmail)? emailChanged,
    TResult Function(String newUsername)? usernameChanged,
    TResult Function(String newPassword)? passwordChanged,
    TResult Function(String newPasswordAgain)? passwordAgainChanged,
    TResult Function()? signUpPressed,
  }) {
    return passwordAgainChanged?.call(newPasswordAgain);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newEmail)? emailChanged,
    TResult Function(String newUsername)? usernameChanged,
    TResult Function(String newPassword)? passwordChanged,
    TResult Function(String newPasswordAgain)? passwordAgainChanged,
    TResult Function()? signUpPressed,
    required TResult orElse(),
  }) {
    if (passwordAgainChanged != null) {
      return passwordAgainChanged(newPasswordAgain);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordAgainChanged value) passwordAgainChanged,
    required TResult Function(_SignUpPressed value) signUpPressed,
  }) {
    return passwordAgainChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordAgainChanged value)? passwordAgainChanged,
    TResult Function(_SignUpPressed value)? signUpPressed,
  }) {
    return passwordAgainChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordAgainChanged value)? passwordAgainChanged,
    TResult Function(_SignUpPressed value)? signUpPressed,
    required TResult orElse(),
  }) {
    if (passwordAgainChanged != null) {
      return passwordAgainChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordAgainChanged implements SignUpEvent {
  const factory _PasswordAgainChanged({required String newPasswordAgain}) =
      _$_PasswordAgainChanged;

  String get newPasswordAgain;
  @JsonKey(ignore: true)
  _$PasswordAgainChangedCopyWith<_PasswordAgainChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SignUpPressedCopyWith<$Res> {
  factory _$SignUpPressedCopyWith(
          _SignUpPressed value, $Res Function(_SignUpPressed) then) =
      __$SignUpPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignUpPressedCopyWithImpl<$Res> extends _$SignUpEventCopyWithImpl<$Res>
    implements _$SignUpPressedCopyWith<$Res> {
  __$SignUpPressedCopyWithImpl(
      _SignUpPressed _value, $Res Function(_SignUpPressed) _then)
      : super(_value, (v) => _then(v as _SignUpPressed));

  @override
  _SignUpPressed get _value => super._value as _SignUpPressed;
}

/// @nodoc

class _$_SignUpPressed implements _SignUpPressed {
  const _$_SignUpPressed();

  @override
  String toString() {
    return 'SignUpEvent.signUpPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SignUpPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newEmail) emailChanged,
    required TResult Function(String newUsername) usernameChanged,
    required TResult Function(String newPassword) passwordChanged,
    required TResult Function(String newPasswordAgain) passwordAgainChanged,
    required TResult Function() signUpPressed,
  }) {
    return signUpPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newEmail)? emailChanged,
    TResult Function(String newUsername)? usernameChanged,
    TResult Function(String newPassword)? passwordChanged,
    TResult Function(String newPasswordAgain)? passwordAgainChanged,
    TResult Function()? signUpPressed,
  }) {
    return signUpPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newEmail)? emailChanged,
    TResult Function(String newUsername)? usernameChanged,
    TResult Function(String newPassword)? passwordChanged,
    TResult Function(String newPasswordAgain)? passwordAgainChanged,
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
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordAgainChanged value) passwordAgainChanged,
    required TResult Function(_SignUpPressed value) signUpPressed,
  }) {
    return signUpPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordAgainChanged value)? passwordAgainChanged,
    TResult Function(_SignUpPressed value)? signUpPressed,
  }) {
    return signUpPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordAgainChanged value)? passwordAgainChanged,
    TResult Function(_SignUpPressed value)? signUpPressed,
    required TResult orElse(),
  }) {
    if (signUpPressed != null) {
      return signUpPressed(this);
    }
    return orElse();
  }
}

abstract class _SignUpPressed implements SignUpEvent {
  const factory _SignUpPressed() = _$_SignUpPressed;
}

/// @nodoc
class _$SignUpStateTearOff {
  const _$SignUpStateTearOff();

  SignUpInitial initial(
      {required EmailAddress email,
      required Username username,
      required Password password,
      required Password passwordAgain,
      required bool showErrorMessages}) {
    return SignUpInitial(
      email: email,
      username: username,
      password: password,
      passwordAgain: passwordAgain,
      showErrorMessages: showErrorMessages,
    );
  }

  SignUpLoadInProgress loadInProgress() {
    return const SignUpLoadInProgress();
  }

  SignUpLoadFailure loadFailure({required AuthFailure authFailure}) {
    return SignUpLoadFailure(
      authFailure: authFailure,
    );
  }
}

/// @nodoc
const $SignUpState = _$SignUpStateTearOff();

/// @nodoc
mixin _$SignUpState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmailAddress email, Username username,
            Password password, Password passwordAgain, bool showErrorMessages)
        initial,
    required TResult Function() loadInProgress,
    required TResult Function(AuthFailure authFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(EmailAddress email, Username username, Password password,
            Password passwordAgain, bool showErrorMessages)?
        initial,
    TResult Function()? loadInProgress,
    TResult Function(AuthFailure authFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailAddress email, Username username, Password password,
            Password passwordAgain, bool showErrorMessages)?
        initial,
    TResult Function()? loadInProgress,
    TResult Function(AuthFailure authFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpInitial value) initial,
    required TResult Function(SignUpLoadInProgress value) loadInProgress,
    required TResult Function(SignUpLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignUpInitial value)? initial,
    TResult Function(SignUpLoadInProgress value)? loadInProgress,
    TResult Function(SignUpLoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpInitial value)? initial,
    TResult Function(SignUpLoadInProgress value)? loadInProgress,
    TResult Function(SignUpLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res> implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  final SignUpState _value;
  // ignore: unused_field
  final $Res Function(SignUpState) _then;
}

/// @nodoc
abstract class $SignUpInitialCopyWith<$Res> {
  factory $SignUpInitialCopyWith(
          SignUpInitial value, $Res Function(SignUpInitial) then) =
      _$SignUpInitialCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress email,
      Username username,
      Password password,
      Password passwordAgain,
      bool showErrorMessages});
}

/// @nodoc
class _$SignUpInitialCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
    implements $SignUpInitialCopyWith<$Res> {
  _$SignUpInitialCopyWithImpl(
      SignUpInitial _value, $Res Function(SignUpInitial) _then)
      : super(_value, (v) => _then(v as SignUpInitial));

  @override
  SignUpInitial get _value => super._value as SignUpInitial;

  @override
  $Res call({
    Object? email = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? passwordAgain = freezed,
    Object? showErrorMessages = freezed,
  }) {
    return _then(SignUpInitial(
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
    ));
  }
}

/// @nodoc

class _$SignUpInitial implements SignUpInitial {
  const _$SignUpInitial(
      {required this.email,
      required this.username,
      required this.password,
      required this.passwordAgain,
      required this.showErrorMessages});

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
  String toString() {
    return 'SignUpState.initial(email: $email, username: $username, password: $password, passwordAgain: $passwordAgain, showErrorMessages: $showErrorMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignUpInitial &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.passwordAgain, passwordAgain) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(passwordAgain),
      const DeepCollectionEquality().hash(showErrorMessages));

  @JsonKey(ignore: true)
  @override
  $SignUpInitialCopyWith<SignUpInitial> get copyWith =>
      _$SignUpInitialCopyWithImpl<SignUpInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmailAddress email, Username username,
            Password password, Password passwordAgain, bool showErrorMessages)
        initial,
    required TResult Function() loadInProgress,
    required TResult Function(AuthFailure authFailure) loadFailure,
  }) {
    return initial(email, username, password, passwordAgain, showErrorMessages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(EmailAddress email, Username username, Password password,
            Password passwordAgain, bool showErrorMessages)?
        initial,
    TResult Function()? loadInProgress,
    TResult Function(AuthFailure authFailure)? loadFailure,
  }) {
    return initial?.call(
        email, username, password, passwordAgain, showErrorMessages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailAddress email, Username username, Password password,
            Password passwordAgain, bool showErrorMessages)?
        initial,
    TResult Function()? loadInProgress,
    TResult Function(AuthFailure authFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(
          email, username, password, passwordAgain, showErrorMessages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpInitial value) initial,
    required TResult Function(SignUpLoadInProgress value) loadInProgress,
    required TResult Function(SignUpLoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignUpInitial value)? initial,
    TResult Function(SignUpLoadInProgress value)? loadInProgress,
    TResult Function(SignUpLoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpInitial value)? initial,
    TResult Function(SignUpLoadInProgress value)? loadInProgress,
    TResult Function(SignUpLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SignUpInitial implements SignUpState {
  const factory SignUpInitial(
      {required EmailAddress email,
      required Username username,
      required Password password,
      required Password passwordAgain,
      required bool showErrorMessages}) = _$SignUpInitial;

  EmailAddress get email;
  Username get username;
  Password get password;
  Password get passwordAgain;
  bool get showErrorMessages;
  @JsonKey(ignore: true)
  $SignUpInitialCopyWith<SignUpInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpLoadInProgressCopyWith<$Res> {
  factory $SignUpLoadInProgressCopyWith(SignUpLoadInProgress value,
          $Res Function(SignUpLoadInProgress) then) =
      _$SignUpLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpLoadInProgressCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res>
    implements $SignUpLoadInProgressCopyWith<$Res> {
  _$SignUpLoadInProgressCopyWithImpl(
      SignUpLoadInProgress _value, $Res Function(SignUpLoadInProgress) _then)
      : super(_value, (v) => _then(v as SignUpLoadInProgress));

  @override
  SignUpLoadInProgress get _value => super._value as SignUpLoadInProgress;
}

/// @nodoc

class _$SignUpLoadInProgress implements SignUpLoadInProgress {
  const _$SignUpLoadInProgress();

  @override
  String toString() {
    return 'SignUpState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignUpLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmailAddress email, Username username,
            Password password, Password passwordAgain, bool showErrorMessages)
        initial,
    required TResult Function() loadInProgress,
    required TResult Function(AuthFailure authFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(EmailAddress email, Username username, Password password,
            Password passwordAgain, bool showErrorMessages)?
        initial,
    TResult Function()? loadInProgress,
    TResult Function(AuthFailure authFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailAddress email, Username username, Password password,
            Password passwordAgain, bool showErrorMessages)?
        initial,
    TResult Function()? loadInProgress,
    TResult Function(AuthFailure authFailure)? loadFailure,
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
    required TResult Function(SignUpInitial value) initial,
    required TResult Function(SignUpLoadInProgress value) loadInProgress,
    required TResult Function(SignUpLoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignUpInitial value)? initial,
    TResult Function(SignUpLoadInProgress value)? loadInProgress,
    TResult Function(SignUpLoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpInitial value)? initial,
    TResult Function(SignUpLoadInProgress value)? loadInProgress,
    TResult Function(SignUpLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class SignUpLoadInProgress implements SignUpState {
  const factory SignUpLoadInProgress() = _$SignUpLoadInProgress;
}

/// @nodoc
abstract class $SignUpLoadFailureCopyWith<$Res> {
  factory $SignUpLoadFailureCopyWith(
          SignUpLoadFailure value, $Res Function(SignUpLoadFailure) then) =
      _$SignUpLoadFailureCopyWithImpl<$Res>;
  $Res call({AuthFailure authFailure});

  $AuthFailureCopyWith<$Res> get authFailure;
}

/// @nodoc
class _$SignUpLoadFailureCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res>
    implements $SignUpLoadFailureCopyWith<$Res> {
  _$SignUpLoadFailureCopyWithImpl(
      SignUpLoadFailure _value, $Res Function(SignUpLoadFailure) _then)
      : super(_value, (v) => _then(v as SignUpLoadFailure));

  @override
  SignUpLoadFailure get _value => super._value as SignUpLoadFailure;

  @override
  $Res call({
    Object? authFailure = freezed,
  }) {
    return _then(SignUpLoadFailure(
      authFailure: authFailure == freezed
          ? _value.authFailure
          : authFailure // ignore: cast_nullable_to_non_nullable
              as AuthFailure,
    ));
  }

  @override
  $AuthFailureCopyWith<$Res> get authFailure {
    return $AuthFailureCopyWith<$Res>(_value.authFailure, (value) {
      return _then(_value.copyWith(authFailure: value));
    });
  }
}

/// @nodoc

class _$SignUpLoadFailure implements SignUpLoadFailure {
  const _$SignUpLoadFailure({required this.authFailure});

  @override
  final AuthFailure authFailure;

  @override
  String toString() {
    return 'SignUpState.loadFailure(authFailure: $authFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignUpLoadFailure &&
            const DeepCollectionEquality()
                .equals(other.authFailure, authFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(authFailure));

  @JsonKey(ignore: true)
  @override
  $SignUpLoadFailureCopyWith<SignUpLoadFailure> get copyWith =>
      _$SignUpLoadFailureCopyWithImpl<SignUpLoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmailAddress email, Username username,
            Password password, Password passwordAgain, bool showErrorMessages)
        initial,
    required TResult Function() loadInProgress,
    required TResult Function(AuthFailure authFailure) loadFailure,
  }) {
    return loadFailure(authFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(EmailAddress email, Username username, Password password,
            Password passwordAgain, bool showErrorMessages)?
        initial,
    TResult Function()? loadInProgress,
    TResult Function(AuthFailure authFailure)? loadFailure,
  }) {
    return loadFailure?.call(authFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailAddress email, Username username, Password password,
            Password passwordAgain, bool showErrorMessages)?
        initial,
    TResult Function()? loadInProgress,
    TResult Function(AuthFailure authFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(authFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpInitial value) initial,
    required TResult Function(SignUpLoadInProgress value) loadInProgress,
    required TResult Function(SignUpLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignUpInitial value)? initial,
    TResult Function(SignUpLoadInProgress value)? loadInProgress,
    TResult Function(SignUpLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpInitial value)? initial,
    TResult Function(SignUpLoadInProgress value)? loadInProgress,
    TResult Function(SignUpLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class SignUpLoadFailure implements SignUpState {
  const factory SignUpLoadFailure({required AuthFailure authFailure}) =
      _$SignUpLoadFailure;

  AuthFailure get authFailure;
  @JsonKey(ignore: true)
  $SignUpLoadFailureCopyWith<SignUpLoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
