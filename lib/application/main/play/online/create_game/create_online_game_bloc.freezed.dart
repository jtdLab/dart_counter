// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_online_game_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateOnlineGameEventTearOff {
  const _$CreateOnlineGameEventTearOff();

  _GameCanceled gameCanceled() {
    return const _GameCanceled();
  }

  _PlayerReordered playerReordered(
      {required int oldIndex, required int newIndex}) {
    return _PlayerReordered(
      oldIndex: oldIndex,
      newIndex: newIndex,
    );
  }

  _PlayerRemoved playerRemoved({required int index}) {
    return _PlayerRemoved(
      index: index,
    );
  }

  _StartingPointsUpdated startingPointsUpdated(
      {required int newStartingPoints}) {
    return _StartingPointsUpdated(
      newStartingPoints: newStartingPoints,
    );
  }

  _ModeUpdated modeUpdated({required Mode newMode}) {
    return _ModeUpdated(
      newMode: newMode,
    );
  }

  _SizeUpdated sizeUpdated({required int newSize}) {
    return _SizeUpdated(
      newSize: newSize,
    );
  }

  _TypeUpdated typeUpdated({required Type newType}) {
    return _TypeUpdated(
      newType: newType,
    );
  }

  _GameStarted gameStarted() {
    return const _GameStarted();
  }
}

/// @nodoc
const $CreateOnlineGameEvent = _$CreateOnlineGameEventTearOff();

/// @nodoc
mixin _$CreateOnlineGameEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameCanceled,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int newStartingPoints) startingPointsUpdated,
    required TResult Function(Mode newMode) modeUpdated,
    required TResult Function(int newSize) sizeUpdated,
    required TResult Function(Type newType) typeUpdated,
    required TResult Function() gameStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index)? playerRemoved,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index)? playerRemoved,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GameCanceled value) gameCanceled,
    required TResult Function(_PlayerReordered value) playerReordered,
    required TResult Function(_PlayerRemoved value) playerRemoved,
    required TResult Function(_StartingPointsUpdated value)
        startingPointsUpdated,
    required TResult Function(_ModeUpdated value) modeUpdated,
    required TResult Function(_SizeUpdated value) sizeUpdated,
    required TResult Function(_TypeUpdated value) typeUpdated,
    required TResult Function(_GameStarted value) gameStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateOnlineGameEventCopyWith<$Res> {
  factory $CreateOnlineGameEventCopyWith(CreateOnlineGameEvent value,
          $Res Function(CreateOnlineGameEvent) then) =
      _$CreateOnlineGameEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateOnlineGameEventCopyWithImpl<$Res>
    implements $CreateOnlineGameEventCopyWith<$Res> {
  _$CreateOnlineGameEventCopyWithImpl(this._value, this._then);

  final CreateOnlineGameEvent _value;
  // ignore: unused_field
  final $Res Function(CreateOnlineGameEvent) _then;
}

/// @nodoc
abstract class _$GameCanceledCopyWith<$Res> {
  factory _$GameCanceledCopyWith(
          _GameCanceled value, $Res Function(_GameCanceled) then) =
      __$GameCanceledCopyWithImpl<$Res>;
}

/// @nodoc
class __$GameCanceledCopyWithImpl<$Res>
    extends _$CreateOnlineGameEventCopyWithImpl<$Res>
    implements _$GameCanceledCopyWith<$Res> {
  __$GameCanceledCopyWithImpl(
      _GameCanceled _value, $Res Function(_GameCanceled) _then)
      : super(_value, (v) => _then(v as _GameCanceled));

  @override
  _GameCanceled get _value => super._value as _GameCanceled;
}

/// @nodoc

class _$_GameCanceled implements _GameCanceled {
  const _$_GameCanceled();

  @override
  String toString() {
    return 'CreateOnlineGameEvent.gameCanceled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GameCanceled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameCanceled,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int newStartingPoints) startingPointsUpdated,
    required TResult Function(Mode newMode) modeUpdated,
    required TResult Function(int newSize) sizeUpdated,
    required TResult Function(Type newType) typeUpdated,
    required TResult Function() gameStarted,
  }) {
    return gameCanceled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index)? playerRemoved,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
  }) {
    return gameCanceled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index)? playerRemoved,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    required TResult orElse(),
  }) {
    if (gameCanceled != null) {
      return gameCanceled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GameCanceled value) gameCanceled,
    required TResult Function(_PlayerReordered value) playerReordered,
    required TResult Function(_PlayerRemoved value) playerRemoved,
    required TResult Function(_StartingPointsUpdated value)
        startingPointsUpdated,
    required TResult Function(_ModeUpdated value) modeUpdated,
    required TResult Function(_SizeUpdated value) sizeUpdated,
    required TResult Function(_TypeUpdated value) typeUpdated,
    required TResult Function(_GameStarted value) gameStarted,
  }) {
    return gameCanceled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
  }) {
    return gameCanceled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
    required TResult orElse(),
  }) {
    if (gameCanceled != null) {
      return gameCanceled(this);
    }
    return orElse();
  }
}

