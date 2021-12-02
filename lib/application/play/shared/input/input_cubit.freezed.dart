// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'input_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InputStateTearOff {
  const _$InputStateTearOff();

  InputPoints points({required int points}) {
    return InputPoints(
      points: points,
    );
  }

  InputDarts darts({required KtList<Dart> darts}) {
    return InputDarts(
      darts: darts,
    );
  }
}

/// @nodoc
const $InputState = _$InputStateTearOff();

/// @nodoc
mixin _$InputState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int points) points,
    required TResult Function(KtList<Dart> darts) darts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int points)? points,
    TResult Function(KtList<Dart> darts)? darts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int points)? points,
    TResult Function(KtList<Dart> darts)? darts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputPoints value) points,
    required TResult Function(InputDarts value) darts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InputPoints value)? points,
    TResult Function(InputDarts value)? darts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputPoints value)? points,
    TResult Function(InputDarts value)? darts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputStateCopyWith<$Res> {
  factory $InputStateCopyWith(
          InputState value, $Res Function(InputState) then) =
      _$InputStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InputStateCopyWithImpl<$Res> implements $InputStateCopyWith<$Res> {
  _$InputStateCopyWithImpl(this._value, this._then);

  final InputState _value;
  // ignore: unused_field
  final $Res Function(InputState) _then;
}

/// @nodoc
abstract class $InputPointsCopyWith<$Res> {
  factory $InputPointsCopyWith(
          InputPoints value, $Res Function(InputPoints) then) =
      _$InputPointsCopyWithImpl<$Res>;
  $Res call({int points});
}

/// @nodoc
class _$InputPointsCopyWithImpl<$Res> extends _$InputStateCopyWithImpl<$Res>
    implements $InputPointsCopyWith<$Res> {
  _$InputPointsCopyWithImpl(
      InputPoints _value, $Res Function(InputPoints) _then)
      : super(_value, (v) => _then(v as InputPoints));

  @override
  InputPoints get _value => super._value as InputPoints;

  @override
  $Res call({
    Object? points = freezed,
  }) {
    return _then(InputPoints(
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InputPoints implements InputPoints {
  const _$InputPoints({required this.points});

  @override
  final int points;

  @override
  String toString() {
    return 'InputState.points(points: $points)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InputPoints &&
            (identical(other.points, points) || other.points == points));
  }

  @override
  int get hashCode => Object.hash(runtimeType, points);

  @JsonKey(ignore: true)
  @override
  $InputPointsCopyWith<InputPoints> get copyWith =>
      _$InputPointsCopyWithImpl<InputPoints>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int points) points,
    required TResult Function(KtList<Dart> darts) darts,
  }) {
    return points(this.points);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int points)? points,
    TResult Function(KtList<Dart> darts)? darts,
  }) {
    return points?.call(this.points);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int points)? points,
    TResult Function(KtList<Dart> darts)? darts,
    required TResult orElse(),
  }) {
    if (points != null) {
      return points(this.points);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputPoints value) points,
    required TResult Function(InputDarts value) darts,
  }) {
    return points(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InputPoints value)? points,
    TResult Function(InputDarts value)? darts,
  }) {
    return points?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputPoints value)? points,
    TResult Function(InputDarts value)? darts,
    required TResult orElse(),
  }) {
    if (points != null) {
      return points(this);
    }
    return orElse();
  }
}

abstract class InputPoints implements InputState {
  const factory InputPoints({required int points}) = _$InputPoints;

  int get points;
  @JsonKey(ignore: true)
  $InputPointsCopyWith<InputPoints> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputDartsCopyWith<$Res> {
  factory $InputDartsCopyWith(
          InputDarts value, $Res Function(InputDarts) then) =
      _$InputDartsCopyWithImpl<$Res>;
  $Res call({KtList<Dart> darts});
}

/// @nodoc
class _$InputDartsCopyWithImpl<$Res> extends _$InputStateCopyWithImpl<$Res>
    implements $InputDartsCopyWith<$Res> {
  _$InputDartsCopyWithImpl(InputDarts _value, $Res Function(InputDarts) _then)
      : super(_value, (v) => _then(v as InputDarts));

  @override
  InputDarts get _value => super._value as InputDarts;

  @override
  $Res call({
    Object? darts = freezed,
  }) {
    return _then(InputDarts(
      darts: darts == freezed
          ? _value.darts
          : darts // ignore: cast_nullable_to_non_nullable
              as KtList<Dart>,
    ));
  }
}

/// @nodoc

class _$InputDarts implements InputDarts {
  const _$InputDarts({required this.darts});

  @override
  final KtList<Dart> darts;

  @override
  String toString() {
    return 'InputState.darts(darts: $darts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InputDarts &&
            (identical(other.darts, darts) || other.darts == darts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, darts);

  @JsonKey(ignore: true)
  @override
  $InputDartsCopyWith<InputDarts> get copyWith =>
      _$InputDartsCopyWithImpl<InputDarts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int points) points,
    required TResult Function(KtList<Dart> darts) darts,
  }) {
    return darts(this.darts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int points)? points,
    TResult Function(KtList<Dart> darts)? darts,
  }) {
    return darts?.call(this.darts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int points)? points,
    TResult Function(KtList<Dart> darts)? darts,
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
    required TResult Function(InputPoints value) points,
    required TResult Function(InputDarts value) darts,
  }) {
    return darts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InputPoints value)? points,
    TResult Function(InputDarts value)? darts,
  }) {
    return darts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputPoints value)? points,
    TResult Function(InputDarts value)? darts,
    required TResult orElse(),
  }) {
    if (darts != null) {
      return darts(this);
    }
    return orElse();
  }
}

abstract class InputDarts implements InputState {
  const factory InputDarts({required KtList<Dart> darts}) = _$InputDarts;

  KtList<Dart> get darts;
  @JsonKey(ignore: true)
  $InputDartsCopyWith<InputDarts> get copyWith =>
      throw _privateConstructorUsedError;
}
