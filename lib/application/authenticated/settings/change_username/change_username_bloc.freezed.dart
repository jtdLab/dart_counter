// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'change_username_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChangeUsernameEventTearOff {
  const _$ChangeUsernameEventTearOff();

  _NewUsernameChanged newUsernameChanged({required String newNewUsername}) {
    return _NewUsernameChanged(
      newNewUsername: newNewUsername,
    );
  }

  _ConfirmPressed confirmPressed() {
    return const _ConfirmPressed();
  }
}

/// @nodoc
const $ChangeUsernameEvent = _$ChangeUsernameEventTearOff();

/// @nodoc
mixin _$ChangeUsernameEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newNewUsername) newUsernameChanged,
    required TResult Function() confirmPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newNewUsername)? newUsernameChanged,
    TResult Function()? confirmPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newNewUsername)? newUsernameChanged,
    TResult Function()? confirmPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewUsernameChanged value) newUsernameChanged,
    required TResult Function(_ConfirmPressed value) confirmPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NewUsernameChanged value)? newUsernameChanged,
    TResult Function(_ConfirmPressed value)? confirmPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewUsernameChanged value)? newUsernameChanged,
    TResult Function(_ConfirmPressed value)? confirmPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeUsernameEventCopyWith<$Res> {
  factory $ChangeUsernameEventCopyWith(
          ChangeUsernameEvent value, $Res Function(ChangeUsernameEvent) then) =
      _$ChangeUsernameEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChangeUsernameEventCopyWithImpl<$Res>
    implements $ChangeUsernameEventCopyWith<$Res> {
  _$ChangeUsernameEventCopyWithImpl(this._value, this._then);

  final ChangeUsernameEvent _value;
  // ignore: unused_field
  final $Res Function(ChangeUsernameEvent) _then;
}

/// @nodoc
abstract class _$NewUsernameChangedCopyWith<$Res> {
  factory _$NewUsernameChangedCopyWith(
          _NewUsernameChanged value, $Res Function(_NewUsernameChanged) then) =
      __$NewUsernameChangedCopyWithImpl<$Res>;
  $Res call({String newNewUsername});
}

/// @nodoc
class __$NewUsernameChangedCopyWithImpl<$Res>
    extends _$ChangeUsernameEventCopyWithImpl<$Res>
    implements _$NewUsernameChangedCopyWith<$Res> {
  __$NewUsernameChangedCopyWithImpl(
      _NewUsernameChanged _value, $Res Function(_NewUsernameChanged) _then)
      : super(_value, (v) => _then(v as _NewUsernameChanged));

  @override
  _NewUsernameChanged get _value => super._value as _NewUsernameChanged;

  @override
  $Res call({
    Object? newNewUsername = freezed,
  }) {
    return _then(_NewUsernameChanged(
      newNewUsername: newNewUsername == freezed
          ? _value.newNewUsername
          : newNewUsername // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NewUsernameChanged implements _NewUsernameChanged {
  const _$_NewUsernameChanged({required this.newNewUsername});

  @override
  final String newNewUsername;

  @override
  String toString() {
    return 'ChangeUsernameEvent.newUsernameChanged(newNewUsername: $newNewUsername)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NewUsernameChanged &&
            const DeepCollectionEquality()
                .equals(other.newNewUsername, newNewUsername));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(newNewUsername));

  @JsonKey(ignore: true)
  @override
  _$NewUsernameChangedCopyWith<_NewUsernameChanged> get copyWith =>
      __$NewUsernameChangedCopyWithImpl<_NewUsernameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newNewUsername) newUsernameChanged,
    required TResult Function() confirmPressed,
  }) {
    return newUsernameChanged(newNewUsername);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newNewUsername)? newUsernameChanged,
    TResult Function()? confirmPressed,
  }) {
    return newUsernameChanged?.call(newNewUsername);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newNewUsername)? newUsernameChanged,
    TResult Function()? confirmPressed,
    required TResult orElse(),
  }) {
    if (newUsernameChanged != null) {
      return newUsernameChanged(newNewUsername);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewUsernameChanged value) newUsernameChanged,
    required TResult Function(_ConfirmPressed value) confirmPressed,
  }) {
    return newUsernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NewUsernameChanged value)? newUsernameChanged,
    TResult Function(_ConfirmPressed value)? confirmPressed,
  }) {
    return newUsernameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewUsernameChanged value)? newUsernameChanged,
    TResult Function(_ConfirmPressed value)? confirmPressed,
    required TResult orElse(),
  }) {
    if (newUsernameChanged != null) {
      return newUsernameChanged(this);
    }
    return orElse();
  }
}