abstract class _GameCanceled implements CreateOnlineGameEvent {
  const factory _GameCanceled() = _$_GameCanceled;
}

/// @nodoc
abstract class _$PlayerReorderedCopyWith<$Res> {
  factory _$PlayerReorderedCopyWith(
          _PlayerReordered value, $Res Function(_PlayerReordered) then) =
      __$PlayerReorderedCopyWithImpl<$Res>;
  $Res call({int oldIndex, int newIndex});
}

/// @nodoc
class __$PlayerReorderedCopyWithImpl<$Res>
    extends _$CreateOnlineGameEventCopyWithImpl<$Res>
    implements _$PlayerReorderedCopyWith<$Res> {
  __$PlayerReorderedCopyWithImpl(
      _PlayerReordered _value, $Res Function(_PlayerReordered) _then)
      : super(_value, (v) => _then(v as _PlayerReordered));

  @override
  _PlayerReordered get _value => super._value as _PlayerReordered;

  @override
  $Res call({
    Object? oldIndex = freezed,
    Object? newIndex = freezed,
  }) {
    return _then(_PlayerReordered(
      oldIndex: oldIndex == freezed
          ? _value.oldIndex
          : oldIndex // ignore: cast_nullable_to_non_nullable
              as int,
      newIndex: newIndex == freezed
          ? _value.newIndex
          : newIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PlayerReordered implements _PlayerReordered {
  const _$_PlayerReordered({required this.oldIndex, required this.newIndex});

  @override
  final int oldIndex;
  @override
  final int newIndex;

  @override
  String toString() {
    return 'CreateOnlineGameEvent.playerReordered(oldIndex: $oldIndex, newIndex: $newIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlayerReordered &&
            const DeepCollectionEquality().equals(other.oldIndex, oldIndex) &&
            const DeepCollectionEquality().equals(other.newIndex, newIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(oldIndex),
      const DeepCollectionEquality().hash(newIndex));

  @JsonKey(ignore: true)
  @override
  _$PlayerReorderedCopyWith<_PlayerReordered> get copyWith =>
      __$PlayerReorderedCopyWithImpl<_PlayerReordered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameCanceled,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int newStartingPoints) startingPointsUpdated,
    required TResult Function(Mode newMode) modeUpdated,
    required TResult Function(int newSize) sizeUpdated,
    required TResult Function(Type newType) typeUpdated,
    required TResult Function() gameStarted,
  }) {
    return playerReordered(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index)? playerRemoved,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
  }) {
    return playerReordered?.call(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index)? playerRemoved,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    required TResult orElse(),
  }) {
    if (playerReordered != null) {
      return playerReordered(oldIndex, newIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GameCanceled value) gameCanceled,
    required TResult Function(_PlayerReordered value) playerReordered,
    required TResult Function(_PlayerRemoved value) playerRemoved,
    required TResult Function(_StartingPointsUpdated value)
        startingPointsUpdated,
    required TResult Function(_ModeUpdated value) modeUpdated,
    required TResult Function(_SizeUpdated value) sizeUpdated,
    required TResult Function(_TypeUpdated value) typeUpdated,
    required TResult Function(_GameStarted value) gameStarted,
  }) {
    return playerReordered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
  }) {
    return playerReordered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
    required TResult orElse(),
  }) {
    if (playerReordered != null) {
      return playerReordered(this);
    }
    return orElse();
  }
}

