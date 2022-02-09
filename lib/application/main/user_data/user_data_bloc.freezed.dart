// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_data_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserDataEventTearOff {
  const _$UserDataEventTearOff();

  _Started started() {
    return const _Started();
  }
}

/// @nodoc
const $UserDataEvent = _$UserDataEventTearOff();

/// @nodoc
mixin _$UserDataEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataEventCopyWith<$Res> {
  factory $UserDataEventCopyWith(
          UserDataEvent value, $Res Function(UserDataEvent) then) =
      _$UserDataEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserDataEventCopyWithImpl<$Res>
    implements $UserDataEventCopyWith<$Res> {
  _$UserDataEventCopyWithImpl(this._value, this._then);

  final UserDataEvent _value;
  // ignore: unused_field
  final $Res Function(UserDataEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$UserDataEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'UserDataEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements UserDataEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
class _$UserDataStateTearOff {
  const _$UserDataStateTearOff();

  UserDataLoadInProgress loadInProgress() {
    return const UserDataLoadInProgress();
  }

  UserDataLoadSuccess loadSuccess() {
    return const UserDataLoadSuccess();
  }

  UserDataLoadFailure loadFailure() {
    return const UserDataLoadFailure();
  }
}

/// @nodoc
const $UserDataState = _$UserDataStateTearOff();

/// @nodoc
mixin _$UserDataState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function() loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function()? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserDataLoadInProgress value) loadInProgress,
    required TResult Function(UserDataLoadSuccess value) loadSuccess,
    required TResult Function(UserDataLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserDataLoadInProgress value)? loadInProgress,
    TResult Function(UserDataLoadSuccess value)? loadSuccess,
    TResult Function(UserDataLoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserDataLoadInProgress value)? loadInProgress,
    TResult Function(UserDataLoadSuccess value)? loadSuccess,
    TResult Function(UserDataLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataStateCopyWith<$Res> {
  factory $UserDataStateCopyWith(
          UserDataState value, $Res Function(UserDataState) then) =
      _$UserDataStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserDataStateCopyWithImpl<$Res>
    implements $UserDataStateCopyWith<$Res> {
  _$UserDataStateCopyWithImpl(this._value, this._then);

  final UserDataState _value;
  // ignore: unused_field
  final $Res Function(UserDataState) _then;
}

/// @nodoc
abstract class $UserDataLoadInProgressCopyWith<$Res> {
  factory $UserDataLoadInProgressCopyWith(UserDataLoadInProgress value,
          $Res Function(UserDataLoadInProgress) then) =
      _$UserDataLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserDataLoadInProgressCopyWithImpl<$Res>
    extends _$UserDataStateCopyWithImpl<$Res>
    implements $UserDataLoadInProgressCopyWith<$Res> {
  _$UserDataLoadInProgressCopyWithImpl(UserDataLoadInProgress _value,
      $Res Function(UserDataLoadInProgress) _then)
      : super(_value, (v) => _then(v as UserDataLoadInProgress));

  @override
  UserDataLoadInProgress get _value => super._value as UserDataLoadInProgress;
}

/// @nodoc

class _$UserDataLoadInProgress implements UserDataLoadInProgress {
  const _$UserDataLoadInProgress();

  @override
  String toString() {
    return 'UserDataState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserDataLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function()? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function()? loadFailure,
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
    required TResult Function(UserDataLoadInProgress value) loadInProgress,
    required TResult Function(UserDataLoadSuccess value) loadSuccess,
    required TResult Function(UserDataLoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserDataLoadInProgress value)? loadInProgress,
    TResult Function(UserDataLoadSuccess value)? loadSuccess,
    TResult Function(UserDataLoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserDataLoadInProgress value)? loadInProgress,
    TResult Function(UserDataLoadSuccess value)? loadSuccess,
    TResult Function(UserDataLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class UserDataLoadInProgress implements UserDataState {
  const factory UserDataLoadInProgress() = _$UserDataLoadInProgress;
}

/// @nodoc
abstract class $UserDataLoadSuccessCopyWith<$Res> {
  factory $UserDataLoadSuccessCopyWith(
          UserDataLoadSuccess value, $Res Function(UserDataLoadSuccess) then) =
      _$UserDataLoadSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserDataLoadSuccessCopyWithImpl<$Res>
    extends _$UserDataStateCopyWithImpl<$Res>
    implements $UserDataLoadSuccessCopyWith<$Res> {
  _$UserDataLoadSuccessCopyWithImpl(
      UserDataLoadSuccess _value, $Res Function(UserDataLoadSuccess) _then)
      : super(_value, (v) => _then(v as UserDataLoadSuccess));

  @override
  UserDataLoadSuccess get _value => super._value as UserDataLoadSuccess;
}

/// @nodoc

class _$UserDataLoadSuccess implements UserDataLoadSuccess {
  const _$UserDataLoadSuccess();

  @override
  String toString() {
    return 'UserDataState.loadSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserDataLoadSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function()? loadFailure,
  }) {
    return loadSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserDataLoadInProgress value) loadInProgress,
    required TResult Function(UserDataLoadSuccess value) loadSuccess,
    required TResult Function(UserDataLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserDataLoadInProgress value)? loadInProgress,
    TResult Function(UserDataLoadSuccess value)? loadSuccess,
    TResult Function(UserDataLoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserDataLoadInProgress value)? loadInProgress,
    TResult Function(UserDataLoadSuccess value)? loadSuccess,
    TResult Function(UserDataLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class UserDataLoadSuccess implements UserDataState {
  const factory UserDataLoadSuccess() = _$UserDataLoadSuccess;
}

/// @nodoc
abstract class $UserDataLoadFailureCopyWith<$Res> {
  factory $UserDataLoadFailureCopyWith(
          UserDataLoadFailure value, $Res Function(UserDataLoadFailure) then) =
      _$UserDataLoadFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserDataLoadFailureCopyWithImpl<$Res>
    extends _$UserDataStateCopyWithImpl<$Res>
    implements $UserDataLoadFailureCopyWith<$Res> {
  _$UserDataLoadFailureCopyWithImpl(
      UserDataLoadFailure _value, $Res Function(UserDataLoadFailure) _then)
      : super(_value, (v) => _then(v as UserDataLoadFailure));

  @override
  UserDataLoadFailure get _value => super._value as UserDataLoadFailure;
}

/// @nodoc

class _$UserDataLoadFailure implements UserDataLoadFailure {
  const _$UserDataLoadFailure();

  @override
  String toString() {
    return 'UserDataState.loadFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserDataLoadFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function()? loadFailure,
  }) {
    return loadFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserDataLoadInProgress value) loadInProgress,
    required TResult Function(UserDataLoadSuccess value) loadSuccess,
    required TResult Function(UserDataLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserDataLoadInProgress value)? loadInProgress,
    TResult Function(UserDataLoadSuccess value)? loadSuccess,
    TResult Function(UserDataLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserDataLoadInProgress value)? loadInProgress,
    TResult Function(UserDataLoadSuccess value)? loadSuccess,
    TResult Function(UserDataLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class UserDataLoadFailure implements UserDataState {
  const factory UserDataLoadFailure() = _$UserDataLoadFailure;
}
