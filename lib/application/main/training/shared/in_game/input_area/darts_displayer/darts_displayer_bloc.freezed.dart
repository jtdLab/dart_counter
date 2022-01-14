// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'darts_displayer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DartsDisplayerEventTearOff {
  const _$DartsDisplayerEventTearOff();

  _DartAdded dartAdded({required Dart dart}) {
    return _DartAdded(
      dart: dart,
    );
  }

  _DartRemoved dartRemoved() {
    return const _DartRemoved();
  }

  _ResetRequested resetRequested() {
    return const _ResetRequested();
  }
}

/// @nodoc
const $DartsDisplayerEvent = _$DartsDisplayerEventTearOff();

/// @nodoc
mixin _$DartsDisplayerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Dart dart) dartAdded,
    required TResult Function() dartRemoved,
    required TResult Function() resetRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Dart dart)? dartAdded,
    TResult Function()? dartRemoved,
    TResult Function()? resetRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Dart dart)? dartAdded,
    TResult Function()? dartRemoved,
    TResult Function()? resetRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DartAdded value) dartAdded,
    required TResult Function(_DartRemoved value) dartRemoved,
    required TResult Function(_ResetRequested value) resetRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DartAdded value)? dartAdded,
    TResult Function(_DartRemoved value)? dartRemoved,
    TResult Function(_ResetRequested value)? resetRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DartAdded value)? dartAdded,
    TResult Function(_DartRemoved value)? dartRemoved,
    TResult Function(_ResetRequested value)? resetRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DartsDisplayerEventCopyWith<$Res> {
  factory $DartsDisplayerEventCopyWith(
          DartsDisplayerEvent value, $Res Function(DartsDisplayerEvent) then) =
      _$DartsDisplayerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DartsDisplayerEventCopyWithImpl<$Res>
    implements $DartsDisplayerEventCopyWith<$Res> {
  _$DartsDisplayerEventCopyWithImpl(this._value, this._then);

  final DartsDisplayerEvent _value;
  // ignore: unused_field
  final $Res Function(DartsDisplayerEvent) _then;
}

/// @nodoc
abstract class _$DartAddedCopyWith<$Res> {
  factory _$DartAddedCopyWith(
          _DartAdded value, $Res Function(_DartAdded) then) =
      __$DartAddedCopyWithImpl<$Res>;
  $Res call({Dart dart});

  $DartCopyWith<$Res> get dart;
}

/// @nodoc
class __$DartAddedCopyWithImpl<$Res>
    extends _$DartsDisplayerEventCopyWithImpl<$Res>
    implements _$DartAddedCopyWith<$Res> {
  __$DartAddedCopyWithImpl(_DartAdded _value, $Res Function(_DartAdded) _then)
      : super(_value, (v) => _then(v as _DartAdded));

  @override
  _DartAdded get _value => super._value as _DartAdded;

  @override
  $Res call({
    Object? dart = freezed,
  }) {
    return _then(_DartAdded(
      dart: dart == freezed
          ? _value.dart
          : dart // ignore: cast_nullable_to_non_nullable
              as Dart,
    ));
  }

  @override
  $DartCopyWith<$Res> get dart {
    return $DartCopyWith<$Res>(_value.dart, (value) {
      return _then(_value.copyWith(dart: value));
    });
  }
}

/// @nodoc

class _$_DartAdded implements _DartAdded {
  const _$_DartAdded({required this.dart});

  @override
  final Dart dart;

  @override
  String toString() {
    return 'DartsDisplayerEvent.dartAdded(dart: $dart)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DartAdded &&
            const DeepCollectionEquality().equals(other.dart, dart));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(dart));

  @JsonKey(ignore: true)
  @override
  _$DartAddedCopyWith<_DartAdded> get copyWith =>
      __$DartAddedCopyWithImpl<_DartAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Dart dart) dartAdded,
    required TResult Function() dartRemoved,
    required TResult Function() resetRequested,
  }) {
    return dartAdded(dart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Dart dart)? dartAdded,
    TResult Function()? dartRemoved,
    TResult Function()? resetRequested,
  }) {
    return dartAdded?.call(dart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Dart dart)? dartAdded,
    TResult Function()? dartRemoved,
    TResult Function()? resetRequested,
    required TResult orElse(),
  }) {
    if (dartAdded != null) {
      return dartAdded(dart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DartAdded value) dartAdded,
    required TResult Function(_DartRemoved value) dartRemoved,
    required TResult Function(_ResetRequested value) resetRequested,
  }) {
    return dartAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DartAdded value)? dartAdded,
    TResult Function(_DartRemoved value)? dartRemoved,
    TResult Function(_ResetRequested value)? resetRequested,
  }) {
    return dartAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DartAdded value)? dartAdded,
    TResult Function(_DartRemoved value)? dartRemoved,
    TResult Function(_ResetRequested value)? resetRequested,
    required TResult orElse(),
  }) {
    if (dartAdded != null) {
      return dartAdded(this);
    }
    return orElse();
  }
}