abstract class _PlayerReordered implements CreateOnlineGameEvent {
  const factory _PlayerReordered(
      {required int oldIndex, required int newIndex}) = _$_PlayerReordered;

  int get oldIndex;
  int get newIndex;
  @JsonKey(ignore: true)
  _$PlayerReorderedCopyWith<_PlayerReordered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PlayerRemovedCopyWith<$Res> {
  factory _$PlayerRemovedCopyWith(
          _PlayerRemoved value, $Res Function(_PlayerRemoved) then) =
      __$PlayerRemovedCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$PlayerRemovedCopyWithImpl<$Res>
    extends _$CreateOnlineGameEventCopyWithImpl<$Res>
    implements _$PlayerRemovedCopyWith<$Res> {
  __$PlayerRemovedCopyWithImpl(
      _PlayerRemoved _value, $Res Function(_PlayerRemoved) _then)
      : super(_value, (v) => _then(v as _PlayerRemoved));

  @override
  _PlayerRemoved get _value => super._value as _PlayerRemoved;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_PlayerRemoved(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PlayerRemoved implements _PlayerRemoved {
  const _$_PlayerRemoved({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'CreateOnlineGameEvent.playerRemoved(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlayerRemoved &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$PlayerRemovedCopyWith<_PlayerRemoved> get copyWith =>
      __$PlayerRemovedCopyWithImpl<_PlayerRemoved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameCanceled,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int newStartingPoints) startingPointsUpdated,
    required TResult Function(Mode newMode) modeUpdated,
    required TResult Function(int newSize) sizeUpdated,
    required TResult Function(Type newType) typeUpdated,
    required TResult Function() gameStarted,
  }) {
    return playerRemoved(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index)? playerRemoved,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
  }) {
    return playerRemoved?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index)? playerRemoved,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    required TResult orElse(),
  }) {
    if (playerRemoved != null) {
      return playerRemoved(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GameCanceled value) gameCanceled,
    required TResult Function(_PlayerReordered value) playerReordered,
    required TResult Function(_PlayerRemoved value) playerRemoved,
    required TResult Function(_StartingPointsUpdated value)
        startingPointsUpdated,
    required TResult Function(_ModeUpdated value) modeUpdated,
    required TResult Function(_SizeUpdated value) sizeUpdated,
    required TResult Function(_TypeUpdated value) typeUpdated,
    required TResult Function(_GameStarted value) gameStarted,
  }) {
    return playerRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
  }) {
    return playerRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
    required TResult orElse(),
  }) {
    if (playerRemoved != null) {
      return playerRemoved(this);
    }
    return orElse();
  }
}

abstract class _PlayerRemoved implements CreateOnlineGameEvent {
  const factory _PlayerRemoved({required int index}) = _$_PlayerRemoved;