abstract class _NewUsernameChanged implements ChangeUsernameEvent {
  const factory _NewUsernameChanged({required String newNewUsername}) =
      _$_NewUsernameChanged;

  String get newNewUsername;
  @JsonKey(ignore: true)
  _$NewUsernameChangedCopyWith<_NewUsernameChanged> get copyWith =>
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
    extends _$ChangeUsernameEventCopyWithImpl<$Res>
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
    return 'ChangeUsernameEvent.confirmPressed()';
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
    required TResult Function(String newNewUsername) newUsernameChanged,
    required TResult Function() confirmPressed,
  }) {
    return confirmPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newNewUsername)? newUsernameChanged,
    TResult Function()? confirmPressed,
  }) {
    return confirmPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newNewUsername)? newUsernameChanged,
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
    required TResult Function(_NewUsernameChanged value) newUsernameChanged,
    required TResult Function(_ConfirmPressed value) confirmPressed,
  }) {
    return confirmPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NewUsernameChanged value)? newUsernameChanged,
    TResult Function(_ConfirmPressed value)? confirmPressed,
  }) {
    return confirmPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewUsernameChanged value)? newUsernameChanged,
    TResult Function(_ConfirmPressed value)? confirmPressed,
    required TResult orElse(),
  }) {
    if (confirmPressed != null) {
      return confirmPressed(this);
    }
    return orElse();
  }
}

abstract class _ConfirmPressed implements ChangeUsernameEvent {
  const factory _ConfirmPressed() = _$_ConfirmPressed;
}

/// @nodoc
class _$ChangeUsernameStateTearOff {
  const _$ChangeUsernameStateTearOff();

  ChangeUsernameInitial initial(
      {required Username newUsername, required bool showErrorMessages}) {
    return ChangeUsernameInitial(
      newUsername: newUsername,
      showErrorMessages: showErrorMessages,
    );
  }

  ChangeUsernameSubmitInProgress submitInProgress() {
    return const ChangeUsernameSubmitInProgress();
  }

  ChangeUsernameSubmitSuccess submitSuccess() {
    return const ChangeUsernameSubmitSuccess();
  }

  ChangeUsernameSubmitFailure submitFailure(
      {required UserFailure userFailure}) {
    return ChangeUsernameSubmitFailure(
      userFailure: userFailure,
    );
  }
}

/// @nodoc
const $ChangeUsernameState = _$ChangeUsernameStateTearOff();

