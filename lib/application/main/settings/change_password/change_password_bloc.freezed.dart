// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'change_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChangePasswordEventTearOff {
  const _$ChangePasswordEventTearOff();

  _OldPasswordChanged oldPasswordChanged({required String newOldPassword}) {
    return _OldPasswordChanged(
      newOldPassword: newOldPassword,
    );
  }

  _NewPasswordChanged newPasswordChanged({required String newNewPassword}) {
    return _NewPasswordChanged(
      newNewPassword: newNewPassword,
    );
  }

  _NewPasswordAgainChanged newPasswordAgainChanged(
      {required String newNewPasswordAgain}) {
    return _NewPasswordAgainChanged(
      newNewPasswordAgain: newNewPasswordAgain,
    );
  }

  _ConfirmPressed confirmPressed() {
    return const _ConfirmPressed();
  }
}

/// @nodoc
const $ChangePasswordEvent = _$ChangePasswordEventTearOff();

/// @nodoc
mixin _$ChangePasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newOldPassword) oldPasswordChanged,
    required TResult Function(String newNewPassword) newPasswordChanged,
    required TResult Function(String newNewPasswordAgain)
        newPasswordAgainChanged,
    required TResult Function() confirmPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newOldPassword)? oldPasswordChanged,
    TResult Function(String newNewPassword)? newPasswordChanged,
    TResult Function(String newNewPasswordAgain)? newPasswordAgainChanged,
    TResult Function()? confirmPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newOldPassword)? oldPasswordChanged,
    TResult Function(String newNewPassword)? newPasswordChanged,
    TResult Function(String newNewPasswordAgain)? newPasswordAgainChanged,
    TResult Function()? confirmPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OldPasswordChanged value) oldPasswordChanged,
    required TResult Function(_NewPasswordChanged value) newPasswordChanged,
    required TResult Function(_NewPasswordAgainChanged value)
        newPasswordAgainChanged,
    required TResult Function(_ConfirmPressed value) confirmPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OldPasswordChanged value)? oldPasswordChanged,
    TResult Function(_NewPasswordChanged value)? newPasswordChanged,
    TResult Function(_NewPasswordAgainChanged value)? newPasswordAgainChanged,
    TResult Function(_ConfirmPressed value)? confirmPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OldPasswordChanged value)? oldPasswordChanged,
    TResult Function(_NewPasswordChanged value)? newPasswordChanged,
    TResult Function(_NewPasswordAgainChanged value)? newPasswordAgainChanged,
    TResult Function(_ConfirmPressed value)? confirmPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordEventCopyWith<$Res> {
  factory $ChangePasswordEventCopyWith(
          ChangePasswordEvent value, $Res Function(ChangePasswordEvent) then) =
      _$ChangePasswordEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChangePasswordEventCopyWithImpl<$Res>
    implements $ChangePasswordEventCopyWith<$Res> {
  _$ChangePasswordEventCopyWithImpl(this._value, this._then);

  final ChangePasswordEvent _value;
  // ignore: unused_field
  final $Res Function(ChangePasswordEvent) _then;
}

/// @nodoc
abstract class _$OldPasswordChangedCopyWith<$Res> {
  factory _$OldPasswordChangedCopyWith(
          _OldPasswordChanged value, $Res Function(_OldPasswordChanged) then) =
      __$OldPasswordChangedCopyWithImpl<$Res>;
  $Res call({String newOldPassword});
}

/// @nodoc
class __$OldPasswordChangedCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res>
    implements _$OldPasswordChangedCopyWith<$Res> {
  __$OldPasswordChangedCopyWithImpl(
      _OldPasswordChanged _value, $Res Function(_OldPasswordChanged) _then)
      : super(_value, (v) => _then(v as _OldPasswordChanged));

  @override
  _OldPasswordChanged get _value => super._value as _OldPasswordChanged;

  @override
  $Res call({
    Object? newOldPassword = freezed,
  }) {
    return _then(_OldPasswordChanged(
      newOldPassword: newOldPassword == freezed
          ? _value.newOldPassword
          : newOldPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OldPasswordChanged implements _OldPasswordChanged {
  const _$_OldPasswordChanged({required this.newOldPassword});

  @override
  final String newOldPassword;

  @override
  String toString() {
    return 'ChangePasswordEvent.oldPasswordChanged(newOldPassword: $newOldPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OldPasswordChanged &&
            const DeepCollectionEquality()
                .equals(other.newOldPassword, newOldPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(newOldPassword));

  @JsonKey(ignore: true)
  @override
  _$OldPasswordChangedCopyWith<_OldPasswordChanged> get copyWith =>
      __$OldPasswordChangedCopyWithImpl<_OldPasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newOldPassword) oldPasswordChanged,
    required TResult Function(String newNewPassword) newPasswordChanged,
    required TResult Function(String newNewPasswordAgain)
        newPasswordAgainChanged,
    required TResult Function() confirmPressed,
  }) {
    return oldPasswordChanged(newOldPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newOldPassword)? oldPasswordChanged,
    TResult Function(String newNewPassword)? newPasswordChanged,
    TResult Function(String newNewPasswordAgain)? newPasswordAgainChanged,
    TResult Function()? confirmPressed,
  }) {
    return oldPasswordChanged?.call(newOldPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newOldPassword)? oldPasswordChanged,
    TResult Function(String newNewPassword)? newPasswordChanged,
    TResult Function(String newNewPasswordAgain)? newPasswordAgainChanged,
    TResult Function()? confirmPressed,
    required TResult orElse(),
  }) {
    if (oldPasswordChanged != null) {
      return oldPasswordChanged(newOldPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OldPasswordChanged value) oldPasswordChanged,
    required TResult Function(_NewPasswordChanged value) newPasswordChanged,
    required TResult Function(_NewPasswordAgainChanged value)
        newPasswordAgainChanged,
    required TResult Function(_ConfirmPressed value) confirmPressed,
  }) {
    return oldPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OldPasswordChanged value)? oldPasswordChanged,
    TResult Function(_NewPasswordChanged value)? newPasswordChanged,
    TResult Function(_NewPasswordAgainChanged value)? newPasswordAgainChanged,
    TResult Function(_ConfirmPressed value)? confirmPressed,
  }) {
    return oldPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OldPasswordChanged value)? oldPasswordChanged,
    TResult Function(_NewPasswordChanged value)? newPasswordChanged,
    TResult Function(_NewPasswordAgainChanged value)? newPasswordAgainChanged,
    TResult Function(_ConfirmPressed value)? confirmPressed,
    required TResult orElse(),
  }) {
    if (oldPasswordChanged != null) {
      return oldPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _OldPasswordChanged implements ChangePasswordEvent {
  const factory _OldPasswordChanged({required String newOldPassword}) =
      _$_OldPasswordChanged;

  String get newOldPassword;
  @JsonKey(ignore: true)
  _$OldPasswordChangedCopyWith<_OldPasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NewPasswordChangedCopyWith<$Res> {
  factory _$NewPasswordChangedCopyWith(
          _NewPasswordChanged value, $Res Function(_NewPasswordChanged) then) =
      __$NewPasswordChangedCopyWithImpl<$Res>;
  $Res call({String newNewPassword});
}

/// @nodoc
class __$NewPasswordChangedCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res>
    implements _$NewPasswordChangedCopyWith<$Res> {
  __$NewPasswordChangedCopyWithImpl(
      _NewPasswordChanged _value, $Res Function(_NewPasswordChanged) _then)
      : super(_value, (v) => _then(v as _NewPasswordChanged));

  @override
  _NewPasswordChanged get _value => super._value as _NewPasswordChanged;

  @override
  $Res call({
    Object? newNewPassword = freezed,
  }) {
    return _then(_NewPasswordChanged(
      newNewPassword: newNewPassword == freezed
          ? _value.newNewPassword
          : newNewPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NewPasswordChanged implements _NewPasswordChanged {
  const _$_NewPasswordChanged({required this.newNewPassword});

  @override
  final String newNewPassword;

  @override
  String toString() {
    return 'ChangePasswordEvent.newPasswordChanged(newNewPassword: $newNewPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NewPasswordChanged &&
            const DeepCollectionEquality()
                .equals(other.newNewPassword, newNewPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(newNewPassword));

  @JsonKey(ignore: true)
  @override
  _$NewPasswordChangedCopyWith<_NewPasswordChanged> get copyWith =>
      __$NewPasswordChangedCopyWithImpl<_NewPasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newOldPassword) oldPasswordChanged,
    required TResult Function(String newNewPassword) newPasswordChanged,
    required TResult Function(String newNewPasswordAgain)
        newPasswordAgainChanged,
    required TResult Function() confirmPressed,
  }) {
    return newPasswordChanged(newNewPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newOldPassword)? oldPasswordChanged,
    TResult Function(String newNewPassword)? newPasswordChanged,
    TResult Function(String newNewPasswordAgain)? newPasswordAgainChanged,
    TResult Function()? confirmPressed,
  }) {
    return newPasswordChanged?.call(newNewPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newOldPassword)? oldPasswordChanged,
    TResult Function(String newNewPassword)? newPasswordChanged,
    TResult Function(String newNewPasswordAgain)? newPasswordAgainChanged,
    TResult Function()? confirmPressed,
    required TResult orElse(),
  }) {
    if (newPasswordChanged != null) {
      return newPasswordChanged(newNewPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OldPasswordChanged value) oldPasswordChanged,
    required TResult Function(_NewPasswordChanged value) newPasswordChanged,
    required TResult Function(_NewPasswordAgainChanged value)
        newPasswordAgainChanged,
    required TResult Function(_ConfirmPressed value) confirmPressed,
  }) {
    return newPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OldPasswordChanged value)? oldPasswordChanged,
    TResult Function(_NewPasswordChanged value)? newPasswordChanged,
    TResult Function(_NewPasswordAgainChanged value)? newPasswordAgainChanged,
    TResult Function(_ConfirmPressed value)? confirmPressed,
  }) {
    return newPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OldPasswordChanged value)? oldPasswordChanged,
    TResult Function(_NewPasswordChanged value)? newPasswordChanged,
    TResult Function(_NewPasswordAgainChanged value)? newPasswordAgainChanged,
    TResult Function(_ConfirmPressed value)? confirmPressed,
    required TResult orElse(),
  }) {
    if (newPasswordChanged != null) {
      return newPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _NewPasswordChanged implements ChangePasswordEvent {
  const factory _NewPasswordChanged({required String newNewPassword}) =
      _$_NewPasswordChanged;

  String get newNewPassword;
  @JsonKey(ignore: true)
  _$NewPasswordChangedCopyWith<_NewPasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NewPasswordAgainChangedCopyWith<$Res> {
  factory _$NewPasswordAgainChangedCopyWith(_NewPasswordAgainChanged value,
          $Res Function(_NewPasswordAgainChanged) then) =
      __$NewPasswordAgainChangedCopyWithImpl<$Res>;
  $Res call({String newNewPasswordAgain});
}

/// @nodoc
class __$NewPasswordAgainChangedCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res>
    implements _$NewPasswordAgainChangedCopyWith<$Res> {
  __$NewPasswordAgainChangedCopyWithImpl(_NewPasswordAgainChanged _value,
      $Res Function(_NewPasswordAgainChanged) _then)
      : super(_value, (v) => _then(v as _NewPasswordAgainChanged));

  @override
  _NewPasswordAgainChanged get _value =>
      super._value as _NewPasswordAgainChanged;

  @override
  $Res call({
    Object? newNewPasswordAgain = freezed,
  }) {
    return _then(_NewPasswordAgainChanged(
      newNewPasswordAgain: newNewPasswordAgain == freezed
          ? _value.newNewPasswordAgain
          : newNewPasswordAgain // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NewPasswordAgainChanged implements _NewPasswordAgainChanged {
  const _$_NewPasswordAgainChanged({required this.newNewPasswordAgain});

  @override
  final String newNewPasswordAgain;

  @override
  String toString() {
    return 'ChangePasswordEvent.newPasswordAgainChanged(newNewPasswordAgain: $newNewPasswordAgain)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NewPasswordAgainChanged &&
            const DeepCollectionEquality()
                .equals(other.newNewPasswordAgain, newNewPasswordAgain));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(newNewPasswordAgain));

  @JsonKey(ignore: true)
  @override
  _$NewPasswordAgainChangedCopyWith<_NewPasswordAgainChanged> get copyWith =>
      __$NewPasswordAgainChangedCopyWithImpl<_NewPasswordAgainChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newOldPassword) oldPasswordChanged,
    required TResult Function(String newNewPassword) newPasswordChanged,
    required TResult Function(String newNewPasswordAgain)
        newPasswordAgainChanged,
    required TResult Function() confirmPressed,
  }) {
    return newPasswordAgainChanged(newNewPasswordAgain);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newOldPassword)? oldPasswordChanged,
    TResult Function(String newNewPassword)? newPasswordChanged,
    TResult Function(String newNewPasswordAgain)? newPasswordAgainChanged,
    TResult Function()? confirmPressed,
  }) {
    return newPasswordAgainChanged?.call(newNewPasswordAgain);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newOldPassword)? oldPasswordChanged,
    TResult Function(String newNewPassword)? newPasswordChanged,
    TResult Function(String newNewPasswordAgain)? newPasswordAgainChanged,
    TResult Function()? confirmPressed,
    required TResult orElse(),
  }) {
    if (newPasswordAgainChanged != null) {
      return newPasswordAgainChanged(newNewPasswordAgain);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OldPasswordChanged value) oldPasswordChanged,
    required TResult Function(_NewPasswordChanged value) newPasswordChanged,
    required TResult Function(_NewPasswordAgainChanged value)
        newPasswordAgainChanged,
    required TResult Function(_ConfirmPressed value) confirmPressed,
  }) {
    return newPasswordAgainChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OldPasswordChanged value)? oldPasswordChanged,
    TResult Function(_NewPasswordChanged value)? newPasswordChanged,
    TResult Function(_NewPasswordAgainChanged value)? newPasswordAgainChanged,
    TResult Function(_ConfirmPressed value)? confirmPressed,
  }) {
    return newPasswordAgainChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OldPasswordChanged value)? oldPasswordChanged,
    TResult Function(_NewPasswordChanged value)? newPasswordChanged,
    TResult Function(_NewPasswordAgainChanged value)? newPasswordAgainChanged,
    TResult Function(_ConfirmPressed value)? confirmPressed,
    required TResult orElse(),
  }) {
    if (newPasswordAgainChanged != null) {
      return newPasswordAgainChanged(this);
    }
    return orElse();
  }
}

