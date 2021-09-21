// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

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

  OldPasswordChanged oldPasswordChanged({required String oldPasswordString}) {
    return OldPasswordChanged(
      oldPasswordString: oldPasswordString,
    );
  }

  NewPasswordChanged newPasswordChanged({required String newPasswordString}) {
    return NewPasswordChanged(
      newPasswordString: newPasswordString,
    );
  }

  NewPasswordAgainChanged newPasswordAgainChanged(
      {required String newPasswordAgainString}) {
    return NewPasswordAgainChanged(
      newPasswordAgainString: newPasswordAgainString,
    );
  }

  ConfirmPressed confirmPressed() {
    return const ConfirmPressed();
  }
}

/// @nodoc
const $ChangePasswordEvent = _$ChangePasswordEventTearOff();

/// @nodoc
mixin _$ChangePasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String oldPasswordString) oldPasswordChanged,
    required TResult Function(String newPasswordString) newPasswordChanged,
    required TResult Function(String newPasswordAgainString)
        newPasswordAgainChanged,
    required TResult Function() confirmPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String oldPasswordString)? oldPasswordChanged,
    TResult Function(String newPasswordString)? newPasswordChanged,
    TResult Function(String newPasswordAgainString)? newPasswordAgainChanged,
    TResult Function()? confirmPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OldPasswordChanged value) oldPasswordChanged,
    required TResult Function(NewPasswordChanged value) newPasswordChanged,
    required TResult Function(NewPasswordAgainChanged value)
        newPasswordAgainChanged,
    required TResult Function(ConfirmPressed value) confirmPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OldPasswordChanged value)? oldPasswordChanged,
    TResult Function(NewPasswordChanged value)? newPasswordChanged,
    TResult Function(NewPasswordAgainChanged value)? newPasswordAgainChanged,
    TResult Function(ConfirmPressed value)? confirmPressed,
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
abstract class $OldPasswordChangedCopyWith<$Res> {
  factory $OldPasswordChangedCopyWith(
          OldPasswordChanged value, $Res Function(OldPasswordChanged) then) =
      _$OldPasswordChangedCopyWithImpl<$Res>;
  $Res call({String oldPasswordString});
}

