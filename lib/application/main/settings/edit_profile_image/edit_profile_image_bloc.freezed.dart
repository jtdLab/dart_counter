// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_profile_image_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EditProfileImageEventTearOff {
  const _$EditProfileImageEventTearOff();

  DeletePressed deletePressed() {
    return const DeletePressed();
  }

  TakePressed takePressed() {
    return const TakePressed();
  }

  ChoosePressed choosePressed() {
    return const ChoosePressed();
  }
}

/// @nodoc
const $EditProfileImageEvent = _$EditProfileImageEventTearOff();

/// @nodoc
mixin _$EditProfileImageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() deletePressed,
    required TResult Function() takePressed,
    required TResult Function() choosePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? deletePressed,
    TResult Function()? takePressed,
    TResult Function()? choosePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? deletePressed,
    TResult Function()? takePressed,
    TResult Function()? choosePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeletePressed value) deletePressed,
    required TResult Function(TakePressed value) takePressed,
    required TResult Function(ChoosePressed value) choosePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DeletePressed value)? deletePressed,
    TResult Function(TakePressed value)? takePressed,
    TResult Function(ChoosePressed value)? choosePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeletePressed value)? deletePressed,
    TResult Function(TakePressed value)? takePressed,
    TResult Function(ChoosePressed value)? choosePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileImageEventCopyWith<$Res> {
  factory $EditProfileImageEventCopyWith(EditProfileImageEvent value,
          $Res Function(EditProfileImageEvent) then) =
      _$EditProfileImageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditProfileImageEventCopyWithImpl<$Res>
    implements $EditProfileImageEventCopyWith<$Res> {
  _$EditProfileImageEventCopyWithImpl(this._value, this._then);

  final EditProfileImageEvent _value;
  // ignore: unused_field
  final $Res Function(EditProfileImageEvent) _then;
}

/// @nodoc
abstract class $DeletePressedCopyWith<$Res> {
  factory $DeletePressedCopyWith(
          DeletePressed value, $Res Function(DeletePressed) then) =
      _$DeletePressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeletePressedCopyWithImpl<$Res>
    extends _$EditProfileImageEventCopyWithImpl<$Res>
    implements $DeletePressedCopyWith<$Res> {
  _$DeletePressedCopyWithImpl(
      DeletePressed _value, $Res Function(DeletePressed) _then)
      : super(_value, (v) => _then(v as DeletePressed));

  @override
  DeletePressed get _value => super._value as DeletePressed;
}

/// @nodoc

class _$DeletePressed implements DeletePressed {
  const _$DeletePressed();

  @override
  String toString() {
    return 'EditProfileImageEvent.deletePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DeletePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() deletePressed,
    required TResult Function() takePressed,
    required TResult Function() choosePressed,
  }) {
    return deletePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? deletePressed,
    TResult Function()? takePressed,
    TResult Function()? choosePressed,
  }) {
    return deletePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? deletePressed,
    TResult Function()? takePressed,
    TResult Function()? choosePressed,
    required TResult orElse(),
  }) {
    if (deletePressed != null) {
      return deletePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeletePressed value) deletePressed,
    required TResult Function(TakePressed value) takePressed,
    required TResult Function(ChoosePressed value) choosePressed,
  }) {
    return deletePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DeletePressed value)? deletePressed,
    TResult Function(TakePressed value)? takePressed,
    TResult Function(ChoosePressed value)? choosePressed,
  }) {
    return deletePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeletePressed value)? deletePressed,
    TResult Function(TakePressed value)? takePressed,
    TResult Function(ChoosePressed value)? choosePressed,
    required TResult orElse(),
  }) {
    if (deletePressed != null) {
      return deletePressed(this);
    }
    return orElse();
  }
}

abstract class DeletePressed implements EditProfileImageEvent {
  const factory DeletePressed() = _$DeletePressed;
}

/// @nodoc
abstract class $TakePressedCopyWith<$Res> {
  factory $TakePressedCopyWith(
          TakePressed value, $Res Function(TakePressed) then) =
      _$TakePressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$TakePressedCopyWithImpl<$Res>
    extends _$EditProfileImageEventCopyWithImpl<$Res>
    implements $TakePressedCopyWith<$Res> {
  _$TakePressedCopyWithImpl(
      TakePressed _value, $Res Function(TakePressed) _then)
      : super(_value, (v) => _then(v as TakePressed));

  @override
  TakePressed get _value => super._value as TakePressed;
}

/// @nodoc

class _$TakePressed implements TakePressed {
  const _$TakePressed();