abstract class _NewPasswordAgainChanged implements ChangePasswordEvent {
  const factory _NewPasswordAgainChanged(
      {required String newNewPasswordAgain}) = _$_NewPasswordAgainChanged;

  String get newNewPasswordAgain;
  @JsonKey(ignore: true)
  _$NewPasswordAgainChangedCopyWith<_NewPasswordAgainChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ConfirmPressedCopyWith<$Res> {
  factory _$ConfirmPressedCopyWith(
          _ConfirmPressed value, $Res Function(_ConfirmPressed) then) =
      __$ConfirmPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ConfirmPressedCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res>
    implements _$ConfirmPressedCopyWith<$Res> {
  __$ConfirmPressedCopyWithImpl(
      _ConfirmPressed _value, $Res Function(_ConfirmPressed) _then)
      : super(_value, (v) => _then(v as _ConfirmPressed));

  @override
  _ConfirmPressed get _value => super._value as _ConfirmPressed;
}

/// @nodoc

class _$_ConfirmPressed implements _ConfirmPressed {
  const _$_ConfirmPressed();

  @override
  String toString() {
    return 'ChangePasswordEvent.confirmPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ConfirmPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newOldPassword) oldPasswordChanged,
    required TResult Function(String newNewPassword) newPasswordChanged,
    required TResult Function(String newNewPasswordAgain)
        newPasswordAgainChanged,
    required TResult Function() confirmPressed,
  }) {
    return confirmPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newOldPassword)? oldPasswordChanged,
    TResult Function(String newNewPassword)? newPasswordChanged,
    TResult Function(String newNewPasswordAgain)? newPasswordAgainChanged,
    TResult Function()? confirmPressed,
  }) {
    return confirmPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newOldPassword)? oldPasswordChanged,
    TResult Function(String newNewPassword)? newPasswordChanged,
    TResult Function(String newNewPasswordAgain)? newPasswordAgainChanged,
    TResult Function()? confirmPressed,
    required TResult orElse(),
  }) {
    if (confirmPressed != null) {
      return confirmPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OldPasswordChanged value) oldPasswordChanged,
    required TResult Function(_NewPasswordChanged value) newPasswordChanged,
    required TResult Function(_NewPasswordAgainChanged value)
        newPasswordAgainChanged,
    required TResult Function(_ConfirmPressed value) confirmPressed,
  }) {
    return confirmPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OldPasswordChanged value)? oldPasswordChanged,
    TResult Function(_NewPasswordChanged value)? newPasswordChanged,
    TResult Function(_NewPasswordAgainChanged value)? newPasswordAgainChanged,
    TResult Function(_ConfirmPressed value)? confirmPressed,
  }) {
    return confirmPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OldPasswordChanged value)? oldPasswordChanged,
    TResult Function(_NewPasswordChanged value)? newPasswordChanged,
    TResult Function(_NewPasswordAgainChanged value)? newPasswordAgainChanged,
    TResult Function(_ConfirmPressed value)? confirmPressed,
    required TResult orElse(),
  }) {
    if (confirmPressed != null) {
      return confirmPressed(this);
    }
    return orElse();
  }
}

