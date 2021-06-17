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

  StartLoading startLoading() {
    return const StartLoading();
  }

  StopLoading stopLoading() {
    return const StopLoading();
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
    required TResult Function(StartLoading value) startLoading,
    required TResult Function(StopLoading value) stopLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartLoading value)? startLoading,
    TResult Function(StopLoading value)? stopLoading,
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
abstract class $StartLoadingCopyWith<$Res> {
  factory $StartLoadingCopyWith(
          StartLoading value, $Res Function(StartLoading) then) =
      _$StartLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$StartLoadingCopyWithImpl<$Res> extends _$LoadingEventCopyWithImpl<$Res>
    implements $StartLoadingCopyWith<$Res> {
  _$StartLoadingCopyWithImpl(
      StartLoading _value, $Res Function(StartLoading) _then)
      : super(_value, (v) => _then(v as StartLoading));

  @override
  StartLoading get _value => super._value as StartLoading;
}

/// @nodoc

class _$StartLoading implements StartLoading {
  const _$StartLoading();

  @override
  String toString() {
    return 'LoadingEvent.startLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is StartLoading);
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
    required TResult Function(StartLoading value) startLoading,
    required TResult Function(StopLoading value) stopLoading,
  }) {
    return startLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartLoading value)? startLoading,
    TResult Function(StopLoading value)? stopLoading,
    required TResult orElse(),
  }) {
    if (startLoading != null) {
      return startLoading(this);
    }
    return orElse();
  }
}

abstract class StartLoading implements LoadingEvent {
  const factory StartLoading() = _$StartLoading;
}

/// @nodoc
abstract class $StopLoadingCopyWith<$Res> {
  factory $StopLoadingCopyWith(
          StopLoading value, $Res Function(StopLoading) then) =
      _$StopLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$StopLoadingCopyWithImpl<$Res> extends _$LoadingEventCopyWithImpl<$Res>
    implements $StopLoadingCopyWith<$Res> {
  _$StopLoadingCopyWithImpl(
      StopLoading _value, $Res Function(StopLoading) _then)
      : super(_value, (v) => _then(v as StopLoading));

  @override
  StopLoading get _value => super._value as StopLoading;
}

/// @nodoc

class _$StopLoading implements StopLoading {
  const _$StopLoading();

  @override
  String toString() {
    return 'LoadingEvent.stopLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is StopLoading);
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
    required TResult Function(StartLoading value) startLoading,
    required TResult Function(StopLoading value) stopLoading,
  }) {
    return stopLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartLoading value)? startLoading,
    TResult Function(StopLoading value)? stopLoading,
    required TResult orElse(),
  }) {
    if (stopLoading != null) {
      return stopLoading(this);
    }
    return orElse();
  }
}

abstract class StopLoading implements LoadingEvent {
  const factory StopLoading() = _$StopLoading;
}

/// @nodoc
class _$LoadingStateTearOff {
  const _$LoadingStateTearOff();

  Loading loading() {
    return const Loading();
  }

  NotLoading notLoading() {
    return const NotLoading();
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
    required TResult Function(Loading value) loading,
    required TResult Function(NotLoading value) notLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(NotLoading value)? notLoading,
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
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$LoadingStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'LoadingState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
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
    required TResult Function(Loading value) loading,
    required TResult Function(NotLoading value) notLoading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(NotLoading value)? notLoading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements LoadingState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $NotLoadingCopyWith<$Res> {
  factory $NotLoadingCopyWith(
          NotLoading value, $Res Function(NotLoading) then) =
      _$NotLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotLoadingCopyWithImpl<$Res> extends _$LoadingStateCopyWithImpl<$Res>
    implements $NotLoadingCopyWith<$Res> {
  _$NotLoadingCopyWithImpl(NotLoading _value, $Res Function(NotLoading) _then)
      : super(_value, (v) => _then(v as NotLoading));

  @override
  NotLoading get _value => super._value as NotLoading;
}

/// @nodoc

class _$NotLoading implements NotLoading {
  const _$NotLoading();

  @override
  String toString() {
    return 'LoadingState.notLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NotLoading);
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
    required TResult Function(Loading value) loading,
    required TResult Function(NotLoading value) notLoading,
  }) {
    return notLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(NotLoading value)? notLoading,
    required TResult orElse(),
  }) {
    if (notLoading != null) {
      return notLoading(this);
    }
    return orElse();
  }
}

abstract class NotLoading implements LoadingState {
  const factory NotLoading() = _$NotLoading;
}
