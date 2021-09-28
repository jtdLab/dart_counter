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

  NewEmailChanged newEmailChanged({required String newEmailString}) {
    return NewEmailChanged(
      newEmailString: newEmailString,
    );
  }

  ConfirmPressed confirmPressed() {
    return const ConfirmPressed();
  }
}

/// @nodoc
const $ChangeEmailEvent = _$ChangeEmailEventTearOff();

/// @nodoc
mixin _$ChangeEmailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newEmailString) newEmailChanged,
    required TResult Function() confirmPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newEmailString)? newEmailChanged,
    TResult Function()? confirmPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newEmailString)? newEmailChanged,
    TResult Function()? confirmPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewEmailChanged value) newEmailChanged,
    required TResult Function(ConfirmPressed value) confirmPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NewEmailChanged value)? newEmailChanged,
    TResult Function(ConfirmPressed value)? confirmPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewEmailChanged value)? newEmailChanged,
    TResult Function(ConfirmPressed value)? confirmPressed,
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
abstract class $NewEmailChangedCopyWith<$Res> {
  factory $NewEmailChangedCopyWith(
          NewEmailChanged value, $Res Function(NewEmailChanged) then) =
      _$NewEmailChangedCopyWithImpl<$Res>;
  $Res call({String newEmailString});
}

/// @nodoc
class _$NewEmailChangedCopyWithImpl<$Res>
    extends _$ChangeEmailEventCopyWithImpl<$Res>
    implements $NewEmailChangedCopyWith<$Res> {
  _$NewEmailChangedCopyWithImpl(
      NewEmailChanged _value, $Res Function(NewEmailChanged) _then)
      : super(_value, (v) => _then(v as NewEmailChanged));

  @override
  NewEmailChanged get _value => super._value as NewEmailChanged;

  @override
  $Res call({
    Object? newEmailString = freezed,
  }) {
    return _then(NewEmailChanged(
      newEmailString: newEmailString == freezed
          ? _value.newEmailString
          : newEmailString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NewEmailChanged implements NewEmailChanged {
  const _$NewEmailChanged({required this.newEmailString});

  @override
  final String newEmailString;

  @override
  String toString() {
    return 'ChangeEmailEvent.newEmailChanged(newEmailString: $newEmailString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NewEmailChanged &&
            (identical(other.newEmailString, newEmailString) ||
                const DeepCollectionEquality()
                    .equals(other.newEmailString, newEmailString)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newEmailString);

  @JsonKey(ignore: true)
  @override
  $NewEmailChangedCopyWith<NewEmailChanged> get copyWith =>
      _$NewEmailChangedCopyWithImpl<NewEmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newEmailString) newEmailChanged,
    required TResult Function() confirmPressed,
  }) {
    return newEmailChanged(newEmailString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newEmailString)? newEmailChanged,
    TResult Function()? confirmPressed,
  }) {
    return newEmailChanged?.call(newEmailString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newEmailString)? newEmailChanged,
    TResult Function()? confirmPressed,
    required TResult orElse(),
  }) {
    if (newEmailChanged != null) {
      return newEmailChanged(newEmailString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewEmailChanged value) newEmailChanged,
    required TResult Function(ConfirmPressed value) confirmPressed,
  }) {
    return newEmailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NewEmailChanged value)? newEmailChanged,
    TResult Function(ConfirmPressed value)? confirmPressed,
  }) {
    return newEmailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewEmailChanged value)? newEmailChanged,
    TResult Function(ConfirmPressed value)? confirmPressed,
    required TResult orElse(),
  }) {
    if (newEmailChanged != null) {
      return newEmailChanged(this);
    }
    return orElse();
  }
}

abstract class NewEmailChanged implements ChangeEmailEvent {
  const factory NewEmailChanged({required String newEmailString}) =
      _$NewEmailChanged;

  String get newEmailString => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewEmailChangedCopyWith<NewEmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmPressedCopyWith<$Res> {
  factory $ConfirmPressedCopyWith(
          ConfirmPressed value, $Res Function(ConfirmPressed) then) =
      _$ConfirmPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConfirmPressedCopyWithImpl<$Res>
    extends _$ChangeEmailEventCopyWithImpl<$Res>
    implements $ConfirmPressedCopyWith<$Res> {
  _$ConfirmPressedCopyWithImpl(
      ConfirmPressed _value, $Res Function(ConfirmPressed) _then)
      : super(_value, (v) => _then(v as ConfirmPressed));

  @override
  ConfirmPressed get _value => super._value as ConfirmPressed;
}

/// @nodoc

class _$ConfirmPressed implements ConfirmPressed {
  const _$ConfirmPressed();

  @override
  String toString() {
    return 'ChangeEmailEvent.confirmPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ConfirmPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newEmailString) newEmailChanged,
    required TResult Function() confirmPressed,
  }) {
    return confirmPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newEmailString)? newEmailChanged,
    TResult Function()? confirmPressed,
  }) {
    return confirmPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newEmailString)? newEmailChanged,
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
    required TResult Function(NewEmailChanged value) newEmailChanged,
    required TResult Function(ConfirmPressed value) confirmPressed,
  }) {
    return confirmPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NewEmailChanged value)? newEmailChanged,
    TResult Function(ConfirmPressed value)? confirmPressed,
  }) {
    return confirmPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewEmailChanged value)? newEmailChanged,
    TResult Function(ConfirmPressed value)? confirmPressed,
    required TResult orElse(),
  }) {
    if (confirmPressed != null) {
      return confirmPressed(this);
    }
    return orElse();
  }
}

abstract class ConfirmPressed implements ChangeEmailEvent {
  const factory ConfirmPressed() = _$ConfirmPressed;
}