/// @nodoc
mixin _$ChangeUsernameState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Username newUsername, bool showErrorMessages)
        initial,
    required TResult Function() submitInProgress,
    required TResult Function() submitSuccess,
    required TResult Function(UserFailure userFailure) submitFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Username newUsername, bool showErrorMessages)? initial,
    TResult Function()? submitInProgress,
    TResult Function()? submitSuccess,
    TResult Function(UserFailure userFailure)? submitFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Username newUsername, bool showErrorMessages)? initial,
    TResult Function()? submitInProgress,
    TResult Function()? submitSuccess,
    TResult Function(UserFailure userFailure)? submitFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeUsernameInitial value) initial,
    required TResult Function(ChangeUsernameSubmitInProgress value)
        submitInProgress,
    required TResult Function(ChangeUsernameSubmitSuccess value) submitSuccess,
    required TResult Function(ChangeUsernameSubmitFailure value) submitFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeUsernameInitial value)? initial,
    TResult Function(ChangeUsernameSubmitInProgress value)? submitInProgress,
    TResult Function(ChangeUsernameSubmitSuccess value)? submitSuccess,
    TResult Function(ChangeUsernameSubmitFailure value)? submitFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeUsernameInitial value)? initial,
    TResult Function(ChangeUsernameSubmitInProgress value)? submitInProgress,
    TResult Function(ChangeUsernameSubmitSuccess value)? submitSuccess,
    TResult Function(ChangeUsernameSubmitFailure value)? submitFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeUsernameStateCopyWith<$Res> {
  factory $ChangeUsernameStateCopyWith(
          ChangeUsernameState value, $Res Function(ChangeUsernameState) then) =
      _$ChangeUsernameStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChangeUsernameStateCopyWithImpl<$Res>
    implements $ChangeUsernameStateCopyWith<$Res> {
  _$ChangeUsernameStateCopyWithImpl(this._value, this._then);

  final ChangeUsernameState _value;
  // ignore: unused_field
  final $Res Function(ChangeUsernameState) _then;
}

/// @nodoc
abstract class $ChangeUsernameInitialCopyWith<$Res> {
  factory $ChangeUsernameInitialCopyWith(ChangeUsernameInitial value,
          $Res Function(ChangeUsernameInitial) then) =
      _$ChangeUsernameInitialCopyWithImpl<$Res>;
  $Res call({Username newUsername, bool showErrorMessages});
}

/// @nodoc
class _$ChangeUsernameInitialCopyWithImpl<$Res>
    extends _$ChangeUsernameStateCopyWithImpl<$Res>
    implements $ChangeUsernameInitialCopyWith<$Res> {
  _$ChangeUsernameInitialCopyWithImpl(
      ChangeUsernameInitial _value, $Res Function(ChangeUsernameInitial) _then)
      : super(_value, (v) => _then(v as ChangeUsernameInitial));

  @override
  ChangeUsernameInitial get _value => super._value as ChangeUsernameInitial;

  @override
  $Res call({
    Object? newUsername = freezed,
    Object? showErrorMessages = freezed,
  }) {
    return _then(ChangeUsernameInitial(
      newUsername: newUsername == freezed
          ? _value.newUsername
          : newUsername // ignore: cast_nullable_to_non_nullable
              as Username,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChangeUsernameInitial implements ChangeUsernameInitial {
  const _$ChangeUsernameInitial(
      {required this.newUsername, required this.showErrorMessages});

  @override
  final Username newUsername;
  @override
  final bool showErrorMessages;

  @override
  String toString() {
    return 'ChangeUsernameState.initial(newUsername: $newUsername, showErrorMessages: $showErrorMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangeUsernameInitial &&
            const DeepCollectionEquality()
                .equals(other.newUsername, newUsername) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(newUsername),
      const DeepCollectionEquality().hash(showErrorMessages));

  @JsonKey(ignore: true)
  @override
  $ChangeUsernameInitialCopyWith<ChangeUsernameInitial> get copyWith =>
      _$ChangeUsernameInitialCopyWithImpl<ChangeUsernameInitial>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Username newUsername, bool showErrorMessages)
        initial,
    required TResult Function() submitInProgress,
    required TResult Function() submitSuccess,
    required TResult Function(UserFailure userFailure) submitFailure,
  }) {
    return initial(newUsername, showErrorMessages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Username newUsername, bool showErrorMessages)? initial,
    TResult Function()? submitInProgress,
    TResult Function()? submitSuccess,
    TResult Function(UserFailure userFailure)? submitFailure,
  }) {
    return initial?.call(newUsername, showErrorMessages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Username newUsername, bool showErrorMessages)? initial,
    TResult Function()? submitInProgress,
    TResult Function()? submitSuccess,
    TResult Function(UserFailure userFailure)? submitFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(newUsername, showErrorMessages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeUsernameInitial value) initial,
    required TResult Function(ChangeUsernameSubmitInProgress value)
        submitInProgress,
    required TResult Function(ChangeUsernameSubmitSuccess value) submitSuccess,
    required TResult Function(ChangeUsernameSubmitFailure value) submitFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeUsernameInitial value)? initial,
    TResult Function(ChangeUsernameSubmitInProgress value)? submitInProgress,
    TResult Function(ChangeUsernameSubmitSuccess value)? submitSuccess,
    TResult Function(ChangeUsernameSubmitFailure value)? submitFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeUsernameInitial value)? initial,
    TResult Function(ChangeUsernameSubmitInProgress value)? submitInProgress,
    TResult Function(ChangeUsernameSubmitSuccess value)? submitSuccess,
    TResult Function(ChangeUsernameSubmitFailure value)? submitFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ChangeUsernameInitial implements ChangeUsernameState {
  const factory ChangeUsernameInitial(
      {required Username newUsername,
      required bool showErrorMessages}) = _$ChangeUsernameInitial;

  Username get newUsername;
  bool get showErrorMessages;
  @JsonKey(ignore: true)
  $ChangeUsernameInitialCopyWith<ChangeUsernameInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeUsernameSubmitInProgressCopyWith<$Res> {
  factory $ChangeUsernameSubmitInProgressCopyWith(
          ChangeUsernameSubmitInProgress value,
          $Res Function(ChangeUsernameSubmitInProgress) then) =
      _$ChangeUsernameSubmitInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChangeUsernameSubmitInProgressCopyWithImpl<$Res>
    extends _$ChangeUsernameStateCopyWithImpl<$Res>
    implements $ChangeUsernameSubmitInProgressCopyWith<$Res> {
  _$ChangeUsernameSubmitInProgressCopyWithImpl(
      ChangeUsernameSubmitInProgress _value,
      $Res Function(ChangeUsernameSubmitInProgress) _then)
      : super(_value, (v) => _then(v as ChangeUsernameSubmitInProgress));

  @override
  ChangeUsernameSubmitInProgress get _value =>
      super._value as ChangeUsernameSubmitInProgress;
}

/// @nodoc

class _$ChangeUsernameSubmitInProgress
    implements ChangeUsernameSubmitInProgress {
  const _$ChangeUsernameSubmitInProgress();

  @override
  String toString() {
    return 'ChangeUsernameState.submitInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangeUsernameSubmitInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Username newUsername, bool showErrorMessages)
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
    TResult Function(Username newUsername, bool showErrorMessages)? initial,
    TResult Function()? submitInProgress,
    TResult Function()? submitSuccess,
    TResult Function(UserFailure userFailure)? submitFailure,
  }) {
    return submitInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Username newUsername, bool showErrorMessages)? initial,
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
    required TResult Function(ChangeUsernameInitial value) initial,
    required TResult Function(ChangeUsernameSubmitInProgress value)
        submitInProgress,
    required TResult Function(ChangeUsernameSubmitSuccess value) submitSuccess,
    required TResult Function(ChangeUsernameSubmitFailure value) submitFailure,
  }) {
    return submitInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeUsernameInitial value)? initial,
    TResult Function(ChangeUsernameSubmitInProgress value)? submitInProgress,
    TResult Function(ChangeUsernameSubmitSuccess value)? submitSuccess,
    TResult Function(ChangeUsernameSubmitFailure value)? submitFailure,
  }) {
    return submitInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeUsernameInitial value)? initial,
    TResult Function(ChangeUsernameSubmitInProgress value)? submitInProgress,
    TResult Function(ChangeUsernameSubmitSuccess value)? submitSuccess,
    TResult Function(ChangeUsernameSubmitFailure value)? submitFailure,
    required TResult orElse(),
  }) {
    if (submitInProgress != null) {
      return submitInProgress(this);
    }
    return orElse();
  }
}