/// @nodoc
class _$OldPasswordChangedCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res>
    implements $OldPasswordChangedCopyWith<$Res> {
  _$OldPasswordChangedCopyWithImpl(
      OldPasswordChanged _value, $Res Function(OldPasswordChanged) _then)
      : super(_value, (v) => _then(v as OldPasswordChanged));

  @override
  OldPasswordChanged get _value => super._value as OldPasswordChanged;

  @override
  $Res call({
    Object? oldPasswordString = freezed,
  }) {
    return _then(OldPasswordChanged(
      oldPasswordString: oldPasswordString == freezed
          ? _value.oldPasswordString
          : oldPasswordString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OldPasswordChanged implements OldPasswordChanged {
  const _$OldPasswordChanged({required this.oldPasswordString});

  @override
  final String oldPasswordString;

  @override
  String toString() {
    return 'ChangePasswordEvent.oldPasswordChanged(oldPasswordString: $oldPasswordString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OldPasswordChanged &&
            (identical(other.oldPasswordString, oldPasswordString) ||
                const DeepCollectionEquality()
                    .equals(other.oldPasswordString, oldPasswordString)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(oldPasswordString);

  @JsonKey(ignore: true)
  @override
  $OldPasswordChangedCopyWith<OldPasswordChanged> get copyWith =>
      _$OldPasswordChangedCopyWithImpl<OldPasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String oldPasswordString) oldPasswordChanged,
    required TResult Function(String newPasswordString) newPasswordChanged,
    required TResult Function(String newPasswordAgainString)
        newPasswordAgainChanged,
    required TResult Function() confirmPressed,
  }) {
    return oldPasswordChanged(oldPasswordString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String oldPasswordString)? oldPasswordChanged,
    TResult Function(String newPasswordString)? newPasswordChanged,
    TResult Function(String newPasswordAgainString)? newPasswordAgainChanged,
    TResult Function()? confirmPressed,
    required TResult orElse(),
  }) {
    if (oldPasswordChanged != null) {
      return oldPasswordChanged(oldPasswordString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OldPasswordChanged value) oldPasswordChanged,
    required TResult Function(NewPasswordChanged value) newPasswordChanged,
    required TResult Function(NewPasswordAgainChanged value)
        newPasswordAgainChanged,
    required TResult Function(ConfirmPressed value) confirmPressed,
  }) {
    return oldPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OldPasswordChanged value)? oldPasswordChanged,
    TResult Function(NewPasswordChanged value)? newPasswordChanged,
    TResult Function(NewPasswordAgainChanged value)? newPasswordAgainChanged,
    TResult Function(ConfirmPressed value)? confirmPressed,
    required TResult orElse(),
  }) {
    if (oldPasswordChanged != null) {
      return oldPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class OldPasswordChanged implements ChangePasswordEvent {
  const factory OldPasswordChanged({required String oldPasswordString}) =
      _$OldPasswordChanged;

  String get oldPasswordString => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OldPasswordChangedCopyWith<OldPasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewPasswordChangedCopyWith<$Res> {
  factory $NewPasswordChangedCopyWith(
          NewPasswordChanged value, $Res Function(NewPasswordChanged) then) =
      _$NewPasswordChangedCopyWithImpl<$Res>;
  $Res call({String newPasswordString});
}

/// @nodoc
class _$NewPasswordChangedCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res>
    implements $NewPasswordChangedCopyWith<$Res> {
  _$NewPasswordChangedCopyWithImpl(
      NewPasswordChanged _value, $Res Function(NewPasswordChanged) _then)
      : super(_value, (v) => _then(v as NewPasswordChanged));

  @override
  NewPasswordChanged get _value => super._value as NewPasswordChanged;

  @override
  $Res call({
    Object? newPasswordString = freezed,
  }) {
    return _then(NewPasswordChanged(
      newPasswordString: newPasswordString == freezed
          ? _value.newPasswordString
          : newPasswordString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NewPasswordChanged implements NewPasswordChanged {
  const _$NewPasswordChanged({required this.newPasswordString});

  @override
  final String newPasswordString;

  @override
  String toString() {
    return 'ChangePasswordEvent.newPasswordChanged(newPasswordString: $newPasswordString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NewPasswordChanged &&
            (identical(other.newPasswordString, newPasswordString) ||
                const DeepCollectionEquality()
                    .equals(other.newPasswordString, newPasswordString)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newPasswordString);

  @JsonKey(ignore: true)
  @override
  $NewPasswordChangedCopyWith<NewPasswordChanged> get copyWith =>
      _$NewPasswordChangedCopyWithImpl<NewPasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String oldPasswordString) oldPasswordChanged,
    required TResult Function(String newPasswordString) newPasswordChanged,
    required TResult Function(String newPasswordAgainString)
        newPasswordAgainChanged,
    required TResult Function() confirmPressed,
  }) {
    return newPasswordChanged(newPasswordString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String oldPasswordString)? oldPasswordChanged,
    TResult Function(String newPasswordString)? newPasswordChanged,
    TResult Function(String newPasswordAgainString)? newPasswordAgainChanged,
    TResult Function()? confirmPressed,
    required TResult orElse(),
  }) {
    if (newPasswordChanged != null) {
      return newPasswordChanged(newPasswordString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OldPasswordChanged value) oldPasswordChanged,
    required TResult Function(NewPasswordChanged value) newPasswordChanged,
    required TResult Function(NewPasswordAgainChanged value)
        newPasswordAgainChanged,
    required TResult Function(ConfirmPressed value) confirmPressed,
  }) {
    return newPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OldPasswordChanged value)? oldPasswordChanged,
    TResult Function(NewPasswordChanged value)? newPasswordChanged,
    TResult Function(NewPasswordAgainChanged value)? newPasswordAgainChanged,
    TResult Function(ConfirmPressed value)? confirmPressed,
    required TResult orElse(),
  }) {
    if (newPasswordChanged != null) {
      return newPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class NewPasswordChanged implements ChangePasswordEvent {
  const factory NewPasswordChanged({required String newPasswordString}) =
      _$NewPasswordChanged;

  String get newPasswordString => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewPasswordChangedCopyWith<NewPasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewPasswordAgainChangedCopyWith<$Res> {
  factory $NewPasswordAgainChangedCopyWith(NewPasswordAgainChanged value,
          $Res Function(NewPasswordAgainChanged) then) =
      _$NewPasswordAgainChangedCopyWithImpl<$Res>;
  $Res call({String newPasswordAgainString});
}

/// @nodoc
class _$NewPasswordAgainChangedCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res>
    implements $NewPasswordAgainChangedCopyWith<$Res> {
  _$NewPasswordAgainChangedCopyWithImpl(NewPasswordAgainChanged _value,
      $Res Function(NewPasswordAgainChanged) _then)
      : super(_value, (v) => _then(v as NewPasswordAgainChanged));

  @override
  NewPasswordAgainChanged get _value => super._value as NewPasswordAgainChanged;

  @override
  $Res call({
    Object? newPasswordAgainString = freezed,
  }) {
    return _then(NewPasswordAgainChanged(
      newPasswordAgainString: newPasswordAgainString == freezed
          ? _value.newPasswordAgainString
          : newPasswordAgainString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NewPasswordAgainChanged implements NewPasswordAgainChanged {
  const _$NewPasswordAgainChanged({required this.newPasswordAgainString});

  @override
  final String newPasswordAgainString;

  @override
  String toString() {
    return 'ChangePasswordEvent.newPasswordAgainChanged(newPasswordAgainString: $newPasswordAgainString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NewPasswordAgainChanged &&
            (identical(other.newPasswordAgainString, newPasswordAgainString) ||
                const DeepCollectionEquality().equals(
                    other.newPasswordAgainString, newPasswordAgainString)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newPasswordAgainString);

  @JsonKey(ignore: true)
  @override
  $NewPasswordAgainChangedCopyWith<NewPasswordAgainChanged> get copyWith =>
      _$NewPasswordAgainChangedCopyWithImpl<NewPasswordAgainChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String oldPasswordString) oldPasswordChanged,
    required TResult Function(String newPasswordString) newPasswordChanged,
    required TResult Function(String newPasswordAgainString)
        newPasswordAgainChanged,
    required TResult Function() confirmPressed,
  }) {
    return newPasswordAgainChanged(newPasswordAgainString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String oldPasswordString)? oldPasswordChanged,
    TResult Function(String newPasswordString)? newPasswordChanged,
    TResult Function(String newPasswordAgainString)? newPasswordAgainChanged,
    TResult Function()? confirmPressed,
    required TResult orElse(),
  }) {
    if (newPasswordAgainChanged != null) {
      return newPasswordAgainChanged(newPasswordAgainString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OldPasswordChanged value) oldPasswordChanged,
    required TResult Function(NewPasswordChanged value) newPasswordChanged,
    required TResult Function(NewPasswordAgainChanged value)
        newPasswordAgainChanged,
    required TResult Function(ConfirmPressed value) confirmPressed,
  }) {
    return newPasswordAgainChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OldPasswordChanged value)? oldPasswordChanged,
    TResult Function(NewPasswordChanged value)? newPasswordChanged,
    TResult Function(NewPasswordAgainChanged value)? newPasswordAgainChanged,
    TResult Function(ConfirmPressed value)? confirmPressed,
    required TResult orElse(),
  }) {
    if (newPasswordAgainChanged != null) {
      return newPasswordAgainChanged(this);
    }
    return orElse();
  }
}

abstract class NewPasswordAgainChanged implements ChangePasswordEvent {
  const factory NewPasswordAgainChanged(
      {required String newPasswordAgainString}) = _$NewPasswordAgainChanged;

  String get newPasswordAgainString => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewPasswordAgainChangedCopyWith<NewPasswordAgainChanged> get copyWith =>
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
    extends _$ChangePasswordEventCopyWithImpl<$Res>
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
    return 'ChangePasswordEvent.confirmPressed()';
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
    required TResult Function(String oldPasswordString) oldPasswordChanged,
    required TResult Function(String newPasswordString) newPasswordChanged,
    required TResult Function(String newPasswordAgainString)
        newPasswordAgainChanged,
    required TResult Function() confirmPressed,
  }) {
    return confirmPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String oldPasswordString)? oldPasswordChanged,
    TResult Function(String newPasswordString)? newPasswordChanged,
    TResult Function(String newPasswordAgainString)? newPasswordAgainChanged,
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
    required TResult Function(OldPasswordChanged value) oldPasswordChanged,
    required TResult Function(NewPasswordChanged value) newPasswordChanged,
    required TResult Function(NewPasswordAgainChanged value)
        newPasswordAgainChanged,
    required TResult Function(ConfirmPressed value) confirmPressed,
  }) {
    return confirmPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OldPasswordChanged value)? oldPasswordChanged,
    TResult Function(NewPasswordChanged value)? newPasswordChanged,
    TResult Function(NewPasswordAgainChanged value)? newPasswordAgainChanged,
    TResult Function(ConfirmPressed value)? confirmPressed,
    required TResult orElse(),
  }) {
    if (confirmPressed != null) {
      return confirmPressed(this);
    }
    return orElse();
  }
}

