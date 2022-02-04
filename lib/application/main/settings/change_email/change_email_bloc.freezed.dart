// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'change_email_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChangeEmailEventTearOff {
  const _$ChangeEmailEventTearOff();

  _NewEmailChanged newEmailChanged({required String newNewEmail}) {
    return _NewEmailChanged(
      newNewEmail: newNewEmail,
    );
  }

  _ConfirmPressed confirmPressed() {
    return const _ConfirmPressed();
  }
}

/// @nodoc
const $ChangeEmailEvent = _$ChangeEmailEventTearOff();

/// @nodoc
mixin _$ChangeEmailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newNewEmail) newEmailChanged,
    required TResult Function() confirmPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newNewEmail)? newEmailChanged,
    TResult Function()? confirmPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newNewEmail)? newEmailChanged,
    TResult Function()? confirmPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewEmailChanged value) newEmailChanged,
    required TResult Function(_ConfirmPressed value) confirmPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NewEmailChanged value)? newEmailChanged,
    TResult Function(_ConfirmPressed value)? confirmPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewEmailChanged value)? newEmailChanged,
    TResult Function(_ConfirmPressed value)? confirmPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeEmailEventCopyWith<$Res> {
  factory $ChangeEmailEventCopyWith(
          ChangeEmailEvent value, $Res Function(ChangeEmailEvent) then) =
      _$ChangeEmailEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChangeEmailEventCopyWithImpl<$Res>
    implements $ChangeEmailEventCopyWith<$Res> {
  _$ChangeEmailEventCopyWithImpl(this._value, this._then);

  final ChangeEmailEvent _value;
  // ignore: unused_field
  final $Res Function(ChangeEmailEvent) _then;
}

/// @nodoc
abstract class _$NewEmailChangedCopyWith<$Res> {
  factory _$NewEmailChangedCopyWith(
          _NewEmailChanged value, $Res Function(_NewEmailChanged) then) =
      __$NewEmailChangedCopyWithImpl<$Res>;
  $Res call({String newNewEmail});
}

/// @nodoc
class __$NewEmailChangedCopyWithImpl<$Res>
    extends _$ChangeEmailEventCopyWithImpl<$Res>
    implements _$NewEmailChangedCopyWith<$Res> {
  __$NewEmailChangedCopyWithImpl(
      _NewEmailChanged _value, $Res Function(_NewEmailChanged) _then)
      : super(_value, (v) => _then(v as _NewEmailChanged));

  @override
  _NewEmailChanged get _value => super._value as _NewEmailChanged;

  @override
  $Res call({
    Object? newNewEmail = freezed,
  }) {
    return _then(_NewEmailChanged(
      newNewEmail: newNewEmail == freezed
          ? _value.newNewEmail
          : newNewEmail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NewEmailChanged implements _NewEmailChanged {
  const _$_NewEmailChanged({required this.newNewEmail});

  @override
  final String newNewEmail;

  @override
  String toString() {
    return 'ChangeEmailEvent.newEmailChanged(newNewEmail: $newNewEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NewEmailChanged &&
            const DeepCollectionEquality()
                .equals(other.newNewEmail, newNewEmail));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(newNewEmail));

  @JsonKey(ignore: true)
  @override
  _$NewEmailChangedCopyWith<_NewEmailChanged> get copyWith =>
      __$NewEmailChangedCopyWithImpl<_NewEmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newNewEmail) newEmailChanged,
    required TResult Function() confirmPressed,
  }) {
    return newEmailChanged(newNewEmail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newNewEmail)? newEmailChanged,
    TResult Function()? confirmPressed,
  }) {
    return newEmailChanged?.call(newNewEmail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newNewEmail)? newEmailChanged,
    TResult Function()? confirmPressed,
    required TResult orElse(),
  }) {
    if (newEmailChanged != null) {
      return newEmailChanged(newNewEmail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewEmailChanged value) newEmailChanged,
    required TResult Function(_ConfirmPressed value) confirmPressed,
  }) {
    return newEmailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NewEmailChanged value)? newEmailChanged,
    TResult Function(_ConfirmPressed value)? confirmPressed,
  }) {
    return newEmailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewEmailChanged value)? newEmailChanged,
    TResult Function(_ConfirmPressed value)? confirmPressed,
    required TResult orElse(),
  }) {
    if (newEmailChanged != null) {
      return newEmailChanged(this);
    }
    return orElse();
  }
}

