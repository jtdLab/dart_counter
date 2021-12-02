// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'forgot_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ForgotPasswordEventTearOff {
  const _$ForgotPasswordEventTearOff();

  _EmailChanged emailChanged({required String newEmail}) {
    return _EmailChanged(
      newEmail: newEmail,
    );
  }

  _ConfirmPressed confirmPressed() {
    return const _ConfirmPressed();
  }
}

/// @nodoc
const $ForgotPasswordEvent = _$ForgotPasswordEventTearOff();

/// @nodoc
mixin _$ForgotPasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newEmail) emailChanged,
    required TResult Function() confirmPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newEmail)? emailChanged,
    TResult Function()? confirmPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newEmail)? emailChanged,
    TResult Function()? confirmPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_ConfirmPressed value) confirmPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_ConfirmPressed value)? confirmPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_ConfirmPressed value)? confirmPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordEventCopyWith<$Res> {
  factory $ForgotPasswordEventCopyWith(
          ForgotPasswordEvent value, $Res Function(ForgotPasswordEvent) then) =
      _$ForgotPasswordEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ForgotPasswordEventCopyWithImpl<$Res>
    implements $ForgotPasswordEventCopyWith<$Res> {
  _$ForgotPasswordEventCopyWithImpl(this._value, this._then);

  final ForgotPasswordEvent _value;
  // ignore: unused_field
  final $Res Function(ForgotPasswordEvent) _then;
}

/// @nodoc
abstract class _$EmailChangedCopyWith<$Res> {
  factory _$EmailChangedCopyWith(
          _EmailChanged value, $Res Function(_EmailChanged) then) =
      __$EmailChangedCopyWithImpl<$Res>;
  $Res call({String newEmail});
}

/// @nodoc
class __$EmailChangedCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res>
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
    return 'ForgotPasswordEvent.emailChanged(newEmail: $newEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmailChanged &&
            (identical(other.newEmail, newEmail) ||
                other.newEmail == newEmail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newEmail);

  @JsonKey(ignore: true)
  @override
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      __$EmailChangedCopyWithImpl<_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newEmail) emailChanged,
    required TResult Function() confirmPressed,
  }) {
    return emailChanged(newEmail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newEmail)? emailChanged,
    TResult Function()? confirmPressed,
  }) {
    return emailChanged?.call(newEmail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newEmail)? emailChanged,
    TResult Function()? confirmPressed,
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
    required TResult Function(_ConfirmPressed value) confirmPressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_ConfirmPressed value)? confirmPressed,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_ConfirmPressed value)? confirmPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements ForgotPasswordEvent {
  const factory _EmailChanged({required String newEmail}) = _$_EmailChanged;

  String get newEmail;
  @JsonKey(ignore: true)
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
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
    extends _$ForgotPasswordEventCopyWithImpl<$Res>
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
    return 'ForgotPasswordEvent.confirmPressed()';
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
    required TResult Function(String newEmail) emailChanged,
    required TResult Function() confirmPressed,
  }) {
    return confirmPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newEmail)? emailChanged,
    TResult Function()? confirmPressed,
  }) {
    return confirmPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newEmail)? emailChanged,
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
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_ConfirmPressed value) confirmPressed,
  }) {
    return confirmPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_ConfirmPressed value)? confirmPressed,
  }) {
    return confirmPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_ConfirmPressed value)? confirmPressed,
    required TResult orElse(),
  }) {
    if (confirmPressed != null) {
      return confirmPressed(this);
    }
    return orElse();
  }
}

abstract class _ConfirmPressed implements ForgotPasswordEvent {
  const factory _ConfirmPressed() = _$_ConfirmPressed;
}

/// @nodoc
class _$ForgotPasswordStateTearOff {
  const _$ForgotPasswordStateTearOff();

  ForgotPasswordInitial initial(
      {required EmailAddress email, required bool showErrorMessages}) {
    return ForgotPasswordInitial(
      email: email,
      showErrorMessages: showErrorMessages,
    );
  }

  ForgotPasswordSubmitInProgress submitInProgress() {
    return const ForgotPasswordSubmitInProgress();
  }

  ForgotPasswordSubmitSuccess submitSuccess() {
    return const ForgotPasswordSubmitSuccess();
  }

  ForgotPasswordSubmitFailure submitFailure(
      {required AuthFailure authFailure}) {
    return ForgotPasswordSubmitFailure(
      authFailure: authFailure,
    );
  }
}

/// @nodoc
const $ForgotPasswordState = _$ForgotPasswordStateTearOff();