abstract class ConfirmPressed implements ChangePasswordEvent {
  const factory ConfirmPressed() = _$ConfirmPressed;
}

/// @nodoc
class _$ChangePasswordStateTearOff {
  const _$ChangePasswordStateTearOff();

  _ChangePasswordState call(
      {required Password oldPassword,
      required Password newPassword,
      required Password newPasswordAgain,
      required bool showErrorMessages,
      required bool isSubmitting,
      required bool successful,
      UserFailure? userFailure}) {
    return _ChangePasswordState(
      oldPassword: oldPassword,
      newPassword: newPassword,
      newPasswordAgain: newPasswordAgain,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      successful: successful,
      userFailure: userFailure,
    );
  }
}

/// @nodoc
const $ChangePasswordState = _$ChangePasswordStateTearOff();

/// @nodoc
mixin _$ChangePasswordState {
  Password get oldPassword => throw _privateConstructorUsedError;
  Password get newPassword => throw _privateConstructorUsedError;
  Password get newPasswordAgain => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get successful => throw _privateConstructorUsedError;
  UserFailure? get userFailure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChangePasswordStateCopyWith<ChangePasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordStateCopyWith<$Res> {
  factory $ChangePasswordStateCopyWith(
          ChangePasswordState value, $Res Function(ChangePasswordState) then) =
      _$ChangePasswordStateCopyWithImpl<$Res>;
  $Res call(
      {Password oldPassword,
      Password newPassword,
      Password newPasswordAgain,
      bool showErrorMessages,
      bool isSubmitting,
      bool successful,
      UserFailure? userFailure});

  $UserFailureCopyWith<$Res>? get userFailure;
}

/// @nodoc
class _$ChangePasswordStateCopyWithImpl<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  _$ChangePasswordStateCopyWithImpl(this._value, this._then);

  final ChangePasswordState _value;
  // ignore: unused_field
  final $Res Function(ChangePasswordState) _then;

  @override
  $Res call({
    Object? oldPassword = freezed,
    Object? newPassword = freezed,
    Object? newPasswordAgain = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? successful = freezed,
    Object? userFailure = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$ChangePasswordStateCopyWith<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  factory _$ChangePasswordStateCopyWith(_ChangePasswordState value,
          $Res Function(_ChangePasswordState) then) =
      __$ChangePasswordStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Password oldPassword,
      Password newPassword,
      Password newPasswordAgain,
      bool showErrorMessages,
      bool isSubmitting,
      bool successful,
      UserFailure? userFailure});

  @override
  $UserFailureCopyWith<$Res>? get userFailure;
}

