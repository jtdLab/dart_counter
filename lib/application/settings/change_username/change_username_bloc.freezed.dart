// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

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

  NewUsernameChanged newUsernameChanged({required String newUsernameString}) {
    return NewUsernameChanged(
      newUsernameString: newUsernameString,
    );
  }

  ConfirmPressed confirmPressed() {
    return const ConfirmPressed();
  }
}

/// @nodoc
const $ChangeUsernameEvent = _$ChangeUsernameEventTearOff();

/// @nodoc
mixin _$ChangeUsernameEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newUsernameString) newUsernameChanged,
    required TResult Function() confirmPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newUsernameString)? newUsernameChanged,
    TResult Function()? confirmPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewUsernameChanged value) newUsernameChanged,
    required TResult Function(ConfirmPressed value) confirmPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewUsernameChanged value)? newUsernameChanged,
    TResult Function(ConfirmPressed value)? confirmPressed,
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
abstract class $NewUsernameChangedCopyWith<$Res> {
  factory $NewUsernameChangedCopyWith(
          NewUsernameChanged value, $Res Function(NewUsernameChanged) then) =
      _$NewUsernameChangedCopyWithImpl<$Res>;
  $Res call({String newUsernameString});
}

/// @nodoc
class _$NewUsernameChangedCopyWithImpl<$Res>
    extends _$ChangeUsernameEventCopyWithImpl<$Res>
    implements $NewUsernameChangedCopyWith<$Res> {
  _$NewUsernameChangedCopyWithImpl(
      NewUsernameChanged _value, $Res Function(NewUsernameChanged) _then)
      : super(_value, (v) => _then(v as NewUsernameChanged));

  @override
  NewUsernameChanged get _value => super._value as NewUsernameChanged;

  @override
  $Res call({
    Object? newUsernameString = freezed,
  }) {
    return _then(NewUsernameChanged(
      newUsernameString: newUsernameString == freezed
          ? _value.newUsernameString
          : newUsernameString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NewUsernameChanged implements NewUsernameChanged {
  const _$NewUsernameChanged({required this.newUsernameString});

  @override
  final String newUsernameString;

  @override
  String toString() {
    return 'ChangeUsernameEvent.newUsernameChanged(newUsernameString: $newUsernameString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NewUsernameChanged &&
            (identical(other.newUsernameString, newUsernameString) ||
                const DeepCollectionEquality()
                    .equals(other.newUsernameString, newUsernameString)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newUsernameString);

  @JsonKey(ignore: true)
  @override
  $NewUsernameChangedCopyWith<NewUsernameChanged> get copyWith =>
      _$NewUsernameChangedCopyWithImpl<NewUsernameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newUsernameString) newUsernameChanged,
    required TResult Function() confirmPressed,
  }) {
    return newUsernameChanged(newUsernameString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newUsernameString)? newUsernameChanged,
    TResult Function()? confirmPressed,
    required TResult orElse(),
  }) {
    if (newUsernameChanged != null) {
      return newUsernameChanged(newUsernameString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewUsernameChanged value) newUsernameChanged,
    required TResult Function(ConfirmPressed value) confirmPressed,
  }) {
    return newUsernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewUsernameChanged value)? newUsernameChanged,
    TResult Function(ConfirmPressed value)? confirmPressed,
    required TResult orElse(),
  }) {
    if (newUsernameChanged != null) {
      return newUsernameChanged(this);
    }
    return orElse();
  }
}

abstract class NewUsernameChanged implements ChangeUsernameEvent {
  const factory NewUsernameChanged({required String newUsernameString}) =
      _$NewUsernameChanged;

  String get newUsernameString => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewUsernameChangedCopyWith<NewUsernameChanged> get copyWith =>
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
    extends _$ChangeUsernameEventCopyWithImpl<$Res>
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
    return 'ChangeUsernameEvent.confirmPressed()';
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
    required TResult Function(String newUsernameString) newUsernameChanged,
    required TResult Function() confirmPressed,
  }) {
    return confirmPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newUsernameString)? newUsernameChanged,
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
    required TResult Function(NewUsernameChanged value) newUsernameChanged,
    required TResult Function(ConfirmPressed value) confirmPressed,
  }) {
    return confirmPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewUsernameChanged value)? newUsernameChanged,
    TResult Function(ConfirmPressed value)? confirmPressed,
    required TResult orElse(),
  }) {
    if (confirmPressed != null) {
      return confirmPressed(this);
    }
    return orElse();
  }
}

abstract class ConfirmPressed implements ChangeUsernameEvent {
  const factory ConfirmPressed() = _$ConfirmPressed;
}