  int get index;
  @JsonKey(ignore: true)
  _$PlayerRemovedCopyWith<_PlayerRemoved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$StartingPointsUpdatedCopyWith<$Res> {
  factory _$StartingPointsUpdatedCopyWith(_StartingPointsUpdated value,
          $Res Function(_StartingPointsUpdated) then) =
      __$StartingPointsUpdatedCopyWithImpl<$Res>;
  $Res call({int newStartingPoints});
}

/// @nodoc
class __$StartingPointsUpdatedCopyWithImpl<$Res>
    extends _$CreateOnlineGameEventCopyWithImpl<$Res>
    implements _$StartingPointsUpdatedCopyWith<$Res> {
  __$StartingPointsUpdatedCopyWithImpl(_StartingPointsUpdated _value,
      $Res Function(_StartingPointsUpdated) _then)
      : super(_value, (v) => _then(v as _StartingPointsUpdated));

  @override
  _StartingPointsUpdated get _value => super._value as _StartingPointsUpdated;

  @override
  $Res call({
    Object? newStartingPoints = freezed,
  }) {
    return _then(_StartingPointsUpdated(
      newStartingPoints: newStartingPoints == freezed
          ? _value.newStartingPoints
          : newStartingPoints // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_StartingPointsUpdated implements _StartingPointsUpdated {
  const _$_StartingPointsUpdated({required this.newStartingPoints});

  @override
  final int newStartingPoints;

  @override
  String toString() {
    return 'CreateOnlineGameEvent.startingPointsUpdated(newStartingPoints: $newStartingPoints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StartingPointsUpdated &&
            const DeepCollectionEquality()
                .equals(other.newStartingPoints, newStartingPoints));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(newStartingPoints));

  @JsonKey(ignore: true)
  @override
  _$StartingPointsUpdatedCopyWith<_StartingPointsUpdated> get copyWith =>
      __$StartingPointsUpdatedCopyWithImpl<_StartingPointsUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameCanceled,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int newStartingPoints) startingPointsUpdated,
    required TResult Function(Mode newMode) modeUpdated,
    required TResult Function(int newSize) sizeUpdated,
    required TResult Function(Type newType) typeUpdated,
    required TResult Function() gameStarted,
  }) {
    return startingPointsUpdated(newStartingPoints);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index)? playerRemoved,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
  }) {
    return startingPointsUpdated?.call(newStartingPoints);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index)? playerRemoved,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    required TResult orElse(),
  }) {
    if (startingPointsUpdated != null) {
      return startingPointsUpdated(newStartingPoints);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GameCanceled value) gameCanceled,
    required TResult Function(_PlayerReordered value) playerReordered,
    required TResult Function(_PlayerRemoved value) playerRemoved,
    required TResult Function(_StartingPointsUpdated value)
        startingPointsUpdated,
    required TResult Function(_ModeUpdated value) modeUpdated,
    required TResult Function(_SizeUpdated value) sizeUpdated,
    required TResult Function(_TypeUpdated value) typeUpdated,
    required TResult Function(_GameStarted value) gameStarted,
  }) {
    return startingPointsUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
  }) {
    return startingPointsUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
    required TResult orElse(),
  }) {
    if (startingPointsUpdated != null) {
      return startingPointsUpdated(this);
    }
    return orElse();
  }
}

abstract class _StartingPointsUpdated implements CreateOnlineGameEvent {
  const factory _StartingPointsUpdated({required int newStartingPoints}) =
      _$_StartingPointsUpdated;

  int get newStartingPoints;
  @JsonKey(ignore: true)
  _$StartingPointsUpdatedCopyWith<_StartingPointsUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ModeUpdatedCopyWith<$Res> {
  factory _$ModeUpdatedCopyWith(
          _ModeUpdated value, $Res Function(_ModeUpdated) then) =
      __$ModeUpdatedCopyWithImpl<$Res>;
  $Res call({Mode newMode});
}

/// @nodoc
class __$ModeUpdatedCopyWithImpl<$Res>
    extends _$CreateOnlineGameEventCopyWithImpl<$Res>
    implements _$ModeUpdatedCopyWith<$Res> {
  __$ModeUpdatedCopyWithImpl(
      _ModeUpdated _value, $Res Function(_ModeUpdated) _then)
      : super(_value, (v) => _then(v as _ModeUpdated));

  @override
  _ModeUpdated get _value => super._value as _ModeUpdated;

  @override
  $Res call({
    Object? newMode = freezed,
  }) {
    return _then(_ModeUpdated(
      newMode: newMode == freezed
          ? _value.newMode
          : newMode // ignore: cast_nullable_to_non_nullable
              as Mode,
    ));
  }
}

/// @nodoc

class _$_ModeUpdated implements _ModeUpdated {
  const _$_ModeUpdated({required this.newMode});

  @override
  final Mode newMode;

  @override
  String toString() {
    return 'CreateOnlineGameEvent.modeUpdated(newMode: $newMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ModeUpdated &&
            const DeepCollectionEquality().equals(other.newMode, newMode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newMode));

