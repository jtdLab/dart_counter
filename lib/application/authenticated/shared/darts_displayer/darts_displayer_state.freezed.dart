// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'darts_displayer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DartsDisplayerStateTearOff {
  const _$DartsDisplayerStateTearOff();

  DartsDisplayerEmpty empty() {
    return const DartsDisplayerEmpty();
  }

  DartsDisplayerNotEmpty notEmpty({required NotEmptyList<Dart> darts}) {
    return DartsDisplayerNotEmpty(
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
    required TResult Function() empty,
    required TResult Function(NotEmptyList<Dart> darts) notEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(NotEmptyList<Dart> darts)? notEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(NotEmptyList<Dart> darts)? notEmpty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DartsDisplayerEmpty value) empty,
    required TResult Function(DartsDisplayerNotEmpty value) notEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DartsDisplayerEmpty value)? empty,
    TResult Function(DartsDisplayerNotEmpty value)? notEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DartsDisplayerEmpty value)? empty,
    TResult Function(DartsDisplayerNotEmpty value)? notEmpty,
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
abstract class $DartsDisplayerEmptyCopyWith<$Res> {
  factory $DartsDisplayerEmptyCopyWith(
          DartsDisplayerEmpty value, $Res Function(DartsDisplayerEmpty) then) =
      _$DartsDisplayerEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class _$DartsDisplayerEmptyCopyWithImpl<$Res>
    extends _$DartsDisplayerStateCopyWithImpl<$Res>
    implements $DartsDisplayerEmptyCopyWith<$Res> {
  _$DartsDisplayerEmptyCopyWithImpl(
      DartsDisplayerEmpty _value, $Res Function(DartsDisplayerEmpty) _then)
      : super(_value, (v) => _then(v as DartsDisplayerEmpty));

  @override
  DartsDisplayerEmpty get _value => super._value as DartsDisplayerEmpty;
}

/// @nodoc

class _$DartsDisplayerEmpty implements DartsDisplayerEmpty {
  const _$DartsDisplayerEmpty();

  @override
  String toString() {
    return 'DartsDisplayerState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DartsDisplayerEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(NotEmptyList<Dart> darts) notEmpty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(NotEmptyList<Dart> darts)? notEmpty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(NotEmptyList<Dart> darts)? notEmpty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DartsDisplayerEmpty value) empty,
    required TResult Function(DartsDisplayerNotEmpty value) notEmpty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DartsDisplayerEmpty value)? empty,
    TResult Function(DartsDisplayerNotEmpty value)? notEmpty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DartsDisplayerEmpty value)? empty,
    TResult Function(DartsDisplayerNotEmpty value)? notEmpty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class DartsDisplayerEmpty implements DartsDisplayerState {
  const factory DartsDisplayerEmpty() = _$DartsDisplayerEmpty;
}

/// @nodoc
abstract class $DartsDisplayerNotEmptyCopyWith<$Res> {
  factory $DartsDisplayerNotEmptyCopyWith(DartsDisplayerNotEmpty value,
          $Res Function(DartsDisplayerNotEmpty) then) =
      _$DartsDisplayerNotEmptyCopyWithImpl<$Res>;
  $Res call({NotEmptyList<Dart> darts});
}

/// @nodoc
class _$DartsDisplayerNotEmptyCopyWithImpl<$Res>
    extends _$DartsDisplayerStateCopyWithImpl<$Res>
    implements $DartsDisplayerNotEmptyCopyWith<$Res> {
  _$DartsDisplayerNotEmptyCopyWithImpl(DartsDisplayerNotEmpty _value,
      $Res Function(DartsDisplayerNotEmpty) _then)
      : super(_value, (v) => _then(v as DartsDisplayerNotEmpty));

  @override
  DartsDisplayerNotEmpty get _value => super._value as DartsDisplayerNotEmpty;

  @override
  $Res call({
    Object? darts = freezed,
  }) {
    return _then(DartsDisplayerNotEmpty(
      darts: darts == freezed
          ? _value.darts
          : darts // ignore: cast_nullable_to_non_nullable
              as NotEmptyList<Dart>,
    ));
  }
}

/// @nodoc

class _$DartsDisplayerNotEmpty implements DartsDisplayerNotEmpty {
  const _$DartsDisplayerNotEmpty({required this.darts});

  @override
  final NotEmptyList<Dart> darts;

  @override
  String toString() {
    return 'DartsDisplayerState.notEmpty(darts: $darts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DartsDisplayerNotEmpty &&
            const DeepCollectionEquality().equals(other.darts, darts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(darts));

  @JsonKey(ignore: true)
  @override
  $DartsDisplayerNotEmptyCopyWith<DartsDisplayerNotEmpty> get copyWith =>
      _$DartsDisplayerNotEmptyCopyWithImpl<DartsDisplayerNotEmpty>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(NotEmptyList<Dart> darts) notEmpty,
  }) {
    return notEmpty(darts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(NotEmptyList<Dart> darts)? notEmpty,
  }) {
    return notEmpty?.call(darts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(NotEmptyList<Dart> darts)? notEmpty,
    required TResult orElse(),
  }) {
    if (notEmpty != null) {
      return notEmpty(darts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DartsDisplayerEmpty value) empty,
    required TResult Function(DartsDisplayerNotEmpty value) notEmpty,
  }) {
    return notEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DartsDisplayerEmpty value)? empty,
    TResult Function(DartsDisplayerNotEmpty value)? notEmpty,
  }) {
    return notEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DartsDisplayerEmpty value)? empty,
    TResult Function(DartsDisplayerNotEmpty value)? notEmpty,
    required TResult orElse(),
  }) {
    if (notEmpty != null) {
      return notEmpty(this);
    }
    return orElse();
  }
}

abstract class DartsDisplayerNotEmpty implements DartsDisplayerState {
  const factory DartsDisplayerNotEmpty({required NotEmptyList<Dart> darts}) =
      _$DartsDisplayerNotEmpty;

  NotEmptyList<Dart> get darts;
  @JsonKey(ignore: true)
  $DartsDisplayerNotEmptyCopyWith<DartsDisplayerNotEmpty> get copyWith =>
      throw _privateConstructorUsedError;
}