abstract class _ConfirmPressed implements ChangePasswordEvent {
  const factory _ConfirmPressed() = _$_ConfirmPressed;
}

/// @nodoc
class _$ChangePasswordStateTearOff {
  const _$ChangePasswordStateTearOff();

  ChangePasswordInitial initial(
      {required Password oldPassword,
      required Password newPassword,
      required Password newPasswordAgain,
      required bool showErrorMessages}) {
    return ChangePasswordInitial(
      oldPassword: oldPassword,
      newPassword: newPassword,
      newPasswordAgain: newPasswordAgain,
      showErrorMessages: showErrorMessages,
    );
  }

  ChangePasswordSubmitInProgress submitInProgress() {
    return const ChangePasswordSubmitInProgress();
  }

  ChangePasswordSubmitSuccess submitSuccess() {
    return const ChangePasswordSubmitSuccess();
  }

  ChangePasswordSubmitFailure submitFailure(
      {required AuthFailure authFailure}) {
    return ChangePasswordSubmitFailure(
      authFailure: authFailure,
    );
  }
}

/// @nodoc
const $ChangePasswordState = _$ChangePasswordStateTearOff();

/// @nodoc
mixin _$ChangePasswordState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Password oldPassword, Password newPassword,
            Password newPasswordAgain, bool showErrorMessages)
        initial,
    required TResult Function() submitInProgress,
    required TResult Function() submitSuccess,
    required TResult Function(AuthFailure authFailure) submitFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Password oldPassword, Password newPassword,
            Password newPasswordAgain, bool showErrorMessages)?
        initial,
    TResult Function()? submitInProgress,
    TResult Function()? submitSuccess,
    TResult Function(AuthFailure authFailure)? submitFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Password oldPassword, Password newPassword,
            Password newPasswordAgain, bool showErrorMessages)?
        initial,
    TResult Function()? submitInProgress,
    TResult Function()? submitSuccess,
    TResult Function(AuthFailure authFailure)? submitFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangePasswordInitial value) initial,
    required TResult Function(ChangePasswordSubmitInProgress value)
        submitInProgress,
    required TResult Function(ChangePasswordSubmitSuccess value) submitSuccess,
    required TResult Function(ChangePasswordSubmitFailure value) submitFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangePasswordInitial value)? initial,
    TResult Function(ChangePasswordSubmitInProgress value)? submitInProgress,
    TResult Function(ChangePasswordSubmitSuccess value)? submitSuccess,
    TResult Function(ChangePasswordSubmitFailure value)? submitFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePasswordInitial value)? initial,
    TResult Function(ChangePasswordSubmitInProgress value)? submitInProgress,
    TResult Function(ChangePasswordSubmitSuccess value)? submitSuccess,
    TResult Function(ChangePasswordSubmitFailure value)? submitFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordStateCopyWith<$Res> {
  factory $ChangePasswordStateCopyWith(
          ChangePasswordState value, $Res Function(ChangePasswordState) then) =
      _$ChangePasswordStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChangePasswordStateCopyWithImpl<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  _$ChangePasswordStateCopyWithImpl(this._value, this._then);

  final ChangePasswordState _value;
  // ignore: unused_field
  final $Res Function(ChangePasswordState) _then;
}