  @override
  String toString() {
    return 'EditProfileImageEvent.takePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TakePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() deletePressed,
    required TResult Function() takePressed,
    required TResult Function() choosePressed,
  }) {
    return takePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? deletePressed,
    TResult Function()? takePressed,
    TResult Function()? choosePressed,
  }) {
    return takePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? deletePressed,
    TResult Function()? takePressed,
    TResult Function()? choosePressed,
    required TResult orElse(),
  }) {
    if (takePressed != null) {
      return takePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeletePressed value) deletePressed,
    required TResult Function(TakePressed value) takePressed,
    required TResult Function(ChoosePressed value) choosePressed,
  }) {
    return takePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DeletePressed value)? deletePressed,
    TResult Function(TakePressed value)? takePressed,
    TResult Function(ChoosePressed value)? choosePressed,
  }) {
    return takePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeletePressed value)? deletePressed,
    TResult Function(TakePressed value)? takePressed,
    TResult Function(ChoosePressed value)? choosePressed,
    required TResult orElse(),
  }) {
    if (takePressed != null) {
      return takePressed(this);
    }
    return orElse();
  }
}

abstract class TakePressed implements EditProfileImageEvent {
  const factory TakePressed() = _$TakePressed;
}

/// @nodoc
abstract class $ChoosePressedCopyWith<$Res> {
  factory $ChoosePressedCopyWith(
          ChoosePressed value, $Res Function(ChoosePressed) then) =
      _$ChoosePressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChoosePressedCopyWithImpl<$Res>
    extends _$EditProfileImageEventCopyWithImpl<$Res>
    implements $ChoosePressedCopyWith<$Res> {
  _$ChoosePressedCopyWithImpl(
      ChoosePressed _value, $Res Function(ChoosePressed) _then)
      : super(_value, (v) => _then(v as ChoosePressed));

  @override
  ChoosePressed get _value => super._value as ChoosePressed;
}

/// @nodoc

class _$ChoosePressed implements ChoosePressed {
  const _$ChoosePressed();

  @override
  String toString() {
    return 'EditProfileImageEvent.choosePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ChoosePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() deletePressed,
    required TResult Function() takePressed,
    required TResult Function() choosePressed,
  }) {
    return choosePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? deletePressed,
    TResult Function()? takePressed,
    TResult Function()? choosePressed,
  }) {
    return choosePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? deletePressed,
    TResult Function()? takePressed,
    TResult Function()? choosePressed,
    required TResult orElse(),
  }) {
    if (choosePressed != null) {
      return choosePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeletePressed value) deletePressed,
    required TResult Function(TakePressed value) takePressed,
    required TResult Function(ChoosePressed value) choosePressed,
  }) {
    return choosePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DeletePressed value)? deletePressed,
    TResult Function(TakePressed value)? takePressed,
    TResult Function(ChoosePressed value)? choosePressed,
  }) {
    return choosePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeletePressed value)? deletePressed,
    TResult Function(TakePressed value)? takePressed,
    TResult Function(ChoosePressed value)? choosePressed,
    required TResult orElse(),
  }) {
    if (choosePressed != null) {
      return choosePressed(this);
    }
    return orElse();
  }
}

abstract class ChoosePressed implements EditProfileImageEvent {
  const factory ChoosePressed() = _$ChoosePressed;
}

/// @nodoc
class _$EditProfileImageStateTearOff {
  const _$EditProfileImageStateTearOff();

  Initial initial() {
    return const Initial();
  }
}

/// @nodoc
const $EditProfileImageState = _$EditProfileImageStateTearOff();

/// @nodoc
mixin _$EditProfileImageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileImageStateCopyWith<$Res> {
  factory $EditProfileImageStateCopyWith(EditProfileImageState value,
          $Res Function(EditProfileImageState) then) =
      _$EditProfileImageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditProfileImageStateCopyWithImpl<$Res>
    implements $EditProfileImageStateCopyWith<$Res> {
  _$EditProfileImageStateCopyWithImpl(this._value, this._then);

  final EditProfileImageState _value;
  // ignore: unused_field
  final $Res Function(EditProfileImageState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res>
    extends _$EditProfileImageStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'EditProfileImageState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements EditProfileImageState {
  const factory Initial() = _$Initial;
}