abstract class _DartAdded implements DartsDisplayerEvent {
  const factory _DartAdded({required Dart dart}) = _$_DartAdded;

  Dart get dart;
  @JsonKey(ignore: true)
  _$DartAddedCopyWith<_DartAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DartRemovedCopyWith<$Res> {
  factory _$DartRemovedCopyWith(
          _DartRemoved value, $Res Function(_DartRemoved) then) =
      __$DartRemovedCopyWithImpl<$Res>;
}

/// @nodoc
class __$DartRemovedCopyWithImpl<$Res>
    extends _$DartsDisplayerEventCopyWithImpl<$Res>
    implements _$DartRemovedCopyWith<$Res> {
  __$DartRemovedCopyWithImpl(
      _DartRemoved _value, $Res Function(_DartRemoved) _then)
      : super(_value, (v) => _then(v as _DartRemoved));

  @override
  _DartRemoved get _value => super._value as _DartRemoved;
}

/// @nodoc

class _$_DartRemoved implements _DartRemoved {
  const _$_DartRemoved();

  @override
  String toString() {
    return 'DartsDisplayerEvent.dartRemoved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _DartRemoved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Dart dart) dartAdded,
    required TResult Function() dartRemoved,
    required TResult Function() resetRequested,
  }) {
    return dartRemoved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Dart dart)? dartAdded,
    TResult Function()? dartRemoved,
    TResult Function()? resetRequested,
  }) {
    return dartRemoved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Dart dart)? dartAdded,
    TResult Function()? dartRemoved,
    TResult Function()? resetRequested,
    required TResult orElse(),
  }) {
    if (dartRemoved != null) {
      return dartRemoved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DartAdded value) dartAdded,
    required TResult Function(_DartRemoved value) dartRemoved,
    required TResult Function(_ResetRequested value) resetRequested,
  }) {
    return dartRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DartAdded value)? dartAdded,
    TResult Function(_DartRemoved value)? dartRemoved,
    TResult Function(_ResetRequested value)? resetRequested,
  }) {
    return dartRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DartAdded value)? dartAdded,
    TResult Function(_DartRemoved value)? dartRemoved,
    TResult Function(_ResetRequested value)? resetRequested,
    required TResult orElse(),
  }) {
    if (dartRemoved != null) {
      return dartRemoved(this);
    }
    return orElse();
  }
}

abstract class _DartRemoved implements DartsDisplayerEvent {
  const factory _DartRemoved() = _$_DartRemoved;
}

/// @nodoc
abstract class _$ResetRequestedCopyWith<$Res> {
  factory _$ResetRequestedCopyWith(
          _ResetRequested value, $Res Function(_ResetRequested) then) =
      __$ResetRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ResetRequestedCopyWithImpl<$Res>
    extends _$DartsDisplayerEventCopyWithImpl<$Res>
    implements _$ResetRequestedCopyWith<$Res> {
  __$ResetRequestedCopyWithImpl(
      _ResetRequested _value, $Res Function(_ResetRequested) _then)
      : super(_value, (v) => _then(v as _ResetRequested));

  @override
  _ResetRequested get _value => super._value as _ResetRequested;
}

/// @nodoc

class _$_ResetRequested implements _ResetRequested {
  const _$_ResetRequested();