/// @nodoc
abstract class $ChangePasswordInitialCopyWith<$Res> {
  factory $ChangePasswordInitialCopyWith(ChangePasswordInitial value,
          $Res Function(ChangePasswordInitial) then) =
      _$ChangePasswordInitialCopyWithImpl<$Res>;
  $Res call(
      {Password oldPassword,
      Password newPassword,
      Password newPasswordAgain,
      bool showErrorMessages});
}

/// @nodoc
class _$ChangePasswordInitialCopyWithImpl<$Res>
    extends _$ChangePasswordStateCopyWithImpl<$Res>
    implements $ChangePasswordInitialCopyWith<$Res> {
  _$ChangePasswordInitialCopyWithImpl(
      ChangePasswordInitial _value, $Res Function(ChangePasswordInitial) _then)
      : super(_value, (v) => _then(v as ChangePasswordInitial));

  @override
  ChangePasswordInitial get _value => super._value as ChangePasswordInitial;

  @override
  $Res call({
    Object? oldPassword = freezed,
    Object? newPassword = freezed,
    Object? newPasswordAgain = freezed,
    Object? showErrorMessages = freezed,
  }) {
    return _then(ChangePasswordInitial(
      oldPassword: oldPassword == freezed
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      newPassword: newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      newPasswordAgain: newPasswordAgain == freezed
          ? _value.newPasswordAgain
          : newPasswordAgain // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChangePasswordInitial implements ChangePasswordInitial {
  const _$ChangePasswordInitial(
      {required this.oldPassword,
      required this.newPassword,
      required this.newPasswordAgain,
      required this.showErrorMessages});

  @override
  final Password oldPassword;
  @override
  final Password newPassword;
  @override
  final Password newPasswordAgain;
  @override
  final bool showErrorMessages;

  @override
  String toString() {
    return 'ChangePasswordState.initial(oldPassword: $oldPassword, newPassword: $newPassword, newPasswordAgain: $newPasswordAgain, showErrorMessages: $showErrorMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangePasswordInitial &&
            const DeepCollectionEquality()
                .equals(other.oldPassword, oldPassword) &&
            const DeepCollectionEquality()
                .equals(other.newPassword, newPassword) &&
            const DeepCollectionEquality()
                .equals(other.newPasswordAgain, newPasswordAgain) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(oldPassword),
      const DeepCollectionEquality().hash(newPassword),
      const DeepCollectionEquality().hash(newPasswordAgain),
      const DeepCollectionEquality().hash(showErrorMessages));

  @JsonKey(ignore: true)
  @override
  $ChangePasswordInitialCopyWith<ChangePasswordInitial> get copyWith =>
      _$ChangePasswordInitialCopyWithImpl<ChangePasswordInitial>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Password oldPassword, Password newPassword,
            Password newPasswordAgain, bool showErrorMessages)
        initial,
    required TResult Function() submitInProgress,
    required TResult Function() submitSuccess,
    required TResult Function(AuthFailure authFailure) submitFailure,
  }) {
    return initial(
        oldPassword, newPassword, newPasswordAgain, showErrorMessages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Password oldPassword, Password newPassword,
            Password newPasswordAgain, bool showErrorMessages)?
        initial,
    TResult Function()? submitInProgress,
    TResult Function()? submitSuccess,
    TResult Function(AuthFailure authFailure)? submitFailure,
  }) {
    return initial?.call(
        oldPassword, newPassword, newPasswordAgain, showErrorMessages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Password oldPassword, Password newPassword,
            Password newPasswordAgain, bool showErrorMessages)?
        initial,
    TResult Function()? submitInProgress,
    TResult Function()? submitSuccess,
    TResult Function(AuthFailure authFailure)? submitFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(
          oldPassword, newPassword, newPasswordAgain, showErrorMessages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangePasswordInitial value) initial,
    required TResult Function(ChangePasswordSubmitInProgress value)
        submitInProgress,
    required TResult Function(ChangePasswordSubmitSuccess value) submitSuccess,
    required TResult Function(ChangePasswordSubmitFailure value) submitFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangePasswordInitial value)? initial,
    TResult Function(ChangePasswordSubmitInProgress value)? submitInProgress,
    TResult Function(ChangePasswordSubmitSuccess value)? submitSuccess,
    TResult Function(ChangePasswordSubmitFailure value)? submitFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePasswordInitial value)? initial,
    TResult Function(ChangePasswordSubmitInProgress value)? submitInProgress,
    TResult Function(ChangePasswordSubmitSuccess value)? submitSuccess,
    TResult Function(ChangePasswordSubmitFailure value)? submitFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ChangePasswordInitial implements ChangePasswordState {
  const factory ChangePasswordInitial(
      {required Password oldPassword,
      required Password newPassword,
      required Password newPasswordAgain,
      required bool showErrorMessages}) = _$ChangePasswordInitial;

  Password get oldPassword;
  Password get newPassword;
  Password get newPasswordAgain;
  bool get showErrorMessages;
  @JsonKey(ignore: true)
  $ChangePasswordInitialCopyWith<ChangePasswordInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordSubmitInProgressCopyWith<$Res> {
  factory $ChangePasswordSubmitInProgressCopyWith(
          ChangePasswordSubmitInProgress value,
          $Res Function(ChangePasswordSubmitInProgress) then) =
      _$ChangePasswordSubmitInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChangePasswordSubmitInProgressCopyWithImpl<$Res>
    extends _$ChangePasswordStateCopyWithImpl<$Res>
    implements $ChangePasswordSubmitInProgressCopyWith<$Res> {
  _$ChangePasswordSubmitInProgressCopyWithImpl(
      ChangePasswordSubmitInProgress _value,
      $Res Function(ChangePasswordSubmitInProgress) _then)
      : super(_value, (v) => _then(v as ChangePasswordSubmitInProgress));

  @override
  ChangePasswordSubmitInProgress get _value =>
      super._value as ChangePasswordSubmitInProgress;
}

/// @nodoc

class _$ChangePasswordSubmitInProgress
    implements ChangePasswordSubmitInProgress {
  const _$ChangePasswordSubmitInProgress();

  @override
  String toString() {
    return 'ChangePasswordState.submitInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangePasswordSubmitInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Password oldPassword, Password newPassword,
            Password newPasswordAgain, bool showErrorMessages)
        initial,
    required TResult Function() submitInProgress,
    required TResult Function() submitSuccess,
    required TResult Function(AuthFailure authFailure) submitFailure,
  }) {
    return submitInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Password oldPassword, Password newPassword,
            Password newPasswordAgain, bool showErrorMessages)?
        initial,
    TResult Function()? submitInProgress,
    TResult Function()? submitSuccess,
    TResult Function(AuthFailure authFailure)? submitFailure,
  }) {
    return submitInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Password oldPassword, Password newPassword,
            Password newPasswordAgain, bool showErrorMessages)?
        initial,
    TResult Function()? submitInProgress,
    TResult Function()? submitSuccess,
    TResult Function(AuthFailure authFailure)? submitFailure,
    required TResult orElse(),
  }) {
    if (submitInProgress != null) {
      return submitInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangePasswordInitial value) initial,
    required TResult Function(ChangePasswordSubmitInProgress value)
        submitInProgress,
    required TResult Function(ChangePasswordSubmitSuccess value) submitSuccess,
    required TResult Function(ChangePasswordSubmitFailure value) submitFailure,
  }) {
    return submitInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangePasswordInitial value)? initial,
    TResult Function(ChangePasswordSubmitInProgress value)? submitInProgress,
    TResult Function(ChangePasswordSubmitSuccess value)? submitSuccess,
    TResult Function(ChangePasswordSubmitFailure value)? submitFailure,
  }) {
    return submitInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePasswordInitial value)? initial,
    TResult Function(ChangePasswordSubmitInProgress value)? submitInProgress,
    TResult Function(ChangePasswordSubmitSuccess value)? submitSuccess,
    TResult Function(ChangePasswordSubmitFailure value)? submitFailure,
    required TResult orElse(),
  }) {
    if (submitInProgress != null) {
      return submitInProgress(this);
    }
    return orElse();
  }
}

