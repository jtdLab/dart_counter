// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'player_displayer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlayerDisplayerEventTearOff {
  const _$PlayerDisplayerEventTearOff();

  PreviousPressed previousPlayerPressed() {
    return const PreviousPressed();
  }

  NextPressed nextPlayerPressed() {
    return const NextPressed();
  }

  CurrentIndexUpdated currentIndexUpdated({required int newIndex}) {
    return CurrentIndexUpdated(
      newIndex: newIndex,
    );
  }
}

/// @nodoc
const $PlayerDisplayerEvent = _$PlayerDisplayerEventTearOff();

/// @nodoc
mixin _$PlayerDisplayerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() previousPlayerPressed,
    required TResult Function() nextPlayerPressed,
    required TResult Function(int newIndex) currentIndexUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? previousPlayerPressed,
    TResult Function()? nextPlayerPressed,
    TResult Function(int newIndex)? currentIndexUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreviousPressed value) previousPlayerPressed,
    required TResult Function(NextPressed value) nextPlayerPressed,
    required TResult Function(CurrentIndexUpdated value) currentIndexUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreviousPressed value)? previousPlayerPressed,
    TResult Function(NextPressed value)? nextPlayerPressed,
    TResult Function(CurrentIndexUpdated value)? currentIndexUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerDisplayerEventCopyWith<$Res> {
  factory $PlayerDisplayerEventCopyWith(PlayerDisplayerEvent value,
          $Res Function(PlayerDisplayerEvent) then) =
      _$PlayerDisplayerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlayerDisplayerEventCopyWithImpl<$Res>
    implements $PlayerDisplayerEventCopyWith<$Res> {
  _$PlayerDisplayerEventCopyWithImpl(this._value, this._then);

  final PlayerDisplayerEvent _value;
  // ignore: unused_field
  final $Res Function(PlayerDisplayerEvent) _then;
}

/// @nodoc
abstract class $PreviousPressedCopyWith<$Res> {
  factory $PreviousPressedCopyWith(
          PreviousPressed value, $Res Function(PreviousPressed) then) =
      _$PreviousPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$PreviousPressedCopyWithImpl<$Res>
    extends _$PlayerDisplayerEventCopyWithImpl<$Res>
    implements $PreviousPressedCopyWith<$Res> {
  _$PreviousPressedCopyWithImpl(
      PreviousPressed _value, $Res Function(PreviousPressed) _then)
      : super(_value, (v) => _then(v as PreviousPressed));

  @override
  PreviousPressed get _value => super._value as PreviousPressed;
}

/// @nodoc

class _$PreviousPressed implements PreviousPressed {
  const _$PreviousPressed();

  @override
  String toString() {
    return 'PlayerDisplayerEvent.previousPlayerPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PreviousPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() previousPlayerPressed,
    required TResult Function() nextPlayerPressed,
    required TResult Function(int newIndex) currentIndexUpdated,
  }) {
    return previousPlayerPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? previousPlayerPressed,
    TResult Function()? nextPlayerPressed,
    TResult Function(int newIndex)? currentIndexUpdated,
    required TResult orElse(),
  }) {
    if (previousPlayerPressed != null) {
      return previousPlayerPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreviousPressed value) previousPlayerPressed,
    required TResult Function(NextPressed value) nextPlayerPressed,
    required TResult Function(CurrentIndexUpdated value) currentIndexUpdated,
  }) {
    return previousPlayerPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreviousPressed value)? previousPlayerPressed,
    TResult Function(NextPressed value)? nextPlayerPressed,
    TResult Function(CurrentIndexUpdated value)? currentIndexUpdated,
    required TResult orElse(),
  }) {
    if (previousPlayerPressed != null) {
      return previousPlayerPressed(this);
    }
    return orElse();
  }
}

abstract class PreviousPressed implements PlayerDisplayerEvent {
  const factory PreviousPressed() = _$PreviousPressed;
}