/// @nodoc
class _$ChangeEmailStateTearOff {
  const _$ChangeEmailStateTearOff();

  _ChangeEmailState call(
      {required EmailAddress newEmail,
      required bool showErrorMessages,
      required bool isSubmitting,
      required bool successful,
      UserFailure? userFailure}) {
    return _ChangeEmailState(
      newEmail: newEmail,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      successful: successful,
      userFailure: userFailure,
    );
  }
}

/// @nodoc
const $ChangeEmailState = _$ChangeEmailStateTearOff();

/// @nodoc
mixin _$ChangeEmailState {
  EmailAddress get newEmail => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get successful => throw _privateConstructorUsedError;
  UserFailure? get userFailure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChangeEmailStateCopyWith<ChangeEmailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeEmailStateCopyWith<$Res> {
  factory $ChangeEmailStateCopyWith(
          ChangeEmailState value, $Res Function(ChangeEmailState) then) =
      _$ChangeEmailStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress newEmail,
      bool showErrorMessages,
      bool isSubmitting,
      bool successful,
      UserFailure? userFailure});

  $UserFailureCopyWith<$Res>? get userFailure;
}

/// @nodoc
class _$ChangeEmailStateCopyWithImpl<$Res>
    implements $ChangeEmailStateCopyWith<$Res> {
  _$ChangeEmailStateCopyWithImpl(this._value, this._then);

  final ChangeEmailState _value;
  // ignore: unused_field
  final $Res Function(ChangeEmailState) _then;

  @override
  $Res call({
    Object? newEmail = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? successful = freezed,
    Object? userFailure = freezed,
  }) {
    return _then(_value.copyWith(
      newEmail: newEmail == freezed
          ? _value.newEmail
          : newEmail // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      successful: successful == freezed
          ? _value.successful
          : successful // ignore: cast_nullable_to_non_nullable
              as bool,
      userFailure: userFailure == freezed
          ? _value.userFailure
          : userFailure // ignore: cast_nullable_to_non_nullable
              as UserFailure?,
    ));
  }

  @override
  $UserFailureCopyWith<$Res>? get userFailure {
    if (_value.userFailure == null) {
      return null;
    }

    return $UserFailureCopyWith<$Res>(_value.userFailure!, (value) {
      return _then(_value.copyWith(userFailure: value));
    });
  }
}

/// @nodoc
abstract class _$ChangeEmailStateCopyWith<$Res>
    implements $ChangeEmailStateCopyWith<$Res> {
  factory _$ChangeEmailStateCopyWith(
          _ChangeEmailState value, $Res Function(_ChangeEmailState) then) =
      __$ChangeEmailStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress newEmail,
      bool showErrorMessages,
      bool isSubmitting,
      bool successful,
      UserFailure? userFailure});

  @override
  $UserFailureCopyWith<$Res>? get userFailure;
}

/// @nodoc
class __$ChangeEmailStateCopyWithImpl<$Res>
    extends _$ChangeEmailStateCopyWithImpl<$Res>
    implements _$ChangeEmailStateCopyWith<$Res> {
  __$ChangeEmailStateCopyWithImpl(
      _ChangeEmailState _value, $Res Function(_ChangeEmailState) _then)
      : super(_value, (v) => _then(v as _ChangeEmailState));

  @override
  _ChangeEmailState get _value => super._value as _ChangeEmailState;

  @override
  $Res call({
    Object? newEmail = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? successful = freezed,
    Object? userFailure = freezed,
  }) {
    return _then(_ChangeEmailState(
      newEmail: newEmail == freezed
          ? _value.newEmail
          : newEmail // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      successful: successful == freezed
          ? _value.successful
          : successful // ignore: cast_nullable_to_non_nullable
              as bool,
      userFailure: userFailure == freezed
          ? _value.userFailure
          : userFailure // ignore: cast_nullable_to_non_nullable
              as UserFailure?,
    ));
  }
}

/// @nodoc

class _$_ChangeEmailState implements _ChangeEmailState {
  const _$_ChangeEmailState(
      {required this.newEmail,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.successful,
      this.userFailure});

  @override
  final EmailAddress newEmail;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final bool successful;
  @override
  final UserFailure? userFailure;

  @override
  String toString() {
    return 'ChangeEmailState(newEmail: $newEmail, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, successful: $successful, userFailure: $userFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeEmailState &&
            (identical(other.newEmail, newEmail) ||
                const DeepCollectionEquality()
                    .equals(other.newEmail, newEmail)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.successful, successful) ||
                const DeepCollectionEquality()
                    .equals(other.successful, successful)) &&
            (identical(other.userFailure, userFailure) ||
                const DeepCollectionEquality()
                    .equals(other.userFailure, userFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newEmail) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(successful) ^
      const DeepCollectionEquality().hash(userFailure);

  @JsonKey(ignore: true)
  @override
  _$ChangeEmailStateCopyWith<_ChangeEmailState> get copyWith =>
      __$ChangeEmailStateCopyWithImpl<_ChangeEmailState>(this, _$identity);
}

abstract class _ChangeEmailState implements ChangeEmailState {
  const factory _ChangeEmailState(
      {required EmailAddress newEmail,
      required bool showErrorMessages,
      required bool isSubmitting,
      required bool successful,
      UserFailure? userFailure}) = _$_ChangeEmailState;

  @override
  EmailAddress get newEmail => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool get successful => throw _privateConstructorUsedError;
  @override
  UserFailure? get userFailure => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChangeEmailStateCopyWith<_ChangeEmailState> get copyWith =>
      throw _privateConstructorUsedError;
}