  @override
  String toString() {
    return 'DartsDisplayerEvent.resetRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ResetRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Dart dart) dartAdded,
    required TResult Function() dartRemoved,
    required TResult Function() resetRequested,
  }) {
    return resetRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Dart dart)? dartAdded,
    TResult Function()? dartRemoved,
    TResult Function()? resetRequested,
  }) {
    return resetRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Dart dart)? dartAdded,
    TResult Function()? dartRemoved,
    TResult Function()? resetRequested,
    required TResult orElse(),
  }) {
    if (resetRequested != null) {
      return resetRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DartAdded value) dartAdded,
    required TResult Function(_DartRemoved value) dartRemoved,
    required TResult Function(_ResetRequested value) resetRequested,
  }) {
    return resetRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DartAdded value)? dartAdded,
    TResult Function(_DartRemoved value)? dartRemoved,
    TResult Function(_ResetRequested value)? resetRequested,
  }) {
    return resetRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DartAdded value)? dartAdded,
    TResult Function(_DartRemoved value)? dartRemoved,
    TResult Function(_ResetRequested value)? resetRequested,
    required TResult orElse(),
  }) {
    if (resetRequested != null) {
      return resetRequested(this);
    }
    return orElse();
  }
}

abstract class _ResetRequested implements DartsDisplayerEvent {
  const factory _ResetRequested() = _$_ResetRequested;
}

/// @nodoc
class _$DartsDisplayerStateTearOff {
  const _$DartsDisplayerStateTearOff();

  DartsDisplayerInitial initial() {
    return const DartsDisplayerInitial();
  }

  DartsDisplayerDarts darts({required NotEmptyList<Dart> darts}) {
    return DartsDisplayerDarts(
      darts: darts,
    );
  }
}

/// @nodoc
const $DartsDisplayerState = _$DartsDisplayerStateTearOff();

