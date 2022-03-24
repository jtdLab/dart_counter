// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MyEventTearOff {
  const _$MyEventTearOff();

  _Started started() {
    return const _Started();
  }
}

/// @nodoc
const $MyEvent = _$MyEventTearOff();

/// @nodoc
mixin _$MyEvent {
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
abstract class $MyEventCopyWith<$Res> {
  factory $MyEventCopyWith(MyEvent value, $Res Function(MyEvent) then) =
      _$MyEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MyEventCopyWithImpl<$Res> implements $MyEventCopyWith<$Res> {
  _$MyEventCopyWithImpl(this._value, this._then);

  final MyEvent _value;
  // ignore: unused_field
  final $Res Function(MyEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$MyEventCopyWithImpl<$Res>
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
    return 'MyEvent.started()';
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

abstract class _Started implements MyEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
class _$MyStateTearOff {
  const _$MyStateTearOff();

  Listenable listenable() {
    return const Listenable();
  }

  Buildable buildable() {
    return const Buildable();
  }

  ListenAndBuildable listenAndBuildable() {
    return const ListenAndBuildable();
  }
}

/// @nodoc
const $MyState = _$MyStateTearOff();

/// @nodoc
mixin _$MyState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() listenable,
    required TResult Function() buildable,
    required TResult Function() listenAndBuildable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? listenable,
    TResult Function()? buildable,
    TResult Function()? listenAndBuildable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? listenable,
    TResult Function()? buildable,
    TResult Function()? listenAndBuildable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Listenable value) listenable,
    required TResult Function(Buildable value) buildable,
    required TResult Function(ListenAndBuildable value) listenAndBuildable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Listenable value)? listenable,
    TResult Function(Buildable value)? buildable,
    TResult Function(ListenAndBuildable value)? listenAndBuildable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Listenable value)? listenable,
    TResult Function(Buildable value)? buildable,
    TResult Function(ListenAndBuildable value)? listenAndBuildable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyStateCopyWith<$Res> {
  factory $MyStateCopyWith(MyState value, $Res Function(MyState) then) =
      _$MyStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MyStateCopyWithImpl<$Res> implements $MyStateCopyWith<$Res> {
  _$MyStateCopyWithImpl(this._value, this._then);

  final MyState _value;
  // ignore: unused_field
  final $Res Function(MyState) _then;
}

/// @nodoc
abstract class $ListenableCopyWith<$Res> {
  factory $ListenableCopyWith(
          Listenable value, $Res Function(Listenable) then) =
      _$ListenableCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListenableCopyWithImpl<$Res> extends _$MyStateCopyWithImpl<$Res>
    implements $ListenableCopyWith<$Res> {
  _$ListenableCopyWithImpl(Listenable _value, $Res Function(Listenable) _then)
      : super(_value, (v) => _then(v as Listenable));

  @override
  Listenable get _value => super._value as Listenable;
}

/// @nodoc

class _$Listenable implements Listenable {
  const _$Listenable();

  @override
  String toString() {
    return 'MyState.listenable()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Listenable);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() listenable,
    required TResult Function() buildable,
    required TResult Function() listenAndBuildable,
  }) {
    return listenable();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? listenable,
    TResult Function()? buildable,
    TResult Function()? listenAndBuildable,
  }) {
    return listenable?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? listenable,
    TResult Function()? buildable,
    TResult Function()? listenAndBuildable,
    required TResult orElse(),
  }) {
    if (listenable != null) {
      return listenable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Listenable value) listenable,
    required TResult Function(Buildable value) buildable,
    required TResult Function(ListenAndBuildable value) listenAndBuildable,
  }) {
    return listenable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Listenable value)? listenable,
    TResult Function(Buildable value)? buildable,
    TResult Function(ListenAndBuildable value)? listenAndBuildable,
  }) {
    return listenable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Listenable value)? listenable,
    TResult Function(Buildable value)? buildable,
    TResult Function(ListenAndBuildable value)? listenAndBuildable,
    required TResult orElse(),
  }) {
    if (listenable != null) {
      return listenable(this);
    }
    return orElse();
  }
}

abstract class Listenable implements MyState {
  const factory Listenable() = _$Listenable;
}