abstract class ChangeUsernameSubmitInProgress implements ChangeUsernameState {
  const factory ChangeUsernameSubmitInProgress() =
      _$ChangeUsernameSubmitInProgress;
}

/// @nodoc
abstract class $ChangeUsernameSubmitSuccessCopyWith<$Res> {
  factory $ChangeUsernameSubmitSuccessCopyWith(
          ChangeUsernameSubmitSuccess value,
          $Res Function(ChangeUsernameSubmitSuccess) then) =
      _$ChangeUsernameSubmitSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChangeUsernameSubmitSuccessCopyWithImpl<$Res>
    extends _$ChangeUsernameStateCopyWithImpl<$Res>
    implements $ChangeUsernameSubmitSuccessCopyWith<$Res> {
  _$ChangeUsernameSubmitSuccessCopyWithImpl(ChangeUsernameSubmitSuccess _value,
      $Res Function(ChangeUsernameSubmitSuccess) _then)
      : super(_value, (v) => _then(v as ChangeUsernameSubmitSuccess));

  @override
  ChangeUsernameSubmitSuccess get _value =>
      super._value as ChangeUsernameSubmitSuccess;
}

/// @nodoc

class _$ChangeUsernameSubmitSuccess implements ChangeUsernameSubmitSuccess {
  const _$ChangeUsernameSubmitSuccess();

  @override
  String toString() {
    return 'ChangeUsernameState.submitSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangeUsernameSubmitSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Username newUsername, bool showErrorMessages)
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
    TResult Function(Username newUsername, bool showErrorMessages)? initial,
    TResult Function()? submitInProgress,
    TResult Function()? submitSuccess,
    TResult Function(UserFailure userFailure)? submitFailure,
  }) {
    return submitSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Username newUsername, bool showErrorMessages)? initial,
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
    required TResult Function(ChangeUsernameInitial value) initial,
    required TResult Function(ChangeUsernameSubmitInProgress value)
        submitInProgress,
    required TResult Function(ChangeUsernameSubmitSuccess value) submitSuccess,
    required TResult Function(ChangeUsernameSubmitFailure value) submitFailure,
  }) {
    return submitSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeUsernameInitial value)? initial,
    TResult Function(ChangeUsernameSubmitInProgress value)? submitInProgress,
    TResult Function(ChangeUsernameSubmitSuccess value)? submitSuccess,
    TResult Function(ChangeUsernameSubmitFailure value)? submitFailure,
  }) {
    return submitSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeUsernameInitial value)? initial,
    TResult Function(ChangeUsernameSubmitInProgress value)? submitInProgress,
    TResult Function(ChangeUsernameSubmitSuccess value)? submitSuccess,
    TResult Function(ChangeUsernameSubmitFailure value)? submitFailure,
    required TResult orElse(),
  }) {
    if (submitSuccess != null) {
      return submitSuccess(this);
    }
    return orElse();
  }
}