/// @nodoc
mixin _$ForgotPasswordState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmailAddress email, bool showErrorMessages)
        initial,
    required TResult Function() submitInProgress,
    required TResult Function() submitSuccess,
    required TResult Function(AuthFailure authFailure) submitFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(EmailAddress email, bool showErrorMessages)? initial,
    TResult Function()? submitInProgress,
    TResult Function()? submitSuccess,
    TResult Function(AuthFailure authFailure)? submitFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailAddress email, bool showErrorMessages)? initial,
    TResult Function()? submitInProgress,
    TResult Function()? submitSuccess,
    TResult Function(AuthFailure authFailure)? submitFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ForgotPasswordInitial value) initial,
    required TResult Function(ForgotPasswordSubmitInProgress value)
        submitInProgress,
    required TResult Function(ForgotPasswordSubmitSuccess value) submitSuccess,
    required TResult Function(ForgotPasswordSubmitFailure value) submitFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ForgotPasswordInitial value)? initial,
    TResult Function(ForgotPasswordSubmitInProgress value)? submitInProgress,
    TResult Function(ForgotPasswordSubmitSuccess value)? submitSuccess,
    TResult Function(ForgotPasswordSubmitFailure value)? submitFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPasswordInitial value)? initial,
    TResult Function(ForgotPasswordSubmitInProgress value)? submitInProgress,
    TResult Function(ForgotPasswordSubmitSuccess value)? submitSuccess,
    TResult Function(ForgotPasswordSubmitFailure value)? submitFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordStateCopyWith<$Res> {
  factory $ForgotPasswordStateCopyWith(
          ForgotPasswordState value, $Res Function(ForgotPasswordState) then) =
      _$ForgotPasswordStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ForgotPasswordStateCopyWithImpl<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  _$ForgotPasswordStateCopyWithImpl(this._value, this._then);

  final ForgotPasswordState _value;
  // ignore: unused_field
  final $Res Function(ForgotPasswordState) _then;
}

/// @nodoc
abstract class $ForgotPasswordInitialCopyWith<$Res> {
  factory $ForgotPasswordInitialCopyWith(ForgotPasswordInitial value,
          $Res Function(ForgotPasswordInitial) then) =
      _$ForgotPasswordInitialCopyWithImpl<$Res>;
  $Res call({EmailAddress email, bool showErrorMessages});
}

