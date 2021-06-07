// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'loading_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoadingEventTearOff {
  const _$LoadingEventTearOff();

  _StartLoading startLoading() {
    return const _StartLoading();
  }

  _StopLoading stopLoading() {
    return const _StopLoading();
  }
}

/// @nodoc
const $LoadingEvent = _$LoadingEventTearOff();

/// @nodoc
mixin _$LoadingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startLoading,
    required TResult Function() stopLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startLoading,
    TResult Function()? stopLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartLoading value) startLoading,
    required TResult Function(_StopLoading value) stopLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartLoading value)? startLoading,
    TResult Function(_StopLoading value)? stopLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingEventCopyWith<$Res> {
  factory $LoadingEventCopyWith(
          LoadingEvent value, $Res Function(LoadingEvent) then) =
      _$LoadingEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingEventCopyWithImpl<$Res> implements $LoadingEventCopyWith<$Res> {
  _$LoadingEventCopyWithImpl(this._value, this._then);

  final LoadingEvent _value;
  // ignore: unused_field
  final $Res Function(LoadingEvent) _then;
}

/// @nodoc
abstract class _$StartLoadingCopyWith<$Res> {
  factory _$StartLoadingCopyWith(
          _StartLoading value, $Res Function(_StartLoading) then) =
      __$StartLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartLoadingCopyWithImpl<$Res> extends _$LoadingEventCopyWithImpl<$Res>
    implements _$StartLoadingCopyWith<$Res> {
  __$StartLoadingCopyWithImpl(
      _StartLoading _value, $Res Function(_StartLoading) _then)
      : super(_value, (v) => _then(v as _StartLoading));

  @override
  _StartLoading get _value => super._value as _StartLoading;
}

/// @nodoc

class _$_StartLoading implements _StartLoading {
  const _$_StartLoading();

  @override
  String toString() {
    return 'LoadingEvent.startLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _StartLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startLoading,
    required TResult Function() stopLoading,
  }) {
    return startLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startLoading,
    TResult Function()? stopLoading,
    required TResult orElse(),
  }) {
    if (startLoading != null) {
      return startLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartLoading value) startLoading,
    required TResult Function(_StopLoading value) stopLoading,
  }) {
    return startLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartLoading value)? startLoading,
    TResult Function(_StopLoading value)? stopLoading,
    required TResult orElse(),
  }) {
    if (startLoading != null) {
      return startLoading(this);
    }
    return orElse();
  }
}

abstract class _StartLoading implements LoadingEvent {
  const factory _StartLoading() = _$_StartLoading;
}

/// @nodoc
abstract class _$StopLoadingCopyWith<$Res> {
  factory _$StopLoadingCopyWith(
          _StopLoading value, $Res Function(_StopLoading) then) =
      __$StopLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$StopLoadingCopyWithImpl<$Res> extends _$LoadingEventCopyWithImpl<$Res>
    implements _$StopLoadingCopyWith<$Res> {
  __$StopLoadingCopyWithImpl(
      _StopLoading _value, $Res Function(_StopLoading) _then)
      : super(_value, (v) => _then(v as _StopLoading));

  @override
  _StopLoading get _value => super._value as _StopLoading;
}

/// @nodoc

class _$_StopLoading implements _StopLoading {
  const _$_StopLoading();

  @override
  String toString() {
    return 'LoadingEvent.stopLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _StopLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startLoading,
    required TResult Function() stopLoading,
  }) {
    return stopLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startLoading,
    TResult Function()? stopLoading,
    required TResult orElse(),
  }) {
    if (stopLoading != null) {
      return stopLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartLoading value) startLoading,
    required TResult Function(_StopLoading value) stopLoading,
  }) {
    return stopLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartLoading value)? startLoading,
    TResult Function(_StopLoading value)? stopLoading,
    required TResult orElse(),
  }) {
    if (stopLoading != null) {
      return stopLoading(this);
    }
    return orElse();
  }
}

abstract class _StopLoading implements LoadingEvent {
  const factory _StopLoading() = _$_StopLoading;
}

/// @nodoc
class _$LoadingStateTearOff {
  const _$LoadingStateTearOff();

  _Loading loading() {
    return const _Loading();
  }

  _NotLoading notLoading() {
    return const _NotLoading();
  }
}

/// @nodoc
const $LoadingState = _$LoadingStateTearOff();

/// @nodoc
mixin _$LoadingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() notLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? notLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_NotLoading value) notLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_NotLoading value)? notLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingStateCopyWith<$Res> {
  factory $LoadingStateCopyWith(
          LoadingState value, $Res Function(LoadingState) then) =
      _$LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingStateCopyWithImpl<$Res> implements $LoadingStateCopyWith<$Res> {
  _$LoadingStateCopyWithImpl(this._value, this._then);

  final LoadingState _value;
  // ignore: unused_field
  final $Res Function(LoadingState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$LoadingStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'LoadingState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() notLoading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? notLoading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_NotLoading value) notLoading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_NotLoading value)? notLoading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements LoadingState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$NotLoadingCopyWith<$Res> {
  factory _$NotLoadingCopyWith(
          _NotLoading value, $Res Function(_NotLoading) then) =
      __$NotLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$NotLoadingCopyWithImpl<$Res> extends _$LoadingStateCopyWithImpl<$Res>
    implements _$NotLoadingCopyWith<$Res> {
  __$NotLoadingCopyWithImpl(
      _NotLoading _value, $Res Function(_NotLoading) _then)
      : super(_value, (v) => _then(v as _NotLoading));

  @override
  _NotLoading get _value => super._value as _NotLoading;
}

/// @nodoc

class _$_NotLoading implements _NotLoading {
  const _$_NotLoading();

  @override
  String toString() {
    return 'LoadingState.notLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NotLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() notLoading,
  }) {
    return notLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? notLoading,
    required TResult orElse(),
  }) {
    if (notLoading != null) {
      return notLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_NotLoading value) notLoading,
  }) {
    return notLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_NotLoading value)? notLoading,
    required TResult orElse(),
  }) {
    if (notLoading != null) {
      return notLoading(this);
    }
    return orElse();
  }
}

abstract class _NotLoading implements LoadingState {
  const factory _NotLoading() = _$_NotLoading;
}