  @JsonKey(ignore: true)
  @override
  _$ModeUpdatedCopyWith<_ModeUpdated> get copyWith =>
      __$ModeUpdatedCopyWithImpl<_ModeUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameCanceled,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int newStartingPoints) startingPointsUpdated,
    required TResult Function(Mode newMode) modeUpdated,
    required TResult Function(int newSize) sizeUpdated,
    required TResult Function(Type newType) typeUpdated,
    required TResult Function() gameStarted,
  }) {
    return modeUpdated(newMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index)? playerRemoved,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
  }) {
    return modeUpdated?.call(newMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index)? playerRemoved,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    required TResult orElse(),
  }) {
    if (modeUpdated != null) {
      return modeUpdated(newMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GameCanceled value) gameCanceled,
    required TResult Function(_PlayerReordered value) playerReordered,
    required TResult Function(_PlayerRemoved value) playerRemoved,
    required TResult Function(_StartingPointsUpdated value)
        startingPointsUpdated,
    required TResult Function(_ModeUpdated value) modeUpdated,
    required TResult Function(_SizeUpdated value) sizeUpdated,
    required TResult Function(_TypeUpdated value) typeUpdated,
    required TResult Function(_GameStarted value) gameStarted,
  }) {
    return modeUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
  }) {
    return modeUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
    required TResult orElse(),
  }) {
    if (modeUpdated != null) {
      return modeUpdated(this);
    }
    return orElse();
  }
}

abstract class _ModeUpdated implements CreateOnlineGameEvent {
  const factory _ModeUpdated({required Mode newMode}) = _$_ModeUpdated;

  Mode get newMode;
  @JsonKey(ignore: true)
  _$ModeUpdatedCopyWith<_ModeUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SizeUpdatedCopyWith<$Res> {
  factory _$SizeUpdatedCopyWith(
          _SizeUpdated value, $Res Function(_SizeUpdated) then) =
      __$SizeUpdatedCopyWithImpl<$Res>;
  $Res call({int newSize});
}

/// @nodoc
class __$SizeUpdatedCopyWithImpl<$Res>
    extends _$CreateOnlineGameEventCopyWithImpl<$Res>
    implements _$SizeUpdatedCopyWith<$Res> {
  __$SizeUpdatedCopyWithImpl(
      _SizeUpdated _value, $Res Function(_SizeUpdated) _then)
      : super(_value, (v) => _then(v as _SizeUpdated));

  @override
  _SizeUpdated get _value => super._value as _SizeUpdated;

  @override
  $Res call({
    Object? newSize = freezed,
  }) {
    return _then(_SizeUpdated(
      newSize: newSize == freezed
          ? _value.newSize
          : newSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SizeUpdated implements _SizeUpdated {
  const _$_SizeUpdated({required this.newSize});

  @override
  final int newSize;

  @override
  String toString() {
    return 'CreateOnlineGameEvent.sizeUpdated(newSize: $newSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SizeUpdated &&
            const DeepCollectionEquality().equals(other.newSize, newSize));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newSize));

  @JsonKey(ignore: true)
  @override
  _$SizeUpdatedCopyWith<_SizeUpdated> get copyWith =>
      __$SizeUpdatedCopyWithImpl<_SizeUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameCanceled,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int newStartingPoints) startingPointsUpdated,
    required TResult Function(Mode newMode) modeUpdated,
    required TResult Function(int newSize) sizeUpdated,
    required TResult Function(Type newType) typeUpdated,
    required TResult Function() gameStarted,
  }) {
    return sizeUpdated(newSize);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index)? playerRemoved,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
  }) {
    return sizeUpdated?.call(newSize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index)? playerRemoved,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    required TResult orElse(),
  }) {
    if (sizeUpdated != null) {
      return sizeUpdated(newSize);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GameCanceled value) gameCanceled,
    required TResult Function(_PlayerReordered value) playerReordered,
    required TResult Function(_PlayerRemoved value) playerRemoved,
    required TResult Function(_StartingPointsUpdated value)
        startingPointsUpdated,
    required TResult Function(_ModeUpdated value) modeUpdated,
    required TResult Function(_SizeUpdated value) sizeUpdated,
    required TResult Function(_TypeUpdated value) typeUpdated,
    required TResult Function(_GameStarted value) gameStarted,
  }) {
    return sizeUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
  }) {
    return sizeUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
    required TResult orElse(),
  }) {
    if (sizeUpdated != null) {
      return sizeUpdated(this);
    }
    return orElse();
  }
}