abstract class ChangeUsernameSubmitSuccess implements ChangeUsernameState {
  const factory ChangeUsernameSubmitSuccess() = _$ChangeUsernameSubmitSuccess;
}

/// @nodoc
abstract class $ChangeUsernameSubmitFailureCopyWith<$Res> {
  factory $ChangeUsernameSubmitFailureCopyWith(
          ChangeUsernameSubmitFailure value,
          $Res Function(ChangeUsernameSubmitFailure) then) =
      _$ChangeUsernameSubmitFailureCopyWithImpl<$Res>;
  $Res call({UserFailure userFailure});

  $UserFailureCopyWith<$Res> get userFailure;
}

/// @nodoc
class _$ChangeUsernameSubmitFailureCopyWithImpl<$Res>
    extends _$ChangeUsernameStateCopyWithImpl<$Res>
    implements $ChangeUsernameSubmitFailureCopyWith<$Res> {
  _$ChangeUsernameSubmitFailureCopyWithImpl(ChangeUsernameSubmitFailure _value,
      $Res Function(ChangeUsernameSubmitFailure) _then)
      : super(_value, (v) => _then(v as ChangeUsernameSubmitFailure));

  @override
  ChangeUsernameSubmitFailure get _value =>
      super._value as ChangeUsernameSubmitFailure;

  @override
  $Res call({
    Object? userFailure = freezed,
  }) {
    return _then(ChangeUsernameSubmitFailure(
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

class _$ChangeUsernameSubmitFailure implements ChangeUsernameSubmitFailure {
  const _$ChangeUsernameSubmitFailure({required this.userFailure});

  @override
  final UserFailure userFailure;

  @override
  String toString() {
    return 'ChangeUsernameState.submitFailure(userFailure: $userFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangeUsernameSubmitFailure &&
            const DeepCollectionEquality()
                .equals(other.userFailure, userFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(userFailure));

  @JsonKey(ignore: true)
  @override
  $ChangeUsernameSubmitFailureCopyWith<ChangeUsernameSubmitFailure>
      get copyWith => _$ChangeUsernameSubmitFailureCopyWithImpl<
          ChangeUsernameSubmitFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Username newUsername, bool showErrorMessages)
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
    TResult Function(Username newUsername, bool showErrorMessages)? initial,
    TResult Function()? submitInProgress,
    TResult Function()? submitSuccess,
    TResult Function(UserFailure userFailure)? submitFailure,
  }) {
    return submitFailure?.call(userFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Username newUsername, bool showErrorMessages)? initial,
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
    required TResult Function(ChangeUsernameInitial value) initial,
    required TResult Function(ChangeUsernameSubmitInProgress value)
        submitInProgress,
    required TResult Function(ChangeUsernameSubmitSuccess value) submitSuccess,
    required TResult Function(ChangeUsernameSubmitFailure value) submitFailure,
  }) {
    return submitFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeUsernameInitial value)? initial,
    TResult Function(ChangeUsernameSubmitInProgress value)? submitInProgress,
    TResult Function(ChangeUsernameSubmitSuccess value)? submitSuccess,
    TResult Function(ChangeUsernameSubmitFailure value)? submitFailure,
  }) {
    return submitFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeUsernameInitial value)? initial,
    TResult Function(ChangeUsernameSubmitInProgress value)? submitInProgress,
    TResult Function(ChangeUsernameSubmitSuccess value)? submitSuccess,
    TResult Function(ChangeUsernameSubmitFailure value)? submitFailure,
    required TResult orElse(),
  }) {
    if (submitFailure != null) {
      return submitFailure(this);
    }
    return orElse();
  }
}

abstract class ChangeUsernameSubmitFailure implements ChangeUsernameState {
  const factory ChangeUsernameSubmitFailure(
      {required UserFailure userFailure}) = _$ChangeUsernameSubmitFailure;

  UserFailure get userFailure;
  @JsonKey(ignore: true)
  $ChangeUsernameSubmitFailureCopyWith<ChangeUsernameSubmitFailure>
      get copyWith => throw _privateConstructorUsedError;
}