abstract class _NewEmailChanged implements ChangeEmailEvent {
  const factory _NewEmailChanged({required String newNewEmail}) =
      _$_NewEmailChanged;

  String get newNewEmail;
  @JsonKey(ignore: true)
  _$NewEmailChangedCopyWith<_NewEmailChanged> get copyWith =>
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
    extends _$ChangeEmailEventCopyWithImpl<$Res>
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
    return 'ChangeEmailEvent.confirmPressed()';
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
    required TResult Function(String newNewEmail) newEmailChanged,
    required TResult Function() confirmPressed,
  }) {
    return confirmPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newNewEmail)? newEmailChanged,
    TResult Function()? confirmPressed,
  }) {
    return confirmPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newNewEmail)? newEmailChanged,
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
    required TResult Function(_NewEmailChanged value) newEmailChanged,
    required TResult Function(_ConfirmPressed value) confirmPressed,
  }) {
    return confirmPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NewEmailChanged value)? newEmailChanged,
    TResult Function(_ConfirmPressed value)? confirmPressed,
  }) {
    return confirmPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewEmailChanged value)? newEmailChanged,
    TResult Function(_ConfirmPressed value)? confirmPressed,
    required TResult orElse(),
  }) {
    if (confirmPressed != null) {
      return confirmPressed(this);
    }
    return orElse();
  }
}

abstract class _ConfirmPressed implements ChangeEmailEvent {
  const factory _ConfirmPressed() = _$_ConfirmPressed;
}

/// @nodoc
class _$ChangeEmailStateTearOff {
  const _$ChangeEmailStateTearOff();

  ChangeEmailInitial initial(
      {required EmailAddress newEmail, required bool showErrorMessages}) {
    return ChangeEmailInitial(
      newEmail: newEmail,
      showErrorMessages: showErrorMessages,
    );
  }

  ChangeEmailSubmitInProgress submitInProgress() {
    return const ChangeEmailSubmitInProgress();
  }

  ChangeEmailSubmitSuccess submitSuccess() {
    return const ChangeEmailSubmitSuccess();
  }

  ChangeEmailSubmitFailure submitFailure({required UserFailure userFailure}) {
    return ChangeEmailSubmitFailure(
      userFailure: userFailure,
    );
  }
}

/// @nodoc
const $ChangeEmailState = _$ChangeEmailStateTearOff();

