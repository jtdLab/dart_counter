// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'darts_displayer_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DartsDisplayerEventTearOff {
  const _$DartsDisplayerEventTearOff();

  DartAdded dartAdded({required Dart dart}) {
    return DartAdded(
      dart: dart,
    );
  }

  DartRemoved dartRemoved() {
    return const DartRemoved();
  }

  ResetRequested resetRequested() {
    return const ResetRequested();
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
    required TResult Function(DartAdded value) dartAdded,
    required TResult Function(DartRemoved value) dartRemoved,
    required TResult Function(ResetRequested value) resetRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DartAdded value)? dartAdded,
    TResult Function(DartRemoved value)? dartRemoved,
    TResult Function(ResetRequested value)? resetRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DartAdded value)? dartAdded,
    TResult Function(DartRemoved value)? dartRemoved,
    TResult Function(ResetRequested value)? resetRequested,
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
abstract class $DartAddedCopyWith<$Res> {
  factory $DartAddedCopyWith(DartAdded value, $Res Function(DartAdded) then) =
      _$DartAddedCopyWithImpl<$Res>;
  $Res call({Dart dart});

  $DartCopyWith<$Res> get dart;
}

/// @nodoc
class _$DartAddedCopyWithImpl<$Res>
    extends _$DartsDisplayerEventCopyWithImpl<$Res>
    implements $DartAddedCopyWith<$Res> {
  _$DartAddedCopyWithImpl(DartAdded _value, $Res Function(DartAdded) _then)
      : super(_value, (v) => _then(v as DartAdded));

  @override
  DartAdded get _value => super._value as DartAdded;

  @override
  $Res call({
    Object? dart = freezed,
  }) {
    return _then(DartAdded(
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

class _$DartAdded implements DartAdded {
  const _$DartAdded({required this.dart});

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
            other is DartAdded &&
            const DeepCollectionEquality().equals(other.dart, dart));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(dart));

  @JsonKey(ignore: true)
  @override
  $DartAddedCopyWith<DartAdded> get copyWith =>
      _$DartAddedCopyWithImpl<DartAdded>(this, _$identity);

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
    required TResult Function(DartAdded value) dartAdded,
    required TResult Function(DartRemoved value) dartRemoved,
    required TResult Function(ResetRequested value) resetRequested,
  }) {
    return dartAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DartAdded value)? dartAdded,
    TResult Function(DartRemoved value)? dartRemoved,
    TResult Function(ResetRequested value)? resetRequested,
  }) {
    return dartAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DartAdded value)? dartAdded,
    TResult Function(DartRemoved value)? dartRemoved,
    TResult Function(ResetRequested value)? resetRequested,
    required TResult orElse(),
  }) {
    if (dartAdded != null) {
      return dartAdded(this);
    }
    return orElse();
  }
}

abstract class DartAdded implements DartsDisplayerEvent {
  const factory DartAdded({required Dart dart}) = _$DartAdded;

  Dart get dart;
  @JsonKey(ignore: true)
  $DartAddedCopyWith<DartAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DartRemovedCopyWith<$Res> {
  factory $DartRemovedCopyWith(
          DartRemoved value, $Res Function(DartRemoved) then) =
      _$DartRemovedCopyWithImpl<$Res>;
}

/// @nodoc
class _$DartRemovedCopyWithImpl<$Res>
    extends _$DartsDisplayerEventCopyWithImpl<$Res>
    implements $DartRemovedCopyWith<$Res> {
  _$DartRemovedCopyWithImpl(
      DartRemoved _value, $Res Function(DartRemoved) _then)
      : super(_value, (v) => _then(v as DartRemoved));

  @override
  DartRemoved get _value => super._value as DartRemoved;
}

/// @nodoc

class _$DartRemoved implements DartRemoved {
  const _$DartRemoved();

  @override
  String toString() {
    return 'DartsDisplayerEvent.dartRemoved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DartRemoved);
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
    required TResult Function(DartAdded value) dartAdded,
    required TResult Function(DartRemoved value) dartRemoved,
    required TResult Function(ResetRequested value) resetRequested,
  }) {
    return dartRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DartAdded value)? dartAdded,
    TResult Function(DartRemoved value)? dartRemoved,
    TResult Function(ResetRequested value)? resetRequested,
  }) {
    return dartRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DartAdded value)? dartAdded,
    TResult Function(DartRemoved value)? dartRemoved,
    TResult Function(ResetRequested value)? resetRequested,
    required TResult orElse(),
  }) {
    if (dartRemoved != null) {
      return dartRemoved(this);
    }
    return orElse();
  }
}

abstract class DartRemoved implements DartsDisplayerEvent {
  const factory DartRemoved() = _$DartRemoved;
}

/// @nodoc
abstract class $ResetRequestedCopyWith<$Res> {
  factory $ResetRequestedCopyWith(
          ResetRequested value, $Res Function(ResetRequested) then) =
      _$ResetRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResetRequestedCopyWithImpl<$Res>
    extends _$DartsDisplayerEventCopyWithImpl<$Res>
    implements $ResetRequestedCopyWith<$Res> {
  _$ResetRequestedCopyWithImpl(
      ResetRequested _value, $Res Function(ResetRequested) _then)
      : super(_value, (v) => _then(v as ResetRequested));

  @override
  ResetRequested get _value => super._value as ResetRequested;
}

/// @nodoc

class _$ResetRequested implements ResetRequested {
  const _$ResetRequested();

  @override
  String toString() {
    return 'DartsDisplayerEvent.resetRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ResetRequested);
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
    required TResult Function(DartAdded value) dartAdded,
    required TResult Function(DartRemoved value) dartRemoved,
    required TResult Function(ResetRequested value) resetRequested,
  }) {
    return resetRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DartAdded value)? dartAdded,
    TResult Function(DartRemoved value)? dartRemoved,
    TResult Function(ResetRequested value)? resetRequested,
  }) {
    return resetRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DartAdded value)? dartAdded,
    TResult Function(DartRemoved value)? dartRemoved,
    TResult Function(ResetRequested value)? resetRequested,
    required TResult orElse(),
  }) {
    if (resetRequested != null) {
      return resetRequested(this);
    }
    return orElse();
  }
}

abstract class ResetRequested implements DartsDisplayerEvent {
  const factory ResetRequested() = _$ResetRequested;
}