abstract class ChangePasswordSubmitInProgress implements ChangePasswordState {
  const factory ChangePasswordSubmitInProgress() =
      _$ChangePasswordSubmitInProgress;
}

/// @nodoc
abstract class $ChangePasswordSubmitSuccessCopyWith<$Res> {
  factory $ChangePasswordSubmitSuccessCopyWith(
          ChangePasswordSubmitSuccess value,
          $Res Function(ChangePasswordSubmitSuccess) then) =
      _$ChangePasswordSubmitSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChangePasswordSubmitSuccessCopyWithImpl<$Res>
    extends _$ChangePasswordStateCopyWithImpl<$Res>
    implements $ChangePasswordSubmitSuccessCopyWith<$Res> {
  _$ChangePasswordSubmitSuccessCopyWithImpl(ChangePasswordSubmitSuccess _value,
      $Res Function(ChangePasswordSubmitSuccess) _then)
      : super(_value, (v) => _then(v as ChangePasswordSubmitSuccess));

  @override
  ChangePasswordSubmitSuccess get _value =>
      super._value as ChangePasswordSubmitSuccess;
}

/// @nodoc

class _$ChangePasswordSubmitSuccess implements ChangePasswordSubmitSuccess {
  const _$ChangePasswordSubmitSuccess();