/// @nodoc
abstract class $NextPressedCopyWith<$Res> {
  factory $NextPressedCopyWith(
          NextPressed value, $Res Function(NextPressed) then) =
      _$NextPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$NextPressedCopyWithImpl<$Res>
    extends _$PlayerDisplayerEventCopyWithImpl<$Res>
    implements $NextPressedCopyWith<$Res> {
  _$NextPressedCopyWithImpl(
      NextPressed _value, $Res Function(NextPressed) _then)
      : super(_value, (v) => _then(v as NextPressed));

  @override
  NextPressed get _value => super._value as NextPressed;
}

/// @nodoc

class _$NextPressed implements NextPressed {
  const _$NextPressed();

  @override
  String toString() {
    return 'PlayerDisplayerEvent.nextPlayerPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NextPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() previousPlayerPressed,
    required TResult Function() nextPlayerPressed,
    required TResult Function(int newIndex) currentIndexUpdated,
  }) {
    return nextPlayerPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? previousPlayerPressed,
    TResult Function()? nextPlayerPressed,
    TResult Function(int newIndex)? currentIndexUpdated,
    required TResult orElse(),
  }) {
    if (nextPlayerPressed != null) {
      return nextPlayerPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreviousPressed value) previousPlayerPressed,
    required TResult Function(NextPressed value) nextPlayerPressed,
    required TResult Function(CurrentIndexUpdated value) currentIndexUpdated,
  }) {
    return nextPlayerPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreviousPressed value)? previousPlayerPressed,
    TResult Function(NextPressed value)? nextPlayerPressed,
    TResult Function(CurrentIndexUpdated value)? currentIndexUpdated,
    required TResult orElse(),
  }) {
    if (nextPlayerPressed != null) {
      return nextPlayerPressed(this);
    }
    return orElse();
  }
}

abstract class NextPressed implements PlayerDisplayerEvent {
  const factory NextPressed() = _$NextPressed;
}

/// @nodoc
abstract class $CurrentIndexUpdatedCopyWith<$Res> {
  factory $CurrentIndexUpdatedCopyWith(
          CurrentIndexUpdated value, $Res Function(CurrentIndexUpdated) then) =
      _$CurrentIndexUpdatedCopyWithImpl<$Res>;
  $Res call({int newIndex});
}