abstract class _SizeUpdated implements CreateOnlineGameEvent {
  const factory _SizeUpdated({required int newSize}) = _$_SizeUpdated;

  int get newSize;
  @JsonKey(ignore: true)
  _$SizeUpdatedCopyWith<_SizeUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TypeUpdatedCopyWith<$Res> {
  factory _$TypeUpdatedCopyWith(
          _TypeUpdated value, $Res Function(_TypeUpdated) then) =
      __$TypeUpdatedCopyWithImpl<$Res>;
  $Res call({Type newType});
}

/// @nodoc
class __$TypeUpdatedCopyWithImpl<$Res>
    extends _$CreateOnlineGameEventCopyWithImpl<$Res>
    implements _$TypeUpdatedCopyWith<$Res> {
  __$TypeUpdatedCopyWithImpl(
      _TypeUpdated _value, $Res Function(_TypeUpdated) _then)
      : super(_value, (v) => _then(v as _TypeUpdated));

  @override
  _TypeUpdated get _value => super._value as _TypeUpdated;

  @override
  $Res call({
    Object? newType = freezed,
  }) {
    return _then(_TypeUpdated(
      newType: newType == freezed
          ? _value.newType
          : newType // ignore: cast_nullable_to_non_nullable
              as Type,
    ));
  }
}

/// @nodoc

class _$_TypeUpdated implements _TypeUpdated {
  const _$_TypeUpdated({required this.newType});

  @override
  final Type newType;

  @override
  String toString() {
    return 'CreateOnlineGameEvent.typeUpdated(newType: $newType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TypeUpdated &&
            const DeepCollectionEquality().equals(other.newType, newType));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newType));

  @JsonKey(ignore: true)
  @override
  _$TypeUpdatedCopyWith<_TypeUpdated> get copyWith =>
      __$TypeUpdatedCopyWithImpl<_TypeUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameCanceled,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int newStartingPoints) startingPointsUpdated,
    required TResult Function(Mode newMode) modeUpdated,
    required TResult Function(int newSize) sizeUpdated,
    required TResult Function(Type newType) typeUpdated,
    required TResult Function() gameStarted,
  }) {
    return typeUpdated(newType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index)? playerRemoved,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
  }) {
    return typeUpdated?.call(newType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index)? playerRemoved,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    required TResult orElse(),
  }) {
    if (typeUpdated != null) {
      return typeUpdated(newType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GameCanceled value) gameCanceled,
    required TResult Function(_PlayerReordered value) playerReordered,
    required TResult Function(_PlayerRemoved value) playerRemoved,
    required TResult Function(_StartingPointsUpdated value)
        startingPointsUpdated,
    required TResult Function(_ModeUpdated value) modeUpdated,
    required TResult Function(_SizeUpdated value) sizeUpdated,
    required TResult Function(_TypeUpdated value) typeUpdated,
    required TResult Function(_GameStarted value) gameStarted,
  }) {
    return typeUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
  }) {
    return typeUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
    required TResult orElse(),
  }) {
    if (typeUpdated != null) {
      return typeUpdated(this);
    }
    return orElse();
  }
}

abstract class _TypeUpdated implements CreateOnlineGameEvent {
  const factory _TypeUpdated({required Type newType}) = _$_TypeUpdated;