/// @nodoc
class _$ChangeUsernameStateTearOff {
  const _$ChangeUsernameStateTearOff();

  _ChangeUsernameState call(
      {required Username newUsername,
      required bool showErrorMessages,
      required bool isSubmitting,
      required bool successful,
      UserFailure? userFailure}) {
    return _ChangeUsernameState(
      newUsername: newUsername,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      successful: successful,
      userFailure: userFailure,
    );
  }
}

/// @nodoc
const $ChangeUsernameState = _$ChangeUsernameStateTearOff();

/// @nodoc
mixin _$ChangeUsernameState {
  Username get newUsername => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get successful => throw _privateConstructorUsedError;
  UserFailure? get userFailure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChangeUsernameStateCopyWith<ChangeUsernameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeUsernameStateCopyWith<$Res> {
  factory $ChangeUsernameStateCopyWith(
          ChangeUsernameState value, $Res Function(ChangeUsernameState) then) =
      _$ChangeUsernameStateCopyWithImpl<$Res>;
  $Res call(
      {Username newUsername,
      bool showErrorMessages,
      bool isSubmitting,
      bool successful,
      UserFailure? userFailure});

  $UserFailureCopyWith<$Res>? get userFailure;
}

/// @nodoc
class _$ChangeUsernameStateCopyWithImpl<$Res>
    implements $ChangeUsernameStateCopyWith<$Res> {
  _$ChangeUsernameStateCopyWithImpl(this._value, this._then);

  final ChangeUsernameState _value;
  // ignore: unused_field
  final $Res Function(ChangeUsernameState) _then;

  @override
  $Res call({
    Object? newUsername = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? successful = freezed,
    Object? userFailure = freezed,
  }) {
    return _then(_value.copyWith(
      newUsername: newUsername == freezed
          ? _value.newUsername
          : newUsername // ignore: cast_nullable_to_non_nullable
              as Username,
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
abstract class _$ChangeUsernameStateCopyWith<$Res>
    implements $ChangeUsernameStateCopyWith<$Res> {
  factory _$ChangeUsernameStateCopyWith(_ChangeUsernameState value,
          $Res Function(_ChangeUsernameState) then) =
      __$ChangeUsernameStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Username newUsername,
      bool showErrorMessages,
      bool isSubmitting,
      bool successful,
      UserFailure? userFailure});

  @override
  $UserFailureCopyWith<$Res>? get userFailure;
}

/// @nodoc
class __$ChangeUsernameStateCopyWithImpl<$Res>
    extends _$ChangeUsernameStateCopyWithImpl<$Res>
    implements _$ChangeUsernameStateCopyWith<$Res> {
  __$ChangeUsernameStateCopyWithImpl(
      _ChangeUsernameState _value, $Res Function(_ChangeUsernameState) _then)
      : super(_value, (v) => _then(v as _ChangeUsernameState));

  @override
  _ChangeUsernameState get _value => super._value as _ChangeUsernameState;

  @override
  $Res call({
    Object? newUsername = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? successful = freezed,
    Object? userFailure = freezed,
  }) {
    return _then(_ChangeUsernameState(
      newUsername: newUsername == freezed
          ? _value.newUsername
          : newUsername // ignore: cast_nullable_to_non_nullable
              as Username,
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

class _$_ChangeUsernameState implements _ChangeUsernameState {
  const _$_ChangeUsernameState(
      {required this.newUsername,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.successful,
      this.userFailure});

  @override
  final Username newUsername;
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
    return 'ChangeUsernameState(newUsername: $newUsername, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, successful: $successful, userFailure: $userFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeUsernameState &&
            (identical(other.newUsername, newUsername) ||
                const DeepCollectionEquality()
                    .equals(other.newUsername, newUsername)) &&
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
      const DeepCollectionEquality().hash(newUsername) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(successful) ^
      const DeepCollectionEquality().hash(userFailure);

  @JsonKey(ignore: true)
  @override
  _$ChangeUsernameStateCopyWith<_ChangeUsernameState> get copyWith =>
      __$ChangeUsernameStateCopyWithImpl<_ChangeUsernameState>(
          this, _$identity);
}

abstract class _ChangeUsernameState implements ChangeUsernameState {
  const factory _ChangeUsernameState(
      {required Username newUsername,
      required bool showErrorMessages,
      required bool isSubmitting,
      required bool successful,
      UserFailure? userFailure}) = _$_ChangeUsernameState;

  @override
  Username get newUsername => throw _privateConstructorUsedError;
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
  _$ChangeUsernameStateCopyWith<_ChangeUsernameState> get copyWith =>
      throw _privateConstructorUsedError;
}