/// @nodoc
mixin _$ChangeEmailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmailAddress newEmail, bool showErrorMessages)
        initial,
    required TResult Function() submitInProgress,
    required TResult Function() submitSuccess,
    required TResult Function(UserFailure userFailure) submitFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(EmailAddress newEmail, bool showErrorMessages)? initial,
    TResult Function()? submitInProgress,
    TResult Function()? submitSuccess,
    TResult Function(UserFailure userFailure)? submitFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailAddress newEmail, bool showErrorMessages)? initial,
    TResult Function()? submitInProgress,
    TResult Function()? submitSuccess,
    TResult Function(UserFailure userFailure)? submitFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeEmailInitial value) initial,
    required TResult Function(ChangeEmailSubmitInProgress value)
        submitInProgress,
    required TResult Function(ChangeEmailSubmitSuccess value) submitSuccess,
    required TResult Function(ChangeEmailSubmitFailure value) submitFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeEmailInitial value)? initial,
    TResult Function(ChangeEmailSubmitInProgress value)? submitInProgress,
    TResult Function(ChangeEmailSubmitSuccess value)? submitSuccess,
    TResult Function(ChangeEmailSubmitFailure value)? submitFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeEmailInitial value)? initial,
    TResult Function(ChangeEmailSubmitInProgress value)? submitInProgress,
    TResult Function(ChangeEmailSubmitSuccess value)? submitSuccess,
    TResult Function(ChangeEmailSubmitFailure value)? submitFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeEmailStateCopyWith<$Res> {
  factory $ChangeEmailStateCopyWith(
          ChangeEmailState value, $Res Function(ChangeEmailState) then) =
      _$ChangeEmailStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChangeEmailStateCopyWithImpl<$Res>
    implements $ChangeEmailStateCopyWith<$Res> {
  _$ChangeEmailStateCopyWithImpl(this._value, this._then);

  final ChangeEmailState _value;
  // ignore: unused_field
  final $Res Function(ChangeEmailState) _then;
}

/// @nodoc
abstract class $ChangeEmailInitialCopyWith<$Res> {
  factory $ChangeEmailInitialCopyWith(
          ChangeEmailInitial value, $Res Function(ChangeEmailInitial) then) =
      _$ChangeEmailInitialCopyWithImpl<$Res>;
  $Res call({EmailAddress newEmail, bool showErrorMessages});
}

/// @nodoc
class _$ChangeEmailInitialCopyWithImpl<$Res>
    extends _$ChangeEmailStateCopyWithImpl<$Res>
    implements $ChangeEmailInitialCopyWith<$Res> {
  _$ChangeEmailInitialCopyWithImpl(
      ChangeEmailInitial _value, $Res Function(ChangeEmailInitial) _then)
      : super(_value, (v) => _then(v as ChangeEmailInitial));

  @override
  ChangeEmailInitial get _value => super._value as ChangeEmailInitial;

  @override
  $Res call({
    Object? newEmail = freezed,
    Object? showErrorMessages = freezed,
  }) {
    return _then(ChangeEmailInitial(
      newEmail: newEmail == freezed
          ? _value.newEmail
          : newEmail // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChangeEmailInitial implements ChangeEmailInitial {
  const _$ChangeEmailInitial(
      {required this.newEmail, required this.showErrorMessages});

  @override
  final EmailAddress newEmail;
  @override
  final bool showErrorMessages;

  @override
  String toString() {
    return 'ChangeEmailState.initial(newEmail: $newEmail, showErrorMessages: $showErrorMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangeEmailInitial &&
            const DeepCollectionEquality().equals(other.newEmail, newEmail) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(newEmail),
      const DeepCollectionEquality().hash(showErrorMessages));

  @JsonKey(ignore: true)
  @override
  $ChangeEmailInitialCopyWith<ChangeEmailInitial> get copyWith =>
      _$ChangeEmailInitialCopyWithImpl<ChangeEmailInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmailAddress newEmail, bool showErrorMessages)
        initial,
    required TResult Function() submitInProgress,
    required TResult Function() submitSuccess,
    required TResult Function(UserFailure userFailure) submitFailure,
  }) {
    return initial(newEmail, showErrorMessages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(EmailAddress newEmail, bool showErrorMessages)? initial,
    TResult Function()? submitInProgress,
    TResult Function()? submitSuccess,
    TResult Function(UserFailure userFailure)? submitFailure,
  }) {
    return initial?.call(newEmail, showErrorMessages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailAddress newEmail, bool showErrorMessages)? initial,
    TResult Function()? submitInProgress,
    TResult Function()? submitSuccess,
    TResult Function(UserFailure userFailure)? submitFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(newEmail, showErrorMessages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeEmailInitial value) initial,
    required TResult Function(ChangeEmailSubmitInProgress value)
        submitInProgress,
    required TResult Function(ChangeEmailSubmitSuccess value) submitSuccess,
    required TResult Function(ChangeEmailSubmitFailure value) submitFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeEmailInitial value)? initial,
    TResult Function(ChangeEmailSubmitInProgress value)? submitInProgress,
    TResult Function(ChangeEmailSubmitSuccess value)? submitSuccess,
    TResult Function(ChangeEmailSubmitFailure value)? submitFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeEmailInitial value)? initial,
    TResult Function(ChangeEmailSubmitInProgress value)? submitInProgress,
    TResult Function(ChangeEmailSubmitSuccess value)? submitSuccess,
    TResult Function(ChangeEmailSubmitFailure value)? submitFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ChangeEmailInitial implements ChangeEmailState {
  const factory ChangeEmailInitial(
      {required EmailAddress newEmail,
      required bool showErrorMessages}) = _$ChangeEmailInitial;

  EmailAddress get newEmail;
  bool get showErrorMessages;
  @JsonKey(ignore: true)
  $ChangeEmailInitialCopyWith<ChangeEmailInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeEmailSubmitInProgressCopyWith<$Res> {
  factory $ChangeEmailSubmitInProgressCopyWith(
          ChangeEmailSubmitInProgress value,
          $Res Function(ChangeEmailSubmitInProgress) then) =
      _$ChangeEmailSubmitInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChangeEmailSubmitInProgressCopyWithImpl<$Res>
    extends _$ChangeEmailStateCopyWithImpl<$Res>
    implements $ChangeEmailSubmitInProgressCopyWith<$Res> {
  _$ChangeEmailSubmitInProgressCopyWithImpl(ChangeEmailSubmitInProgress _value,
      $Res Function(ChangeEmailSubmitInProgress) _then)
      : super(_value, (v) => _then(v as ChangeEmailSubmitInProgress));

  @override
  ChangeEmailSubmitInProgress get _value =>
      super._value as ChangeEmailSubmitInProgress;
}

/// @nodoc

class _$ChangeEmailSubmitInProgress implements ChangeEmailSubmitInProgress {
  const _$ChangeEmailSubmitInProgress();

  @override
  String toString() {
    return 'ChangeEmailState.submitInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangeEmailSubmitInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmailAddress newEmail, bool showErrorMessages)
        initial,
    required TResult Function() submitInProgress,
    required TResult Function() submitSuccess,
    required TResult Function(UserFailure userFailure) submitFailure,
  }) {
    return submitInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(EmailAddress newEmail, bool showErrorMessages)? initial,
    TResult Function()? submitInProgress,
    TResult Function()? submitSuccess,
    TResult Function(UserFailure userFailure)? submitFailure,
  }) {
    return submitInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailAddress newEmail, bool showErrorMessages)? initial,
    TResult Function()? submitInProgress,
    TResult Function()? submitSuccess,
    TResult Function(UserFailure userFailure)? submitFailure,
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
    required TResult Function(ChangeEmailInitial value) initial,
    required TResult Function(ChangeEmailSubmitInProgress value)
        submitInProgress,
    required TResult Function(ChangeEmailSubmitSuccess value) submitSuccess,
    required TResult Function(ChangeEmailSubmitFailure value) submitFailure,
  }) {
    return submitInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeEmailInitial value)? initial,
    TResult Function(ChangeEmailSubmitInProgress value)? submitInProgress,
    TResult Function(ChangeEmailSubmitSuccess value)? submitSuccess,
    TResult Function(ChangeEmailSubmitFailure value)? submitFailure,
  }) {
    return submitInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeEmailInitial value)? initial,
    TResult Function(ChangeEmailSubmitInProgress value)? submitInProgress,
    TResult Function(ChangeEmailSubmitSuccess value)? submitSuccess,
    TResult Function(ChangeEmailSubmitFailure value)? submitFailure,
    required TResult orElse(),
  }) {
    if (submitInProgress != null) {
      return submitInProgress(this);
    }
    return orElse();
  }
}