/// @nodoc
class __$ChangePasswordStateCopyWithImpl<$Res>
    extends _$ChangePasswordStateCopyWithImpl<$Res>
    implements _$ChangePasswordStateCopyWith<$Res> {
  __$ChangePasswordStateCopyWithImpl(
      _ChangePasswordState _value, $Res Function(_ChangePasswordState) _then)
      : super(_value, (v) => _then(v as _ChangePasswordState));

  @override
  _ChangePasswordState get _value => super._value as _ChangePasswordState;

  @override
  $Res call({
    Object? oldPassword = freezed,
    Object? newPassword = freezed,
    Object? newPasswordAgain = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? successful = freezed,
    Object? userFailure = freezed,
  }) {
    return _then(_ChangePasswordState(
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

class _$_ChangePasswordState implements _ChangePasswordState {
  const _$_ChangePasswordState(
      {required this.oldPassword,
      required this.newPassword,
      required this.newPasswordAgain,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.successful,
      this.userFailure});

  @override
  final Password oldPassword;
  @override
  final Password newPassword;
  @override
  final Password newPasswordAgain;
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
    return 'ChangePasswordState(oldPassword: $oldPassword, newPassword: $newPassword, newPasswordAgain: $newPasswordAgain, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, successful: $successful, userFailure: $userFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangePasswordState &&
            (identical(other.oldPassword, oldPassword) ||
                const DeepCollectionEquality()
                    .equals(other.oldPassword, oldPassword)) &&
            (identical(other.newPassword, newPassword) ||
                const DeepCollectionEquality()
                    .equals(other.newPassword, newPassword)) &&
            (identical(other.newPasswordAgain, newPasswordAgain) ||
                const DeepCollectionEquality()
                    .equals(other.newPasswordAgain, newPasswordAgain)) &&
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
      const DeepCollectionEquality().hash(oldPassword) ^
      const DeepCollectionEquality().hash(newPassword) ^
      const DeepCollectionEquality().hash(newPasswordAgain) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(successful) ^
      const DeepCollectionEquality().hash(userFailure);

  @JsonKey(ignore: true)
  @override
  _$ChangePasswordStateCopyWith<_ChangePasswordState> get copyWith =>
      __$ChangePasswordStateCopyWithImpl<_ChangePasswordState>(
          this, _$identity);
}

abstract class _ChangePasswordState implements ChangePasswordState {
  const factory _ChangePasswordState(
      {required Password oldPassword,
      required Password newPassword,
      required Password newPasswordAgain,
      required bool showErrorMessages,
      required bool isSubmitting,
      required bool successful,
      UserFailure? userFailure}) = _$_ChangePasswordState;

  @override
  Password get oldPassword => throw _privateConstructorUsedError;
  @override
  Password get newPassword => throw _privateConstructorUsedError;
  @override
  Password get newPasswordAgain => throw _privateConstructorUsedError;
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
  _$ChangePasswordStateCopyWith<_ChangePasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