  Type get newType;
  @JsonKey(ignore: true)
  _$TypeUpdatedCopyWith<_TypeUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GameStartedCopyWith<$Res> {
  factory _$GameStartedCopyWith(
          _GameStarted value, $Res Function(_GameStarted) then) =
      __$GameStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$GameStartedCopyWithImpl<$Res>
    extends _$CreateOnlineGameEventCopyWithImpl<$Res>
    implements _$GameStartedCopyWith<$Res> {
  __$GameStartedCopyWithImpl(
      _GameStarted _value, $Res Function(_GameStarted) _then)
      : super(_value, (v) => _then(v as _GameStarted));

  @override
  _GameStarted get _value => super._value as _GameStarted;
}

/// @nodoc

class _$_GameStarted implements _GameStarted {
  const _$_GameStarted();

  @override
  String toString() {
    return 'CreateOnlineGameEvent.gameStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GameStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameCanceled,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int newStartingPoints) startingPointsUpdated,
    required TResult Function(Mode newMode) modeUpdated,
    required TResult Function(int newSize) sizeUpdated,
    required TResult Function(Type newType) typeUpdated,
    required TResult Function() gameStarted,
  }) {
    return gameStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index)? playerRemoved,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
  }) {
    return gameStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index)? playerRemoved,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    required TResult orElse(),
  }) {
    if (gameStarted != null) {
      return gameStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GameCanceled value) gameCanceled,
    required TResult Function(_PlayerReordered value) playerReordered,
    required TResult Function(_PlayerRemoved value) playerRemoved,
    required TResult Function(_StartingPointsUpdated value)
        startingPointsUpdated,
    required TResult Function(_ModeUpdated value) modeUpdated,
    required TResult Function(_SizeUpdated value) sizeUpdated,
    required TResult Function(_TypeUpdated value) typeUpdated,
    required TResult Function(_GameStarted value) gameStarted,
  }) {
    return gameStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
  }) {
    return gameStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
    required TResult orElse(),
  }) {
    if (gameStarted != null) {
      return gameStarted(this);
    }
    return orElse();
  }
}

abstract class _GameStarted implements CreateOnlineGameEvent {
  const factory _GameStarted() = _$_GameStarted;
}

/// @nodoc
class _$CreateOnlineGameStateTearOff {
  const _$CreateOnlineGameStateTearOff();

  CreateOnlineGameInitial initial() {
    return const CreateOnlineGameInitial();
  }
}

/// @nodoc
const $CreateOnlineGameState = _$CreateOnlineGameStateTearOff();

/// @nodoc
mixin _$CreateOnlineGameState {
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
    required TResult Function(CreateOnlineGameInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateOnlineGameInitial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateOnlineGameInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateOnlineGameStateCopyWith<$Res> {
  factory $CreateOnlineGameStateCopyWith(CreateOnlineGameState value,
          $Res Function(CreateOnlineGameState) then) =
      _$CreateOnlineGameStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateOnlineGameStateCopyWithImpl<$Res>
    implements $CreateOnlineGameStateCopyWith<$Res> {
  _$CreateOnlineGameStateCopyWithImpl(this._value, this._then);

  final CreateOnlineGameState _value;
  // ignore: unused_field
  final $Res Function(CreateOnlineGameState) _then;
}

/// @nodoc
abstract class $CreateOnlineGameInitialCopyWith<$Res> {
  factory $CreateOnlineGameInitialCopyWith(CreateOnlineGameInitial value,
          $Res Function(CreateOnlineGameInitial) then) =
      _$CreateOnlineGameInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateOnlineGameInitialCopyWithImpl<$Res>
    extends _$CreateOnlineGameStateCopyWithImpl<$Res>
    implements $CreateOnlineGameInitialCopyWith<$Res> {
  _$CreateOnlineGameInitialCopyWithImpl(CreateOnlineGameInitial _value,
      $Res Function(CreateOnlineGameInitial) _then)
      : super(_value, (v) => _then(v as CreateOnlineGameInitial));

  @override
  CreateOnlineGameInitial get _value => super._value as CreateOnlineGameInitial;
}

/// @nodoc

class _$CreateOnlineGameInitial implements CreateOnlineGameInitial {
  const _$CreateOnlineGameInitial();

  @override
  String toString() {
    return 'CreateOnlineGameState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CreateOnlineGameInitial);
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
    required TResult Function(CreateOnlineGameInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateOnlineGameInitial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateOnlineGameInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CreateOnlineGameInitial implements CreateOnlineGameState {
  const factory CreateOnlineGameInitial() = _$CreateOnlineGameInitial;
}