  @override
  String toString() {
    return 'ChangePasswordState.submitSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangePasswordSubmitSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Password oldPassword, Password newPassword,
            Password newPasswordAgain, bool showErrorMessages)
        initial,
    required TResult Function() submitInProgress,
    required TResult Function() submitSuccess,
    required TResult Function(AuthFailure authFailure) submitFailure,
  }) {
    return submitSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Password oldPassword, Password newPassword,
            Password newPasswordAgain, bool showErrorMessages)?
        initial,
    TResult Function()? submitInProgress,
    TResult Function()? submitSuccess,
    TResult Function(AuthFailure authFailure)? submitFailure,
  }) {
    return submitSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Password oldPassword, Password newPassword,
            Password newPasswordAgain, bool showErrorMessages)?
        initial,
    TResult Function()? submitInProgress,
    TResult Function()? submitSuccess,
    TResult Function(AuthFailure authFailure)? submitFailure,
    required TResult orElse(),
  }) {
    if (submitSuccess != null) {
      return submitSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangePasswordInitial value) initial,
    required TResult Function(ChangePasswordSubmitInProgress value)
        submitInProgress,
    required TResult Function(ChangePasswordSubmitSuccess value) submitSuccess,
    required TResult Function(ChangePasswordSubmitFailure value) submitFailure,
  }) {
    return submitSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangePasswordInitial value)? initial,
    TResult Function(ChangePasswordSubmitInProgress value)? submitInProgress,
    TResult Function(ChangePasswordSubmitSuccess value)? submitSuccess,
    TResult Function(ChangePasswordSubmitFailure value)? submitFailure,
  }) {
    return submitSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePasswordInitial value)? initial,
    TResult Function(ChangePasswordSubmitInProgress value)? submitInProgress,
    TResult Function(ChangePasswordSubmitSuccess value)? submitSuccess,
    TResult Function(ChangePasswordSubmitFailure value)? submitFailure,
    required TResult orElse(),
  }) {
    if (submitSuccess != null) {
      return submitSuccess(this);
    }
    return orElse();
  }
}