/// @nodoc
class _$CurrentIndexUpdatedCopyWithImpl<$Res>
    extends _$PlayerDisplayerEventCopyWithImpl<$Res>
    implements $CurrentIndexUpdatedCopyWith<$Res> {
  _$CurrentIndexUpdatedCopyWithImpl(
      CurrentIndexUpdated _value, $Res Function(CurrentIndexUpdated) _then)
      : super(_value, (v) => _then(v as CurrentIndexUpdated));

  @override
  CurrentIndexUpdated get _value => super._value as CurrentIndexUpdated;

  @override
  $Res call({
    Object? newIndex = freezed,
  }) {
    return _then(CurrentIndexUpdated(
      newIndex: newIndex == freezed
          ? _value.newIndex
          : newIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CurrentIndexUpdated implements CurrentIndexUpdated {
  const _$CurrentIndexUpdated({required this.newIndex});

  @override
  final int newIndex;

  @override
  String toString() {
    return 'PlayerDisplayerEvent.currentIndexUpdated(newIndex: $newIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CurrentIndexUpdated &&
            (identical(other.newIndex, newIndex) ||
                const DeepCollectionEquality()
                    .equals(other.newIndex, newIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newIndex);

  @JsonKey(ignore: true)
  @override
  $CurrentIndexUpdatedCopyWith<CurrentIndexUpdated> get copyWith =>
      _$CurrentIndexUpdatedCopyWithImpl<CurrentIndexUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() previousPlayerPressed,
    required TResult Function() nextPlayerPressed,
    required TResult Function(int newIndex) currentIndexUpdated,
  }) {
    return currentIndexUpdated(newIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? previousPlayerPressed,
    TResult Function()? nextPlayerPressed,
    TResult Function(int newIndex)? currentIndexUpdated,
    required TResult orElse(),
  }) {
    if (currentIndexUpdated != null) {
      return currentIndexUpdated(newIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreviousPressed value) previousPlayerPressed,
    required TResult Function(NextPressed value) nextPlayerPressed,
    required TResult Function(CurrentIndexUpdated value) currentIndexUpdated,
  }) {
    return currentIndexUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreviousPressed value)? previousPlayerPressed,
    TResult Function(NextPressed value)? nextPlayerPressed,
    TResult Function(CurrentIndexUpdated value)? currentIndexUpdated,
    required TResult orElse(),
  }) {
    if (currentIndexUpdated != null) {
      return currentIndexUpdated(this);
    }
    return orElse();
  }
}

abstract class CurrentIndexUpdated implements PlayerDisplayerEvent {
  const factory CurrentIndexUpdated({required int newIndex}) =
      _$CurrentIndexUpdated;

  int get newIndex => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentIndexUpdatedCopyWith<CurrentIndexUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PlayerDisplayerStateTearOff {
  const _$PlayerDisplayerStateTearOff();

  _PlayerDisplayerState call({required int index}) {
    return _PlayerDisplayerState(
      index: index,
    );
  }
}

/// @nodoc
const $PlayerDisplayerState = _$PlayerDisplayerStateTearOff();

/// @nodoc
mixin _$PlayerDisplayerState {
  int get index => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayerDisplayerStateCopyWith<PlayerDisplayerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerDisplayerStateCopyWith<$Res> {
  factory $PlayerDisplayerStateCopyWith(PlayerDisplayerState value,
          $Res Function(PlayerDisplayerState) then) =
      _$PlayerDisplayerStateCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$PlayerDisplayerStateCopyWithImpl<$Res>
    implements $PlayerDisplayerStateCopyWith<$Res> {
  _$PlayerDisplayerStateCopyWithImpl(this._value, this._then);

  final PlayerDisplayerState _value;
  // ignore: unused_field
  final $Res Function(PlayerDisplayerState) _then;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$PlayerDisplayerStateCopyWith<$Res>
    implements $PlayerDisplayerStateCopyWith<$Res> {
  factory _$PlayerDisplayerStateCopyWith(_PlayerDisplayerState value,
          $Res Function(_PlayerDisplayerState) then) =
      __$PlayerDisplayerStateCopyWithImpl<$Res>;
  @override
  $Res call({int index});
}

/// @nodoc
class __$PlayerDisplayerStateCopyWithImpl<$Res>
    extends _$PlayerDisplayerStateCopyWithImpl<$Res>
    implements _$PlayerDisplayerStateCopyWith<$Res> {
  __$PlayerDisplayerStateCopyWithImpl(
      _PlayerDisplayerState _value, $Res Function(_PlayerDisplayerState) _then)
      : super(_value, (v) => _then(v as _PlayerDisplayerState));

  @override
  _PlayerDisplayerState get _value => super._value as _PlayerDisplayerState;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_PlayerDisplayerState(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PlayerDisplayerState implements _PlayerDisplayerState {
  const _$_PlayerDisplayerState({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'PlayerDisplayerState(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlayerDisplayerState &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$PlayerDisplayerStateCopyWith<_PlayerDisplayerState> get copyWith =>
      __$PlayerDisplayerStateCopyWithImpl<_PlayerDisplayerState>(
          this, _$identity);
}

abstract class _PlayerDisplayerState implements PlayerDisplayerState {
  const factory _PlayerDisplayerState({required int index}) =
      _$_PlayerDisplayerState;

  @override
  int get index => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlayerDisplayerStateCopyWith<_PlayerDisplayerState> get copyWith =>
      throw _privateConstructorUsedError;
}