/// @nodoc
class _$ForgotPasswordInitialCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res>
    implements $ForgotPasswordInitialCopyWith<$Res> {
  _$ForgotPasswordInitialCopyWithImpl(
      ForgotPasswordInitial _value, $Res Function(ForgotPasswordInitial) _then)
      : super(_value, (v) => _then(v as ForgotPasswordInitial));

  @override
  ForgotPasswordInitial get _value => super._value as ForgotPasswordInitial;

  @override
  $Res call({
    Object? email = freezed,
    Object? showErrorMessages = freezed,
  }) {
    return _then(ForgotPasswordInitial(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordInitial implements ForgotPasswordInitial {
  const _$ForgotPasswordInitial(
      {required this.email, required this.showErrorMessages});

  @override
  final EmailAddress email;
  @override
  final bool showErrorMessages;

  @override
  String toString() {
    return 'ForgotPasswordState.initial(email: $email, showErrorMessages: $showErrorMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ForgotPasswordInitial &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, showErrorMessages);

  @JsonKey(ignore: true)
  @override
  $ForgotPasswordInitialCopyWith<ForgotPasswordInitial> get copyWith =>
      _$ForgotPasswordInitialCopyWithImpl<ForgotPasswordInitial>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmailAddress email, bool showErrorMessages)
        initial,
    required TResult Function() submitInProgress,
    required TResult Function() submitSuccess,
    required TResult Function(AuthFailure authFailure) submitFailure,
  }) {
    return initial(email, showErrorMessages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(EmailAddress email, bool showErrorMessages)? initial,
    TResult Function()? submitInProgress,
    TResult Function()? submitSuccess,
    TResult Function(AuthFailure authFailure)? submitFailure,
  }) {
    return initial?.call(email, showErrorMessages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailAddress email, bool showErrorMessages)? initial,
    TResult Function()? submitInProgress,
    TResult Function()? submitSuccess,
    TResult Function(AuthFailure authFailure)? submitFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(email, showErrorMessages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ForgotPasswordInitial value) initial,
    required TResult Function(ForgotPasswordSubmitInProgress value)
        submitInProgress,
    required TResult Function(ForgotPasswordSubmitSuccess value) submitSuccess,
    required TResult Function(ForgotPasswordSubmitFailure value) submitFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ForgotPasswordInitial value)? initial,
    TResult Function(ForgotPasswordSubmitInProgress value)? submitInProgress,
    TResult Function(ForgotPasswordSubmitSuccess value)? submitSuccess,
    TResult Function(ForgotPasswordSubmitFailure value)? submitFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPasswordInitial value)? initial,
    TResult Function(ForgotPasswordSubmitInProgress value)? submitInProgress,
    TResult Function(ForgotPasswordSubmitSuccess value)? submitSuccess,
    TResult Function(ForgotPasswordSubmitFailure value)? submitFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordInitial implements ForgotPasswordState {
  const factory ForgotPasswordInitial(
      {required EmailAddress email,
      required bool showErrorMessages}) = _$ForgotPasswordInitial;

  EmailAddress get email;
  bool get showErrorMessages;
  @JsonKey(ignore: true)
  $ForgotPasswordInitialCopyWith<ForgotPasswordInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordSubmitInProgressCopyWith<$Res> {
  factory $ForgotPasswordSubmitInProgressCopyWith(
          ForgotPasswordSubmitInProgress value,
          $Res Function(ForgotPasswordSubmitInProgress) then) =
      _$ForgotPasswordSubmitInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$ForgotPasswordSubmitInProgressCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res>
    implements $ForgotPasswordSubmitInProgressCopyWith<$Res> {
  _$ForgotPasswordSubmitInProgressCopyWithImpl(
      ForgotPasswordSubmitInProgress _value,
      $Res Function(ForgotPasswordSubmitInProgress) _then)
      : super(_value, (v) => _then(v as ForgotPasswordSubmitInProgress));

  @override
  ForgotPasswordSubmitInProgress get _value =>
      super._value as ForgotPasswordSubmitInProgress;
}

/// @nodoc

class _$ForgotPasswordSubmitInProgress
    implements ForgotPasswordSubmitInProgress {
  const _$ForgotPasswordSubmitInProgress();

  @override
  String toString() {
    return 'ForgotPasswordState.submitInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ForgotPasswordSubmitInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmailAddress email, bool showErrorMessages)
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
    TResult Function(EmailAddress email, bool showErrorMessages)? initial,
    TResult Function()? submitInProgress,
    TResult Function()? submitSuccess,
    TResult Function(AuthFailure authFailure)? submitFailure,
  }) {
    return submitInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailAddress email, bool showErrorMessages)? initial,
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
    required TResult Function(ForgotPasswordInitial value) initial,
    required TResult Function(ForgotPasswordSubmitInProgress value)
        submitInProgress,
    required TResult Function(ForgotPasswordSubmitSuccess value) submitSuccess,
    required TResult Function(ForgotPasswordSubmitFailure value) submitFailure,
  }) {
    return submitInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ForgotPasswordInitial value)? initial,
    TResult Function(ForgotPasswordSubmitInProgress value)? submitInProgress,
    TResult Function(ForgotPasswordSubmitSuccess value)? submitSuccess,
    TResult Function(ForgotPasswordSubmitFailure value)? submitFailure,
  }) {
    return submitInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPasswordInitial value)? initial,
    TResult Function(ForgotPasswordSubmitInProgress value)? submitInProgress,
    TResult Function(ForgotPasswordSubmitSuccess value)? submitSuccess,
    TResult Function(ForgotPasswordSubmitFailure value)? submitFailure,
    required TResult orElse(),
  }) {
    if (submitInProgress != null) {
      return submitInProgress(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordSubmitInProgress implements ForgotPasswordState {
  const factory ForgotPasswordSubmitInProgress() =
      _$ForgotPasswordSubmitInProgress;
}

/// @nodoc
abstract class $ForgotPasswordSubmitSuccessCopyWith<$Res> {
  factory $ForgotPasswordSubmitSuccessCopyWith(
          ForgotPasswordSubmitSuccess value,
          $Res Function(ForgotPasswordSubmitSuccess) then) =
      _$ForgotPasswordSubmitSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$ForgotPasswordSubmitSuccessCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res>
    implements $ForgotPasswordSubmitSuccessCopyWith<$Res> {
  _$ForgotPasswordSubmitSuccessCopyWithImpl(ForgotPasswordSubmitSuccess _value,
      $Res Function(ForgotPasswordSubmitSuccess) _then)
      : super(_value, (v) => _then(v as ForgotPasswordSubmitSuccess));

  @override
  ForgotPasswordSubmitSuccess get _value =>
      super._value as ForgotPasswordSubmitSuccess;
}

/// @nodoc

class _$ForgotPasswordSubmitSuccess implements ForgotPasswordSubmitSuccess {
  const _$ForgotPasswordSubmitSuccess();

  @override
  String toString() {
    return 'ForgotPasswordState.submitSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ForgotPasswordSubmitSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmailAddress email, bool showErrorMessages)
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
    TResult Function(EmailAddress email, bool showErrorMessages)? initial,
    TResult Function()? submitInProgress,
    TResult Function()? submitSuccess,
    TResult Function(AuthFailure authFailure)? submitFailure,
  }) {
    return submitSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailAddress email, bool showErrorMessages)? initial,
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
    required TResult Function(ForgotPasswordInitial value) initial,
    required TResult Function(ForgotPasswordSubmitInProgress value)
        submitInProgress,
    required TResult Function(ForgotPasswordSubmitSuccess value) submitSuccess,
    required TResult Function(ForgotPasswordSubmitFailure value) submitFailure,
  }) {
    return submitSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ForgotPasswordInitial value)? initial,
    TResult Function(ForgotPasswordSubmitInProgress value)? submitInProgress,
    TResult Function(ForgotPasswordSubmitSuccess value)? submitSuccess,
    TResult Function(ForgotPasswordSubmitFailure value)? submitFailure,
  }) {
    return submitSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPasswordInitial value)? initial,
    TResult Function(ForgotPasswordSubmitInProgress value)? submitInProgress,
    TResult Function(ForgotPasswordSubmitSuccess value)? submitSuccess,
    TResult Function(ForgotPasswordSubmitFailure value)? submitFailure,
    required TResult orElse(),
  }) {
    if (submitSuccess != null) {
      return submitSuccess(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordSubmitSuccess implements ForgotPasswordState {
  const factory ForgotPasswordSubmitSuccess() = _$ForgotPasswordSubmitSuccess;
}

/// @nodoc
abstract class $ForgotPasswordSubmitFailureCopyWith<$Res> {
  factory $ForgotPasswordSubmitFailureCopyWith(
          ForgotPasswordSubmitFailure value,
          $Res Function(ForgotPasswordSubmitFailure) then) =
      _$ForgotPasswordSubmitFailureCopyWithImpl<$Res>;
  $Res call({AuthFailure authFailure});

  $AuthFailureCopyWith<$Res> get authFailure;
}

/// @nodoc
class _$ForgotPasswordSubmitFailureCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res>
    implements $ForgotPasswordSubmitFailureCopyWith<$Res> {
  _$ForgotPasswordSubmitFailureCopyWithImpl(ForgotPasswordSubmitFailure _value,
      $Res Function(ForgotPasswordSubmitFailure) _then)
      : super(_value, (v) => _then(v as ForgotPasswordSubmitFailure));

  @override
  ForgotPasswordSubmitFailure get _value =>
      super._value as ForgotPasswordSubmitFailure;

  @override
  $Res call({
    Object? authFailure = freezed,
  }) {
    return _then(ForgotPasswordSubmitFailure(
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

class _$ForgotPasswordSubmitFailure implements ForgotPasswordSubmitFailure {
  const _$ForgotPasswordSubmitFailure({required this.authFailure});

  @override
  final AuthFailure authFailure;

  @override
  String toString() {
    return 'ForgotPasswordState.submitFailure(authFailure: $authFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ForgotPasswordSubmitFailure &&
            (identical(other.authFailure, authFailure) ||
                other.authFailure == authFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authFailure);

  @JsonKey(ignore: true)
  @override
  $ForgotPasswordSubmitFailureCopyWith<ForgotPasswordSubmitFailure>
      get copyWith => _$ForgotPasswordSubmitFailureCopyWithImpl<
          ForgotPasswordSubmitFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmailAddress email, bool showErrorMessages)
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
    TResult Function(EmailAddress email, bool showErrorMessages)? initial,
    TResult Function()? submitInProgress,
    TResult Function()? submitSuccess,
    TResult Function(AuthFailure authFailure)? submitFailure,
  }) {
    return submitFailure?.call(authFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailAddress email, bool showErrorMessages)? initial,
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
    required TResult Function(ForgotPasswordInitial value) initial,
    required TResult Function(ForgotPasswordSubmitInProgress value)
        submitInProgress,
    required TResult Function(ForgotPasswordSubmitSuccess value) submitSuccess,
    required TResult Function(ForgotPasswordSubmitFailure value) submitFailure,
  }) {
    return submitFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ForgotPasswordInitial value)? initial,
    TResult Function(ForgotPasswordSubmitInProgress value)? submitInProgress,
    TResult Function(ForgotPasswordSubmitSuccess value)? submitSuccess,
    TResult Function(ForgotPasswordSubmitFailure value)? submitFailure,
  }) {
    return submitFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPasswordInitial value)? initial,
    TResult Function(ForgotPasswordSubmitInProgress value)? submitInProgress,
    TResult Function(ForgotPasswordSubmitSuccess value)? submitSuccess,
    TResult Function(ForgotPasswordSubmitFailure value)? submitFailure,
    required TResult orElse(),
  }) {
    if (submitFailure != null) {
      return submitFailure(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordSubmitFailure implements ForgotPasswordState {
  const factory ForgotPasswordSubmitFailure(
      {required AuthFailure authFailure}) = _$ForgotPasswordSubmitFailure;

  AuthFailure get authFailure;
  @JsonKey(ignore: true)
  $ForgotPasswordSubmitFailureCopyWith<ForgotPasswordSubmitFailure>
      get copyWith => throw _privateConstructorUsedError;
}