abstract class ChangePasswordSubmitSuccess implements ChangePasswordState {
  const factory ChangePasswordSubmitSuccess() = _$ChangePasswordSubmitSuccess;
}

/// @nodoc
abstract class $ChangePasswordSubmitFailureCopyWith<$Res> {
  factory $ChangePasswordSubmitFailureCopyWith(
          ChangePasswordSubmitFailure value,
          $Res Function(ChangePasswordSubmitFailure) then) =
      _$ChangePasswordSubmitFailureCopyWithImpl<$Res>;
  $Res call({AuthFailure authFailure});

  $AuthFailureCopyWith<$Res> get authFailure;
}

/// @nodoc
class _$ChangePasswordSubmitFailureCopyWithImpl<$Res>
    extends _$ChangePasswordStateCopyWithImpl<$Res>
    implements $ChangePasswordSubmitFailureCopyWith<$Res> {
  _$ChangePasswordSubmitFailureCopyWithImpl(ChangePasswordSubmitFailure _value,
      $Res Function(ChangePasswordSubmitFailure) _then)
      : super(_value, (v) => _then(v as ChangePasswordSubmitFailure));

  @override
  ChangePasswordSubmitFailure get _value =>
      super._value as ChangePasswordSubmitFailure;

  @override
  $Res call({
    Object? authFailure = freezed,
  }) {
    return _then(ChangePasswordSubmitFailure(
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

class _$ChangePasswordSubmitFailure implements ChangePasswordSubmitFailure {
  const _$ChangePasswordSubmitFailure({required this.authFailure});

  @override
  final AuthFailure authFailure;

  @override
  String toString() {
    return 'ChangePasswordState.submitFailure(authFailure: $authFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangePasswordSubmitFailure &&
            const DeepCollectionEquality()
                .equals(other.authFailure, authFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(authFailure));

  @JsonKey(ignore: true)
  @override
  $ChangePasswordSubmitFailureCopyWith<ChangePasswordSubmitFailure>
      get copyWith => _$ChangePasswordSubmitFailureCopyWithImpl<
          ChangePasswordSubmitFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Password oldPassword, Password newPassword,
            Password newPasswordAgain, bool showErrorMessages)
        initial,
    required TResult Function() submitInProgress,
    required TResult Function() submitSuccess,
    required TResult Function(AuthFailure authFailure) submitFailure,
  }) {
    return submitFailure(authFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Password oldPassword, Password newPassword,
            Password newPasswordAgain, bool showErrorMessages)?
        initial,
    TResult Function()? submitInProgress,
    TResult Function()? submitSuccess,
    TResult Function(AuthFailure authFailure)? submitFailure,
  }) {
    return submitFailure?.call(authFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Password oldPassword, Password newPassword,
            Password newPasswordAgain, bool showErrorMessages)?
        initial,
    TResult Function()? submitInProgress,
    TResult Function()? submitSuccess,
    TResult Function(AuthFailure authFailure)? submitFailure,
    required TResult orElse(),
  }) {
    if (submitFailure != null) {
      return submitFailure(authFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangePasswordInitial value) initial,
    required TResult Function(ChangePasswordSubmitInProgress value)
        submitInProgress,
    required TResult Function(ChangePasswordSubmitSuccess value) submitSuccess,
    required TResult Function(ChangePasswordSubmitFailure value) submitFailure,
  }) {
    return submitFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangePasswordInitial value)? initial,
    TResult Function(ChangePasswordSubmitInProgress value)? submitInProgress,
    TResult Function(ChangePasswordSubmitSuccess value)? submitSuccess,
    TResult Function(ChangePasswordSubmitFailure value)? submitFailure,
  }) {
    return submitFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePasswordInitial value)? initial,
    TResult Function(ChangePasswordSubmitInProgress value)? submitInProgress,
    TResult Function(ChangePasswordSubmitSuccess value)? submitSuccess,
    TResult Function(ChangePasswordSubmitFailure value)? submitFailure,
    required TResult orElse(),
  }) {
    if (submitFailure != null) {
      return submitFailure(this);
    }
    return orElse();
  }
}

abstract class ChangePasswordSubmitFailure implements ChangePasswordState {
  const factory ChangePasswordSubmitFailure(
      {required AuthFailure authFailure}) = _$ChangePasswordSubmitFailure;

  AuthFailure get authFailure;
  @JsonKey(ignore: true)
  $ChangePasswordSubmitFailureCopyWith<ChangePasswordSubmitFailure>
      get copyWith => throw _privateConstructorUsedError;
}