/// @nodoc
abstract class $BuildableCopyWith<$Res> {
  factory $BuildableCopyWith(Buildable value, $Res Function(Buildable) then) =
      _$BuildableCopyWithImpl<$Res>;
}

/// @nodoc
class _$BuildableCopyWithImpl<$Res> extends _$MyStateCopyWithImpl<$Res>
    implements $BuildableCopyWith<$Res> {
  _$BuildableCopyWithImpl(Buildable _value, $Res Function(Buildable) _then)
      : super(_value, (v) => _then(v as Buildable));

  @override
  Buildable get _value => super._value as Buildable;
}

/// @nodoc

class _$Buildable implements Buildable {
  const _$Buildable();

  @override
  String toString() {
    return 'MyState.buildable()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Buildable);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() listenable,
    required TResult Function() buildable,
    required TResult Function() listenAndBuildable,
  }) {
    return buildable();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? listenable,
    TResult Function()? buildable,
    TResult Function()? listenAndBuildable,
  }) {
    return buildable?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? listenable,
    TResult Function()? buildable,
    TResult Function()? listenAndBuildable,
    required TResult orElse(),
  }) {
    if (buildable != null) {
      return buildable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Listenable value) listenable,
    required TResult Function(Buildable value) buildable,
    required TResult Function(ListenAndBuildable value) listenAndBuildable,
  }) {
    return buildable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Listenable value)? listenable,
    TResult Function(Buildable value)? buildable,
    TResult Function(ListenAndBuildable value)? listenAndBuildable,
  }) {
    return buildable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Listenable value)? listenable,
    TResult Function(Buildable value)? buildable,
    TResult Function(ListenAndBuildable value)? listenAndBuildable,
    required TResult orElse(),
  }) {
    if (buildable != null) {
      return buildable(this);
    }
    return orElse();
  }
}

abstract class Buildable implements MyState {
  const factory Buildable() = _$Buildable;
}

/// @nodoc
abstract class $ListenAndBuildableCopyWith<$Res> {
  factory $ListenAndBuildableCopyWith(
          ListenAndBuildable value, $Res Function(ListenAndBuildable) then) =
      _$ListenAndBuildableCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListenAndBuildableCopyWithImpl<$Res> extends _$MyStateCopyWithImpl<$Res>
    implements $ListenAndBuildableCopyWith<$Res> {
  _$ListenAndBuildableCopyWithImpl(
      ListenAndBuildable _value, $Res Function(ListenAndBuildable) _then)
      : super(_value, (v) => _then(v as ListenAndBuildable));

  @override
  ListenAndBuildable get _value => super._value as ListenAndBuildable;
}

/// @nodoc

class _$ListenAndBuildable implements ListenAndBuildable {
  const _$ListenAndBuildable();

  @override
  String toString() {
    return 'MyState.listenAndBuildable()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ListenAndBuildable);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() listenable,
    required TResult Function() buildable,
    required TResult Function() listenAndBuildable,
  }) {
    return listenAndBuildable();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? listenable,
    TResult Function()? buildable,
    TResult Function()? listenAndBuildable,
  }) {
    return listenAndBuildable?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? listenable,
    TResult Function()? buildable,
    TResult Function()? listenAndBuildable,
    required TResult orElse(),
  }) {
    if (listenAndBuildable != null) {
      return listenAndBuildable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Listenable value) listenable,
    required TResult Function(Buildable value) buildable,
    required TResult Function(ListenAndBuildable value) listenAndBuildable,
  }) {
    return listenAndBuildable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Listenable value)? listenable,
    TResult Function(Buildable value)? buildable,
    TResult Function(ListenAndBuildable value)? listenAndBuildable,
  }) {
    return listenAndBuildable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Listenable value)? listenable,
    TResult Function(Buildable value)? buildable,
    TResult Function(ListenAndBuildable value)? listenAndBuildable,
    required TResult orElse(),
  }) {
    if (listenAndBuildable != null) {
      return listenAndBuildable(this);
    }
    return orElse();
  }
}

abstract class ListenAndBuildable implements MyState {
  const factory ListenAndBuildable() = _$ListenAndBuildable;
}