abstract class ChangeEmailSubmitInProgress implements ChangeEmailState {
  const factory ChangeEmailSubmitInProgress() = _$ChangeEmailSubmitInProgress;
}

/// @nodoc
abstract class $ChangeEmailSubmitSuccessCopyWith<$Res> {
  factory $ChangeEmailSubmitSuccessCopyWith(ChangeEmailSubmitSuccess value,
          $Res Function(ChangeEmailSubmitSuccess) then) =
      _$ChangeEmailSubmitSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChangeEmailSubmitSuccessCopyWithImpl<$Res>
    extends _$ChangeEmailStateCopyWithImpl<$Res>
    implements $ChangeEmailSubmitSuccessCopyWith<$Res> {
  _$ChangeEmailSubmitSuccessCopyWithImpl(ChangeEmailSubmitSuccess _value,
      $Res Function(ChangeEmailSubmitSuccess) _then)
      : super(_value, (v) => _then(v as ChangeEmailSubmitSuccess));

  @override
  ChangeEmailSubmitSuccess get _value =>
      super._value as ChangeEmailSubmitSuccess;
}

/// @nodoc

class _$ChangeEmailSubmitSuccess implements ChangeEmailSubmitSuccess {
  const _$ChangeEmailSubmitSuccess();

  @override
  String toString() {
    return 'ChangeEmailState.submitSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ChangeEmailSubmitSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmailAddress newEmail, bool showErrorMessages)
        initial,
    required TResult Function() submitInProgress,
    required TResult Function() submitSuccess,
    required TResult Function(UserFailure userFailure) submitFailure,
  }) {
    return submitSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(EmailAddress newEmail, bool showErrorMessages)? initial,
    TResult Function()? submitInProgress,
    TResult Function()? submitSuccess,
    TResult Function(UserFailure userFailure)? submitFailure,
  }) {
    return submitSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailAddress newEmail, bool showErrorMessages)? initial,
    TResult Function()? submitInProgress,
    TResult Function()? submitSuccess,
    TResult Function(UserFailure userFailure)? submitFailure,
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
    required TResult Function(ChangeEmailInitial value) initial,
    required TResult Function(ChangeEmailSubmitInProgress value)
        submitInProgress,
    required TResult Function(ChangeEmailSubmitSuccess value) submitSuccess,
    required TResult Function(ChangeEmailSubmitFailure value) submitFailure,
  }) {
    return submitSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeEmailInitial value)? initial,
    TResult Function(ChangeEmailSubmitInProgress value)? submitInProgress,
    TResult Function(ChangeEmailSubmitSuccess value)? submitSuccess,
    TResult Function(ChangeEmailSubmitFailure value)? submitFailure,
  }) {
    return submitSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeEmailInitial value)? initial,
    TResult Function(ChangeEmailSubmitInProgress value)? submitInProgress,
    TResult Function(ChangeEmailSubmitSuccess value)? submitSuccess,
    TResult Function(ChangeEmailSubmitFailure value)? submitFailure,
    required TResult orElse(),
  }) {
    if (submitSuccess != null) {
      return submitSuccess(this);
    }
    return orElse();
  }
}