/// @nodoc
mixin _$DartsDisplayerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(NotEmptyList<Dart> darts) darts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(NotEmptyList<Dart> darts)? darts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(NotEmptyList<Dart> darts)? darts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DartsDisplayerInitial value) initial,
    required TResult Function(DartsDisplayerDarts value) darts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DartsDisplayerInitial value)? initial,
    TResult Function(DartsDisplayerDarts value)? darts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DartsDisplayerInitial value)? initial,
    TResult Function(DartsDisplayerDarts value)? darts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DartsDisplayerStateCopyWith<$Res> {
  factory $DartsDisplayerStateCopyWith(
          DartsDisplayerState value, $Res Function(DartsDisplayerState) then) =
      _$DartsDisplayerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DartsDisplayerStateCopyWithImpl<$Res>
    implements $DartsDisplayerStateCopyWith<$Res> {
  _$DartsDisplayerStateCopyWithImpl(this._value, this._then);

  final DartsDisplayerState _value;
  // ignore: unused_field
  final $Res Function(DartsDisplayerState) _then;
}

/// @nodoc
abstract class $DartsDisplayerInitialCopyWith<$Res> {
  factory $DartsDisplayerInitialCopyWith(DartsDisplayerInitial value,
          $Res Function(DartsDisplayerInitial) then) =
      _$DartsDisplayerInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$DartsDisplayerInitialCopyWithImpl<$Res>
    extends _$DartsDisplayerStateCopyWithImpl<$Res>
    implements $DartsDisplayerInitialCopyWith<$Res> {
  _$DartsDisplayerInitialCopyWithImpl(
      DartsDisplayerInitial _value, $Res Function(DartsDisplayerInitial) _then)
      : super(_value, (v) => _then(v as DartsDisplayerInitial));

  @override
  DartsDisplayerInitial get _value => super._value as DartsDisplayerInitial;
}

/// @nodoc

class _$DartsDisplayerInitial implements DartsDisplayerInitial {
  const _$DartsDisplayerInitial();

  @override
  String toString() {
    return 'DartsDisplayerState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DartsDisplayerInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(NotEmptyList<Dart> darts) darts,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(NotEmptyList<Dart> darts)? darts,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(NotEmptyList<Dart> darts)? darts,
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
    required TResult Function(DartsDisplayerInitial value) initial,
    required TResult Function(DartsDisplayerDarts value) darts,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DartsDisplayerInitial value)? initial,
    TResult Function(DartsDisplayerDarts value)? darts,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DartsDisplayerInitial value)? initial,
    TResult Function(DartsDisplayerDarts value)? darts,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class DartsDisplayerInitial implements DartsDisplayerState {
  const factory DartsDisplayerInitial() = _$DartsDisplayerInitial;
}

/// @nodoc
abstract class $DartsDisplayerDartsCopyWith<$Res> {
  factory $DartsDisplayerDartsCopyWith(
          DartsDisplayerDarts value, $Res Function(DartsDisplayerDarts) then) =
      _$DartsDisplayerDartsCopyWithImpl<$Res>;
  $Res call({NotEmptyList<Dart> darts});
}

/// @nodoc
class _$DartsDisplayerDartsCopyWithImpl<$Res>
    extends _$DartsDisplayerStateCopyWithImpl<$Res>
    implements $DartsDisplayerDartsCopyWith<$Res> {
  _$DartsDisplayerDartsCopyWithImpl(
      DartsDisplayerDarts _value, $Res Function(DartsDisplayerDarts) _then)
      : super(_value, (v) => _then(v as DartsDisplayerDarts));

  @override
  DartsDisplayerDarts get _value => super._value as DartsDisplayerDarts;

  @override
  $Res call({
    Object? darts = freezed,
  }) {
    return _then(DartsDisplayerDarts(
      darts: darts == freezed
          ? _value.darts
          : darts // ignore: cast_nullable_to_non_nullable
              as NotEmptyList<Dart>,
    ));
  }
}

/// @nodoc

class _$DartsDisplayerDarts implements DartsDisplayerDarts {
  const _$DartsDisplayerDarts({required this.darts});

  @override
  final NotEmptyList<Dart> darts;

  @override
  String toString() {
    return 'DartsDisplayerState.darts(darts: $darts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DartsDisplayerDarts &&
            const DeepCollectionEquality().equals(other.darts, darts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(darts));

  @JsonKey(ignore: true)
  @override
  $DartsDisplayerDartsCopyWith<DartsDisplayerDarts> get copyWith =>
      _$DartsDisplayerDartsCopyWithImpl<DartsDisplayerDarts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(NotEmptyList<Dart> darts) darts,
  }) {
    return darts(this.darts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(NotEmptyList<Dart> darts)? darts,
  }) {
    return darts?.call(this.darts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(NotEmptyList<Dart> darts)? darts,
    required TResult orElse(),
  }) {
    if (darts != null) {
      return darts(this.darts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DartsDisplayerInitial value) initial,
    required TResult Function(DartsDisplayerDarts value) darts,
  }) {
    return darts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DartsDisplayerInitial value)? initial,
    TResult Function(DartsDisplayerDarts value)? darts,
  }) {
    return darts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DartsDisplayerInitial value)? initial,
    TResult Function(DartsDisplayerDarts value)? darts,
    required TResult orElse(),
  }) {
    if (darts != null) {
      return darts(this);
    }
    return orElse();
  }
}

abstract class DartsDisplayerDarts implements DartsDisplayerState {
  const factory DartsDisplayerDarts({required NotEmptyList<Dart> darts}) =
      _$DartsDisplayerDarts;

  NotEmptyList<Dart> get darts;
  @JsonKey(ignore: true)
  $DartsDisplayerDartsCopyWith<DartsDisplayerDarts> get copyWith =>
      throw _privateConstructorUsedError;
}