abstract class ChangeEmailSubmitSuccess implements ChangeEmailState {
  const factory ChangeEmailSubmitSuccess() = _$ChangeEmailSubmitSuccess;
}

/// @nodoc
abstract class $ChangeEmailSubmitFailureCopyWith<$Res> {
  factory $ChangeEmailSubmitFailureCopyWith(ChangeEmailSubmitFailure value,
          $Res Function(ChangeEmailSubmitFailure) then) =
      _$ChangeEmailSubmitFailureCopyWithImpl<$Res>;
  $Res call({UserFailure userFailure});

  $UserFailureCopyWith<$Res> get userFailure;
}

/// @nodoc
class _$ChangeEmailSubmitFailureCopyWithImpl<$Res>
    extends _$ChangeEmailStateCopyWithImpl<$Res>
    implements $ChangeEmailSubmitFailureCopyWith<$Res> {
  _$ChangeEmailSubmitFailureCopyWithImpl(ChangeEmailSubmitFailure _value,
      $Res Function(ChangeEmailSubmitFailure) _then)
      : super(_value, (v) => _then(v as ChangeEmailSubmitFailure));

  @override
  ChangeEmailSubmitFailure get _value =>
      super._value as ChangeEmailSubmitFailure;

  @override
  $Res call({
    Object? userFailure = freezed,
  }) {
    return _then(ChangeEmailSubmitFailure(
      userFailure: userFailure == freezed
          ? _value.userFailure
          : userFailure // ignore: cast_nullable_to_non_nullable
              as UserFailure,
    ));
  }

  @override
  $UserFailureCopyWith<$Res> get userFailure {
    return $UserFailureCopyWith<$Res>(_value.userFailure, (value) {
      return _then(_value.copyWith(userFailure: value));
    });
  }
}

/// @nodoc

class _$ChangeEmailSubmitFailure implements ChangeEmailSubmitFailure {
  const _$ChangeEmailSubmitFailure({required this.userFailure});

  @override
  final UserFailure userFailure;

  @override
  String toString() {
    return 'ChangeEmailState.submitFailure(userFailure: $userFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangeEmailSubmitFailure &&
            const DeepCollectionEquality()
                .equals(other.userFailure, userFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(userFailure));

  @JsonKey(ignore: true)
  @override
  $ChangeEmailSubmitFailureCopyWith<ChangeEmailSubmitFailure> get copyWith =>
      _$ChangeEmailSubmitFailureCopyWithImpl<ChangeEmailSubmitFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmailAddress newEmail, bool showErrorMessages)
        initial,
    required TResult Function() submitInProgress,
    required TResult Function() submitSuccess,
    required TResult Function(UserFailure userFailure) submitFailure,
  }) {
    return submitFailure(userFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(EmailAddress newEmail, bool showErrorMessages)? initial,
    TResult Function()? submitInProgress,
    TResult Function()? submitSuccess,
    TResult Function(UserFailure userFailure)? submitFailure,
  }) {
    return submitFailure?.call(userFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailAddress newEmail, bool showErrorMessages)? initial,
    TResult Function()? submitInProgress,
    TResult Function()? submitSuccess,
    TResult Function(UserFailure userFailure)? submitFailure,
    required TResult orElse(),
  }) {
    if (submitFailure != null) {
      return submitFailure(userFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeEmailInitial value) initial,
    required TResult Function(ChangeEmailSubmitInProgress value)
        submitInProgress,
    required TResult Function(ChangeEmailSubmitSuccess value) submitSuccess,
    required TResult Function(ChangeEmailSubmitFailure value) submitFailure,
  }) {
    return submitFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeEmailInitial value)? initial,
    TResult Function(ChangeEmailSubmitInProgress value)? submitInProgress,
    TResult Function(ChangeEmailSubmitSuccess value)? submitSuccess,
    TResult Function(ChangeEmailSubmitFailure value)? submitFailure,
  }) {
    return submitFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeEmailInitial value)? initial,
    TResult Function(ChangeEmailSubmitInProgress value)? submitInProgress,
    TResult Function(ChangeEmailSubmitSuccess value)? submitSuccess,
    TResult Function(ChangeEmailSubmitFailure value)? submitFailure,
    required TResult orElse(),
  }) {
    if (submitFailure != null) {
      return submitFailure(this);
    }
    return orElse();
  }
}

abstract class ChangeEmailSubmitFailure implements ChangeEmailState {
  const factory ChangeEmailSubmitFailure({required UserFailure userFailure}) =
      _$ChangeEmailSubmitFailure;

  UserFailure get userFailure;
  @JsonKey(ignore: true)
  $ChangeEmailSubmitFailureCopyWith<ChangeEmailSubmitFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
