// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_training_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateTrainingEventTearOff {
  const _$CreateTrainingEventTearOff();

  _Started started() {
    return const _Started();
  }

  _PlayerAdded playerAdded() {
    return const _PlayerAdded();
  }

  _PlayerRemoved playerRemoved({required int index}) {
    return _PlayerRemoved(
      index: index,
    );
  }

  _PlayerReordered playerReordered(
      {required int oldIndex, required int newIndex}) {
    return _PlayerReordered(
      oldIndex: oldIndex,
      newIndex: newIndex,
    );
  }

  _PlayerNameUpdated playerNameUpdated(
      {required int index, required String newName}) {
    return _PlayerNameUpdated(
      index: index,
      newName: newName,
    );
  }

  _TypeChanged typeChanged({required Type newType}) {
    return _TypeChanged(
      newType: newType,
    );
  }

  _TrainingStarted trainingStarted() {
    return const _TrainingStarted();
  }

  _TrainingCanceled trainingCanceled() {
    return const _TrainingCanceled();
  }

  _SingleDoubleModeChanged singleDoubleModeChanged({required Mode newMode}) {
    return _SingleDoubleModeChanged(
      newMode: newMode,
    );
  }

  _NumberOfTakesChanged numberOfTakesChanged({required int newNumberOfTakes}) {
    return _NumberOfTakesChanged(
      newNumberOfTakes: newNumberOfTakes,
    );
  }

  _BobsTwentySevenModeChanged bobsTwentySevenModeChanged(
      {required bobs27.Mode newMode}) {
    return _BobsTwentySevenModeChanged(
      newMode: newMode,
    );
  }

  _SnapshotReceived snapshotReceived(
      {required AbstractTrainingGameSnapshot snapshot}) {
    return _SnapshotReceived(
      snapshot: snapshot,
    );
  }
}

/// @nodoc
const $CreateTrainingEvent = _$CreateTrainingEventTearOff();

/// @nodoc
mixin _$CreateTrainingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(Type newType) typeChanged,
    required TResult Function() trainingStarted,
    required TResult Function() trainingCanceled,
    required TResult Function(Mode newMode) singleDoubleModeChanged,
    required TResult Function(int newNumberOfTakes) numberOfTakesChanged,
    required TResult Function(bobs27.Mode newMode) bobsTwentySevenModeChanged,
    required TResult Function(AbstractTrainingGameSnapshot snapshot)
        snapshotReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeChanged,
    TResult Function()? trainingStarted,
    TResult Function()? trainingCanceled,
    TResult Function(Mode newMode)? singleDoubleModeChanged,
    TResult Function(int newNumberOfTakes)? numberOfTakesChanged,
    TResult Function(bobs27.Mode newMode)? bobsTwentySevenModeChanged,
    TResult Function(AbstractTrainingGameSnapshot snapshot)? snapshotReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeChanged,
    TResult Function()? trainingStarted,
    TResult Function()? trainingCanceled,
    TResult Function(Mode newMode)? singleDoubleModeChanged,
    TResult Function(int newNumberOfTakes)? numberOfTakesChanged,
    TResult Function(bobs27.Mode newMode)? bobsTwentySevenModeChanged,
    TResult Function(AbstractTrainingGameSnapshot snapshot)? snapshotReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PlayerAdded value) playerAdded,
    required TResult Function(_PlayerRemoved value) playerRemoved,
    required TResult Function(_PlayerReordered value) playerReordered,
    required TResult Function(_PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_TrainingStarted value) trainingStarted,
    required TResult Function(_TrainingCanceled value) trainingCanceled,
    required TResult Function(_SingleDoubleModeChanged value)
        singleDoubleModeChanged,
    required TResult Function(_NumberOfTakesChanged value) numberOfTakesChanged,
    required TResult Function(_BobsTwentySevenModeChanged value)
        bobsTwentySevenModeChanged,
    required TResult Function(_SnapshotReceived value) snapshotReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_TrainingStarted value)? trainingStarted,
    TResult Function(_TrainingCanceled value)? trainingCanceled,
    TResult Function(_SingleDoubleModeChanged value)? singleDoubleModeChanged,
    TResult Function(_NumberOfTakesChanged value)? numberOfTakesChanged,
    TResult Function(_BobsTwentySevenModeChanged value)?
        bobsTwentySevenModeChanged,
    TResult Function(_SnapshotReceived value)? snapshotReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_TrainingStarted value)? trainingStarted,
    TResult Function(_TrainingCanceled value)? trainingCanceled,
    TResult Function(_SingleDoubleModeChanged value)? singleDoubleModeChanged,
    TResult Function(_NumberOfTakesChanged value)? numberOfTakesChanged,
    TResult Function(_BobsTwentySevenModeChanged value)?
        bobsTwentySevenModeChanged,
    TResult Function(_SnapshotReceived value)? snapshotReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTrainingEventCopyWith<$Res> {
  factory $CreateTrainingEventCopyWith(
          CreateTrainingEvent value, $Res Function(CreateTrainingEvent) then) =
      _$CreateTrainingEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateTrainingEventCopyWithImpl<$Res>
    implements $CreateTrainingEventCopyWith<$Res> {
  _$CreateTrainingEventCopyWithImpl(this._value, this._then);

  final CreateTrainingEvent _value;
  // ignore: unused_field
  final $Res Function(CreateTrainingEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$CreateTrainingEventCopyWithImpl<$Res>
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
    return 'CreateTrainingEvent.started()';
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
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(Type newType) typeChanged,
    required TResult Function() trainingStarted,
    required TResult Function() trainingCanceled,
    required TResult Function(Mode newMode) singleDoubleModeChanged,
    required TResult Function(int newNumberOfTakes) numberOfTakesChanged,
    required TResult Function(bobs27.Mode newMode) bobsTwentySevenModeChanged,
    required TResult Function(AbstractTrainingGameSnapshot snapshot)
        snapshotReceived,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeChanged,
    TResult Function()? trainingStarted,
    TResult Function()? trainingCanceled,
    TResult Function(Mode newMode)? singleDoubleModeChanged,
    TResult Function(int newNumberOfTakes)? numberOfTakesChanged,
    TResult Function(bobs27.Mode newMode)? bobsTwentySevenModeChanged,
    TResult Function(AbstractTrainingGameSnapshot snapshot)? snapshotReceived,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeChanged,
    TResult Function()? trainingStarted,
    TResult Function()? trainingCanceled,
    TResult Function(Mode newMode)? singleDoubleModeChanged,
    TResult Function(int newNumberOfTakes)? numberOfTakesChanged,
    TResult Function(bobs27.Mode newMode)? bobsTwentySevenModeChanged,
    TResult Function(AbstractTrainingGameSnapshot snapshot)? snapshotReceived,
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
    required TResult Function(_PlayerAdded value) playerAdded,
    required TResult Function(_PlayerRemoved value) playerRemoved,
    required TResult Function(_PlayerReordered value) playerReordered,
    required TResult Function(_PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_TrainingStarted value) trainingStarted,
    required TResult Function(_TrainingCanceled value) trainingCanceled,
    required TResult Function(_SingleDoubleModeChanged value)
        singleDoubleModeChanged,
    required TResult Function(_NumberOfTakesChanged value) numberOfTakesChanged,
    required TResult Function(_BobsTwentySevenModeChanged value)
        bobsTwentySevenModeChanged,
    required TResult Function(_SnapshotReceived value) snapshotReceived,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_TrainingStarted value)? trainingStarted,
    TResult Function(_TrainingCanceled value)? trainingCanceled,
    TResult Function(_SingleDoubleModeChanged value)? singleDoubleModeChanged,
    TResult Function(_NumberOfTakesChanged value)? numberOfTakesChanged,
    TResult Function(_BobsTwentySevenModeChanged value)?
        bobsTwentySevenModeChanged,
    TResult Function(_SnapshotReceived value)? snapshotReceived,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_TrainingStarted value)? trainingStarted,
    TResult Function(_TrainingCanceled value)? trainingCanceled,
    TResult Function(_SingleDoubleModeChanged value)? singleDoubleModeChanged,
    TResult Function(_NumberOfTakesChanged value)? numberOfTakesChanged,
    TResult Function(_BobsTwentySevenModeChanged value)?
        bobsTwentySevenModeChanged,
    TResult Function(_SnapshotReceived value)? snapshotReceived,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CreateTrainingEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$PlayerAddedCopyWith<$Res> {
  factory _$PlayerAddedCopyWith(
          _PlayerAdded value, $Res Function(_PlayerAdded) then) =
      __$PlayerAddedCopyWithImpl<$Res>;
}

/// @nodoc
class __$PlayerAddedCopyWithImpl<$Res>
    extends _$CreateTrainingEventCopyWithImpl<$Res>
    implements _$PlayerAddedCopyWith<$Res> {
  __$PlayerAddedCopyWithImpl(
      _PlayerAdded _value, $Res Function(_PlayerAdded) _then)
      : super(_value, (v) => _then(v as _PlayerAdded));

  @override
  _PlayerAdded get _value => super._value as _PlayerAdded;
}

/// @nodoc

class _$_PlayerAdded implements _PlayerAdded {
  const _$_PlayerAdded();

  @override
  String toString() {
    return 'CreateTrainingEvent.playerAdded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PlayerAdded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(Type newType) typeChanged,
    required TResult Function() trainingStarted,
    required TResult Function() trainingCanceled,
    required TResult Function(Mode newMode) singleDoubleModeChanged,
    required TResult Function(int newNumberOfTakes) numberOfTakesChanged,
    required TResult Function(bobs27.Mode newMode) bobsTwentySevenModeChanged,
    required TResult Function(AbstractTrainingGameSnapshot snapshot)
        snapshotReceived,
  }) {
    return playerAdded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeChanged,
    TResult Function()? trainingStarted,
    TResult Function()? trainingCanceled,
    TResult Function(Mode newMode)? singleDoubleModeChanged,
    TResult Function(int newNumberOfTakes)? numberOfTakesChanged,
    TResult Function(bobs27.Mode newMode)? bobsTwentySevenModeChanged,
    TResult Function(AbstractTrainingGameSnapshot snapshot)? snapshotReceived,
  }) {
    return playerAdded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeChanged,
    TResult Function()? trainingStarted,
    TResult Function()? trainingCanceled,
    TResult Function(Mode newMode)? singleDoubleModeChanged,
    TResult Function(int newNumberOfTakes)? numberOfTakesChanged,
    TResult Function(bobs27.Mode newMode)? bobsTwentySevenModeChanged,
    TResult Function(AbstractTrainingGameSnapshot snapshot)? snapshotReceived,
    required TResult orElse(),
  }) {
    if (playerAdded != null) {
      return playerAdded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PlayerAdded value) playerAdded,
    required TResult Function(_PlayerRemoved value) playerRemoved,
    required TResult Function(_PlayerReordered value) playerReordered,
    required TResult Function(_PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_TrainingStarted value) trainingStarted,
    required TResult Function(_TrainingCanceled value) trainingCanceled,
    required TResult Function(_SingleDoubleModeChanged value)
        singleDoubleModeChanged,
    required TResult Function(_NumberOfTakesChanged value) numberOfTakesChanged,
    required TResult Function(_BobsTwentySevenModeChanged value)
        bobsTwentySevenModeChanged,
    required TResult Function(_SnapshotReceived value) snapshotReceived,
  }) {
    return playerAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_TrainingStarted value)? trainingStarted,
    TResult Function(_TrainingCanceled value)? trainingCanceled,
    TResult Function(_SingleDoubleModeChanged value)? singleDoubleModeChanged,
    TResult Function(_NumberOfTakesChanged value)? numberOfTakesChanged,
    TResult Function(_BobsTwentySevenModeChanged value)?
        bobsTwentySevenModeChanged,
    TResult Function(_SnapshotReceived value)? snapshotReceived,
  }) {
    return playerAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_TrainingStarted value)? trainingStarted,
    TResult Function(_TrainingCanceled value)? trainingCanceled,
    TResult Function(_SingleDoubleModeChanged value)? singleDoubleModeChanged,
    TResult Function(_NumberOfTakesChanged value)? numberOfTakesChanged,
    TResult Function(_BobsTwentySevenModeChanged value)?
        bobsTwentySevenModeChanged,
    TResult Function(_SnapshotReceived value)? snapshotReceived,
    required TResult orElse(),
  }) {
    if (playerAdded != null) {
      return playerAdded(this);
    }
    return orElse();
  }
}

abstract class _PlayerAdded implements CreateTrainingEvent {
  const factory _PlayerAdded() = _$_PlayerAdded;
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
    extends _$CreateTrainingEventCopyWithImpl<$Res>
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
    return 'CreateTrainingEvent.playerRemoved(index: $index)';
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
    required TResult Function() started,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(Type newType) typeChanged,
    required TResult Function() trainingStarted,
    required TResult Function() trainingCanceled,
    required TResult Function(Mode newMode) singleDoubleModeChanged,
    required TResult Function(int newNumberOfTakes) numberOfTakesChanged,
    required TResult Function(bobs27.Mode newMode) bobsTwentySevenModeChanged,
    required TResult Function(AbstractTrainingGameSnapshot snapshot)
        snapshotReceived,
  }) {
    return playerRemoved(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeChanged,
    TResult Function()? trainingStarted,
    TResult Function()? trainingCanceled,
    TResult Function(Mode newMode)? singleDoubleModeChanged,
    TResult Function(int newNumberOfTakes)? numberOfTakesChanged,
    TResult Function(bobs27.Mode newMode)? bobsTwentySevenModeChanged,
    TResult Function(AbstractTrainingGameSnapshot snapshot)? snapshotReceived,
  }) {
    return playerRemoved?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeChanged,
    TResult Function()? trainingStarted,
    TResult Function()? trainingCanceled,
    TResult Function(Mode newMode)? singleDoubleModeChanged,
    TResult Function(int newNumberOfTakes)? numberOfTakesChanged,
    TResult Function(bobs27.Mode newMode)? bobsTwentySevenModeChanged,
    TResult Function(AbstractTrainingGameSnapshot snapshot)? snapshotReceived,
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
    required TResult Function(_Started value) started,
    required TResult Function(_PlayerAdded value) playerAdded,
    required TResult Function(_PlayerRemoved value) playerRemoved,
    required TResult Function(_PlayerReordered value) playerReordered,
    required TResult Function(_PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_TrainingStarted value) trainingStarted,
    required TResult Function(_TrainingCanceled value) trainingCanceled,
    required TResult Function(_SingleDoubleModeChanged value)
        singleDoubleModeChanged,
    required TResult Function(_NumberOfTakesChanged value) numberOfTakesChanged,
    required TResult Function(_BobsTwentySevenModeChanged value)
        bobsTwentySevenModeChanged,
    required TResult Function(_SnapshotReceived value) snapshotReceived,
  }) {
    return playerRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_TrainingStarted value)? trainingStarted,
    TResult Function(_TrainingCanceled value)? trainingCanceled,
    TResult Function(_SingleDoubleModeChanged value)? singleDoubleModeChanged,
    TResult Function(_NumberOfTakesChanged value)? numberOfTakesChanged,
    TResult Function(_BobsTwentySevenModeChanged value)?
        bobsTwentySevenModeChanged,
    TResult Function(_SnapshotReceived value)? snapshotReceived,
  }) {
    return playerRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_TrainingStarted value)? trainingStarted,
    TResult Function(_TrainingCanceled value)? trainingCanceled,
    TResult Function(_SingleDoubleModeChanged value)? singleDoubleModeChanged,
    TResult Function(_NumberOfTakesChanged value)? numberOfTakesChanged,
    TResult Function(_BobsTwentySevenModeChanged value)?
        bobsTwentySevenModeChanged,
    TResult Function(_SnapshotReceived value)? snapshotReceived,
    required TResult orElse(),
  }) {
    if (playerRemoved != null) {
      return playerRemoved(this);
    }
    return orElse();
  }
}

abstract class _PlayerRemoved implements CreateTrainingEvent {
  const factory _PlayerRemoved({required int index}) = _$_PlayerRemoved;

  int get index;
  @JsonKey(ignore: true)
  _$PlayerRemovedCopyWith<_PlayerRemoved> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$CreateTrainingEventCopyWithImpl<$Res>
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
    return 'CreateTrainingEvent.playerReordered(oldIndex: $oldIndex, newIndex: $newIndex)';
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
    required TResult Function() started,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(Type newType) typeChanged,
    required TResult Function() trainingStarted,
    required TResult Function() trainingCanceled,
    required TResult Function(Mode newMode) singleDoubleModeChanged,
    required TResult Function(int newNumberOfTakes) numberOfTakesChanged,
    required TResult Function(bobs27.Mode newMode) bobsTwentySevenModeChanged,
    required TResult Function(AbstractTrainingGameSnapshot snapshot)
        snapshotReceived,
  }) {
    return playerReordered(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeChanged,
    TResult Function()? trainingStarted,
    TResult Function()? trainingCanceled,
    TResult Function(Mode newMode)? singleDoubleModeChanged,
    TResult Function(int newNumberOfTakes)? numberOfTakesChanged,
    TResult Function(bobs27.Mode newMode)? bobsTwentySevenModeChanged,
    TResult Function(AbstractTrainingGameSnapshot snapshot)? snapshotReceived,
  }) {
    return playerReordered?.call(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeChanged,
    TResult Function()? trainingStarted,
    TResult Function()? trainingCanceled,
    TResult Function(Mode newMode)? singleDoubleModeChanged,
    TResult Function(int newNumberOfTakes)? numberOfTakesChanged,
    TResult Function(bobs27.Mode newMode)? bobsTwentySevenModeChanged,
    TResult Function(AbstractTrainingGameSnapshot snapshot)? snapshotReceived,
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
    required TResult Function(_Started value) started,
    required TResult Function(_PlayerAdded value) playerAdded,
    required TResult Function(_PlayerRemoved value) playerRemoved,
    required TResult Function(_PlayerReordered value) playerReordered,
    required TResult Function(_PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_TrainingStarted value) trainingStarted,
    required TResult Function(_TrainingCanceled value) trainingCanceled,
    required TResult Function(_SingleDoubleModeChanged value)
        singleDoubleModeChanged,
    required TResult Function(_NumberOfTakesChanged value) numberOfTakesChanged,
    required TResult Function(_BobsTwentySevenModeChanged value)
        bobsTwentySevenModeChanged,
    required TResult Function(_SnapshotReceived value) snapshotReceived,
  }) {
    return playerReordered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_TrainingStarted value)? trainingStarted,
    TResult Function(_TrainingCanceled value)? trainingCanceled,
    TResult Function(_SingleDoubleModeChanged value)? singleDoubleModeChanged,
    TResult Function(_NumberOfTakesChanged value)? numberOfTakesChanged,
    TResult Function(_BobsTwentySevenModeChanged value)?
        bobsTwentySevenModeChanged,
    TResult Function(_SnapshotReceived value)? snapshotReceived,
  }) {
    return playerReordered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_TrainingStarted value)? trainingStarted,
    TResult Function(_TrainingCanceled value)? trainingCanceled,
    TResult Function(_SingleDoubleModeChanged value)? singleDoubleModeChanged,
    TResult Function(_NumberOfTakesChanged value)? numberOfTakesChanged,
    TResult Function(_BobsTwentySevenModeChanged value)?
        bobsTwentySevenModeChanged,
    TResult Function(_SnapshotReceived value)? snapshotReceived,
    required TResult orElse(),
  }) {
    if (playerReordered != null) {
      return playerReordered(this);
    }
    return orElse();
  }
}

abstract class _PlayerReordered implements CreateTrainingEvent {
  const factory _PlayerReordered(
      {required int oldIndex, required int newIndex}) = _$_PlayerReordered;

  int get oldIndex;
  int get newIndex;
  @JsonKey(ignore: true)
  _$PlayerReorderedCopyWith<_PlayerReordered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PlayerNameUpdatedCopyWith<$Res> {
  factory _$PlayerNameUpdatedCopyWith(
          _PlayerNameUpdated value, $Res Function(_PlayerNameUpdated) then) =
      __$PlayerNameUpdatedCopyWithImpl<$Res>;
  $Res call({int index, String newName});
}

/// @nodoc
class __$PlayerNameUpdatedCopyWithImpl<$Res>
    extends _$CreateTrainingEventCopyWithImpl<$Res>
    implements _$PlayerNameUpdatedCopyWith<$Res> {
  __$PlayerNameUpdatedCopyWithImpl(
      _PlayerNameUpdated _value, $Res Function(_PlayerNameUpdated) _then)
      : super(_value, (v) => _then(v as _PlayerNameUpdated));

  @override
  _PlayerNameUpdated get _value => super._value as _PlayerNameUpdated;

  @override
  $Res call({
    Object? index = freezed,
    Object? newName = freezed,
  }) {
    return _then(_PlayerNameUpdated(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      newName: newName == freezed
          ? _value.newName
          : newName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PlayerNameUpdated implements _PlayerNameUpdated {
  const _$_PlayerNameUpdated({required this.index, required this.newName});

  @override
  final int index;
  @override
  final String newName;

  @override
  String toString() {
    return 'CreateTrainingEvent.playerNameUpdated(index: $index, newName: $newName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlayerNameUpdated &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality().equals(other.newName, newName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(newName));

  @JsonKey(ignore: true)
  @override
  _$PlayerNameUpdatedCopyWith<_PlayerNameUpdated> get copyWith =>
      __$PlayerNameUpdatedCopyWithImpl<_PlayerNameUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(Type newType) typeChanged,
    required TResult Function() trainingStarted,
    required TResult Function() trainingCanceled,
    required TResult Function(Mode newMode) singleDoubleModeChanged,
    required TResult Function(int newNumberOfTakes) numberOfTakesChanged,
    required TResult Function(bobs27.Mode newMode) bobsTwentySevenModeChanged,
    required TResult Function(AbstractTrainingGameSnapshot snapshot)
        snapshotReceived,
  }) {
    return playerNameUpdated(index, newName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeChanged,
    TResult Function()? trainingStarted,
    TResult Function()? trainingCanceled,
    TResult Function(Mode newMode)? singleDoubleModeChanged,
    TResult Function(int newNumberOfTakes)? numberOfTakesChanged,
    TResult Function(bobs27.Mode newMode)? bobsTwentySevenModeChanged,
    TResult Function(AbstractTrainingGameSnapshot snapshot)? snapshotReceived,
  }) {
    return playerNameUpdated?.call(index, newName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeChanged,
    TResult Function()? trainingStarted,
    TResult Function()? trainingCanceled,
    TResult Function(Mode newMode)? singleDoubleModeChanged,
    TResult Function(int newNumberOfTakes)? numberOfTakesChanged,
    TResult Function(bobs27.Mode newMode)? bobsTwentySevenModeChanged,
    TResult Function(AbstractTrainingGameSnapshot snapshot)? snapshotReceived,
    required TResult orElse(),
  }) {
    if (playerNameUpdated != null) {
      return playerNameUpdated(index, newName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PlayerAdded value) playerAdded,
    required TResult Function(_PlayerRemoved value) playerRemoved,
    required TResult Function(_PlayerReordered value) playerReordered,
    required TResult Function(_PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_TrainingStarted value) trainingStarted,
    required TResult Function(_TrainingCanceled value) trainingCanceled,
    required TResult Function(_SingleDoubleModeChanged value)
        singleDoubleModeChanged,
    required TResult Function(_NumberOfTakesChanged value) numberOfTakesChanged,
    required TResult Function(_BobsTwentySevenModeChanged value)
        bobsTwentySevenModeChanged,
    required TResult Function(_SnapshotReceived value) snapshotReceived,
  }) {
    return playerNameUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_TrainingStarted value)? trainingStarted,
    TResult Function(_TrainingCanceled value)? trainingCanceled,
    TResult Function(_SingleDoubleModeChanged value)? singleDoubleModeChanged,
    TResult Function(_NumberOfTakesChanged value)? numberOfTakesChanged,
    TResult Function(_BobsTwentySevenModeChanged value)?
        bobsTwentySevenModeChanged,
    TResult Function(_SnapshotReceived value)? snapshotReceived,
  }) {
    return playerNameUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_TrainingStarted value)? trainingStarted,
    TResult Function(_TrainingCanceled value)? trainingCanceled,
    TResult Function(_SingleDoubleModeChanged value)? singleDoubleModeChanged,
    TResult Function(_NumberOfTakesChanged value)? numberOfTakesChanged,
    TResult Function(_BobsTwentySevenModeChanged value)?
        bobsTwentySevenModeChanged,
    TResult Function(_SnapshotReceived value)? snapshotReceived,
    required TResult orElse(),
  }) {
    if (playerNameUpdated != null) {
      return playerNameUpdated(this);
    }
    return orElse();
  }
}

abstract class _PlayerNameUpdated implements CreateTrainingEvent {
  const factory _PlayerNameUpdated(
      {required int index, required String newName}) = _$_PlayerNameUpdated;

  int get index;
  String get newName;
  @JsonKey(ignore: true)
  _$PlayerNameUpdatedCopyWith<_PlayerNameUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TypeChangedCopyWith<$Res> {
  factory _$TypeChangedCopyWith(
          _TypeChanged value, $Res Function(_TypeChanged) then) =
      __$TypeChangedCopyWithImpl<$Res>;
  $Res call({Type newType});
}

/// @nodoc
class __$TypeChangedCopyWithImpl<$Res>
    extends _$CreateTrainingEventCopyWithImpl<$Res>
    implements _$TypeChangedCopyWith<$Res> {
  __$TypeChangedCopyWithImpl(
      _TypeChanged _value, $Res Function(_TypeChanged) _then)
      : super(_value, (v) => _then(v as _TypeChanged));

  @override
  _TypeChanged get _value => super._value as _TypeChanged;

  @override
  $Res call({
    Object? newType = freezed,
  }) {
    return _then(_TypeChanged(
      newType: newType == freezed
          ? _value.newType
          : newType // ignore: cast_nullable_to_non_nullable
              as Type,
    ));
  }
}

/// @nodoc

class _$_TypeChanged implements _TypeChanged {
  const _$_TypeChanged({required this.newType});

  @override
  final Type newType;

  @override
  String toString() {
    return 'CreateTrainingEvent.typeChanged(newType: $newType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TypeChanged &&
            const DeepCollectionEquality().equals(other.newType, newType));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newType));

  @JsonKey(ignore: true)
  @override
  _$TypeChangedCopyWith<_TypeChanged> get copyWith =>
      __$TypeChangedCopyWithImpl<_TypeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(Type newType) typeChanged,
    required TResult Function() trainingStarted,
    required TResult Function() trainingCanceled,
    required TResult Function(Mode newMode) singleDoubleModeChanged,
    required TResult Function(int newNumberOfTakes) numberOfTakesChanged,
    required TResult Function(bobs27.Mode newMode) bobsTwentySevenModeChanged,
    required TResult Function(AbstractTrainingGameSnapshot snapshot)
        snapshotReceived,
  }) {
    return typeChanged(newType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeChanged,
    TResult Function()? trainingStarted,
    TResult Function()? trainingCanceled,
    TResult Function(Mode newMode)? singleDoubleModeChanged,
    TResult Function(int newNumberOfTakes)? numberOfTakesChanged,
    TResult Function(bobs27.Mode newMode)? bobsTwentySevenModeChanged,
    TResult Function(AbstractTrainingGameSnapshot snapshot)? snapshotReceived,
  }) {
    return typeChanged?.call(newType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeChanged,
    TResult Function()? trainingStarted,
    TResult Function()? trainingCanceled,
    TResult Function(Mode newMode)? singleDoubleModeChanged,
    TResult Function(int newNumberOfTakes)? numberOfTakesChanged,
    TResult Function(bobs27.Mode newMode)? bobsTwentySevenModeChanged,
    TResult Function(AbstractTrainingGameSnapshot snapshot)? snapshotReceived,
    required TResult orElse(),
  }) {
    if (typeChanged != null) {
      return typeChanged(newType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PlayerAdded value) playerAdded,
    required TResult Function(_PlayerRemoved value) playerRemoved,
    required TResult Function(_PlayerReordered value) playerReordered,
    required TResult Function(_PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_TrainingStarted value) trainingStarted,
    required TResult Function(_TrainingCanceled value) trainingCanceled,
    required TResult Function(_SingleDoubleModeChanged value)
        singleDoubleModeChanged,
    required TResult Function(_NumberOfTakesChanged value) numberOfTakesChanged,
    required TResult Function(_BobsTwentySevenModeChanged value)
        bobsTwentySevenModeChanged,
    required TResult Function(_SnapshotReceived value) snapshotReceived,
  }) {
    return typeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_TrainingStarted value)? trainingStarted,
    TResult Function(_TrainingCanceled value)? trainingCanceled,
    TResult Function(_SingleDoubleModeChanged value)? singleDoubleModeChanged,
    TResult Function(_NumberOfTakesChanged value)? numberOfTakesChanged,
    TResult Function(_BobsTwentySevenModeChanged value)?
        bobsTwentySevenModeChanged,
    TResult Function(_SnapshotReceived value)? snapshotReceived,
  }) {
    return typeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_TrainingStarted value)? trainingStarted,
    TResult Function(_TrainingCanceled value)? trainingCanceled,
    TResult Function(_SingleDoubleModeChanged value)? singleDoubleModeChanged,
    TResult Function(_NumberOfTakesChanged value)? numberOfTakesChanged,
    TResult Function(_BobsTwentySevenModeChanged value)?
        bobsTwentySevenModeChanged,
    TResult Function(_SnapshotReceived value)? snapshotReceived,
    required TResult orElse(),
  }) {
    if (typeChanged != null) {
      return typeChanged(this);
    }
    return orElse();
  }
}

abstract class _TypeChanged implements CreateTrainingEvent {
  const factory _TypeChanged({required Type newType}) = _$_TypeChanged;

  Type get newType;
  @JsonKey(ignore: true)
  _$TypeChangedCopyWith<_TypeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TrainingStartedCopyWith<$Res> {
  factory _$TrainingStartedCopyWith(
          _TrainingStarted value, $Res Function(_TrainingStarted) then) =
      __$TrainingStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$TrainingStartedCopyWithImpl<$Res>
    extends _$CreateTrainingEventCopyWithImpl<$Res>
    implements _$TrainingStartedCopyWith<$Res> {
  __$TrainingStartedCopyWithImpl(
      _TrainingStarted _value, $Res Function(_TrainingStarted) _then)
      : super(_value, (v) => _then(v as _TrainingStarted));

  @override
  _TrainingStarted get _value => super._value as _TrainingStarted;
}

/// @nodoc

class _$_TrainingStarted implements _TrainingStarted {
  const _$_TrainingStarted();

  @override
  String toString() {
    return 'CreateTrainingEvent.trainingStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _TrainingStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(Type newType) typeChanged,
    required TResult Function() trainingStarted,
    required TResult Function() trainingCanceled,
    required TResult Function(Mode newMode) singleDoubleModeChanged,
    required TResult Function(int newNumberOfTakes) numberOfTakesChanged,
    required TResult Function(bobs27.Mode newMode) bobsTwentySevenModeChanged,
    required TResult Function(AbstractTrainingGameSnapshot snapshot)
        snapshotReceived,
  }) {
    return trainingStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeChanged,
    TResult Function()? trainingStarted,
    TResult Function()? trainingCanceled,
    TResult Function(Mode newMode)? singleDoubleModeChanged,
    TResult Function(int newNumberOfTakes)? numberOfTakesChanged,
    TResult Function(bobs27.Mode newMode)? bobsTwentySevenModeChanged,
    TResult Function(AbstractTrainingGameSnapshot snapshot)? snapshotReceived,
  }) {
    return trainingStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeChanged,
    TResult Function()? trainingStarted,
    TResult Function()? trainingCanceled,
    TResult Function(Mode newMode)? singleDoubleModeChanged,
    TResult Function(int newNumberOfTakes)? numberOfTakesChanged,
    TResult Function(bobs27.Mode newMode)? bobsTwentySevenModeChanged,
    TResult Function(AbstractTrainingGameSnapshot snapshot)? snapshotReceived,
    required TResult orElse(),
  }) {
    if (trainingStarted != null) {
      return trainingStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PlayerAdded value) playerAdded,
    required TResult Function(_PlayerRemoved value) playerRemoved,
    required TResult Function(_PlayerReordered value) playerReordered,
    required TResult Function(_PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_TrainingStarted value) trainingStarted,
    required TResult Function(_TrainingCanceled value) trainingCanceled,
    required TResult Function(_SingleDoubleModeChanged value)
        singleDoubleModeChanged,
    required TResult Function(_NumberOfTakesChanged value) numberOfTakesChanged,
    required TResult Function(_BobsTwentySevenModeChanged value)
        bobsTwentySevenModeChanged,
    required TResult Function(_SnapshotReceived value) snapshotReceived,
  }) {
    return trainingStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_TrainingStarted value)? trainingStarted,
    TResult Function(_TrainingCanceled value)? trainingCanceled,
    TResult Function(_SingleDoubleModeChanged value)? singleDoubleModeChanged,
    TResult Function(_NumberOfTakesChanged value)? numberOfTakesChanged,
    TResult Function(_BobsTwentySevenModeChanged value)?
        bobsTwentySevenModeChanged,
    TResult Function(_SnapshotReceived value)? snapshotReceived,
  }) {
    return trainingStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_TrainingStarted value)? trainingStarted,
    TResult Function(_TrainingCanceled value)? trainingCanceled,
    TResult Function(_SingleDoubleModeChanged value)? singleDoubleModeChanged,
    TResult Function(_NumberOfTakesChanged value)? numberOfTakesChanged,
    TResult Function(_BobsTwentySevenModeChanged value)?
        bobsTwentySevenModeChanged,
    TResult Function(_SnapshotReceived value)? snapshotReceived,
    required TResult orElse(),
  }) {
    if (trainingStarted != null) {
      return trainingStarted(this);
    }
    return orElse();
  }
}

abstract class _TrainingStarted implements CreateTrainingEvent {
  const factory _TrainingStarted() = _$_TrainingStarted;
}

/// @nodoc
abstract class _$TrainingCanceledCopyWith<$Res> {
  factory _$TrainingCanceledCopyWith(
          _TrainingCanceled value, $Res Function(_TrainingCanceled) then) =
      __$TrainingCanceledCopyWithImpl<$Res>;
}

/// @nodoc
class __$TrainingCanceledCopyWithImpl<$Res>
    extends _$CreateTrainingEventCopyWithImpl<$Res>
    implements _$TrainingCanceledCopyWith<$Res> {
  __$TrainingCanceledCopyWithImpl(
      _TrainingCanceled _value, $Res Function(_TrainingCanceled) _then)
      : super(_value, (v) => _then(v as _TrainingCanceled));

  @override
  _TrainingCanceled get _value => super._value as _TrainingCanceled;
}

/// @nodoc

class _$_TrainingCanceled implements _TrainingCanceled {
  const _$_TrainingCanceled();

  @override
  String toString() {
    return 'CreateTrainingEvent.trainingCanceled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _TrainingCanceled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(Type newType) typeChanged,
    required TResult Function() trainingStarted,
    required TResult Function() trainingCanceled,
    required TResult Function(Mode newMode) singleDoubleModeChanged,
    required TResult Function(int newNumberOfTakes) numberOfTakesChanged,
    required TResult Function(bobs27.Mode newMode) bobsTwentySevenModeChanged,
    required TResult Function(AbstractTrainingGameSnapshot snapshot)
        snapshotReceived,
  }) {
    return trainingCanceled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeChanged,
    TResult Function()? trainingStarted,
    TResult Function()? trainingCanceled,
    TResult Function(Mode newMode)? singleDoubleModeChanged,
    TResult Function(int newNumberOfTakes)? numberOfTakesChanged,
    TResult Function(bobs27.Mode newMode)? bobsTwentySevenModeChanged,
    TResult Function(AbstractTrainingGameSnapshot snapshot)? snapshotReceived,
  }) {
    return trainingCanceled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeChanged,
    TResult Function()? trainingStarted,
    TResult Function()? trainingCanceled,
    TResult Function(Mode newMode)? singleDoubleModeChanged,
    TResult Function(int newNumberOfTakes)? numberOfTakesChanged,
    TResult Function(bobs27.Mode newMode)? bobsTwentySevenModeChanged,
    TResult Function(AbstractTrainingGameSnapshot snapshot)? snapshotReceived,
    required TResult orElse(),
  }) {
    if (trainingCanceled != null) {
      return trainingCanceled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PlayerAdded value) playerAdded,
    required TResult Function(_PlayerRemoved value) playerRemoved,
    required TResult Function(_PlayerReordered value) playerReordered,
    required TResult Function(_PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_TrainingStarted value) trainingStarted,
    required TResult Function(_TrainingCanceled value) trainingCanceled,
    required TResult Function(_SingleDoubleModeChanged value)
        singleDoubleModeChanged,
    required TResult Function(_NumberOfTakesChanged value) numberOfTakesChanged,
    required TResult Function(_BobsTwentySevenModeChanged value)
        bobsTwentySevenModeChanged,
    required TResult Function(_SnapshotReceived value) snapshotReceived,
  }) {
    return trainingCanceled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_TrainingStarted value)? trainingStarted,
    TResult Function(_TrainingCanceled value)? trainingCanceled,
    TResult Function(_SingleDoubleModeChanged value)? singleDoubleModeChanged,
    TResult Function(_NumberOfTakesChanged value)? numberOfTakesChanged,
    TResult Function(_BobsTwentySevenModeChanged value)?
        bobsTwentySevenModeChanged,
    TResult Function(_SnapshotReceived value)? snapshotReceived,
  }) {
    return trainingCanceled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_TrainingStarted value)? trainingStarted,
    TResult Function(_TrainingCanceled value)? trainingCanceled,
    TResult Function(_SingleDoubleModeChanged value)? singleDoubleModeChanged,
    TResult Function(_NumberOfTakesChanged value)? numberOfTakesChanged,
    TResult Function(_BobsTwentySevenModeChanged value)?
        bobsTwentySevenModeChanged,
    TResult Function(_SnapshotReceived value)? snapshotReceived,
    required TResult orElse(),
  }) {
    if (trainingCanceled != null) {
      return trainingCanceled(this);
    }
    return orElse();
  }
}

abstract class _TrainingCanceled implements CreateTrainingEvent {
  const factory _TrainingCanceled() = _$_TrainingCanceled;
}

/// @nodoc
abstract class _$SingleDoubleModeChangedCopyWith<$Res> {
  factory _$SingleDoubleModeChangedCopyWith(_SingleDoubleModeChanged value,
          $Res Function(_SingleDoubleModeChanged) then) =
      __$SingleDoubleModeChangedCopyWithImpl<$Res>;
  $Res call({Mode newMode});
}

/// @nodoc
class __$SingleDoubleModeChangedCopyWithImpl<$Res>
    extends _$CreateTrainingEventCopyWithImpl<$Res>
    implements _$SingleDoubleModeChangedCopyWith<$Res> {
  __$SingleDoubleModeChangedCopyWithImpl(_SingleDoubleModeChanged _value,
      $Res Function(_SingleDoubleModeChanged) _then)
      : super(_value, (v) => _then(v as _SingleDoubleModeChanged));

  @override
  _SingleDoubleModeChanged get _value =>
      super._value as _SingleDoubleModeChanged;

  @override
  $Res call({
    Object? newMode = freezed,
  }) {
    return _then(_SingleDoubleModeChanged(
      newMode: newMode == freezed
          ? _value.newMode
          : newMode // ignore: cast_nullable_to_non_nullable
              as Mode,
    ));
  }
}

/// @nodoc

class _$_SingleDoubleModeChanged implements _SingleDoubleModeChanged {
  const _$_SingleDoubleModeChanged({required this.newMode});

  @override
  final Mode newMode;

  @override
  String toString() {
    return 'CreateTrainingEvent.singleDoubleModeChanged(newMode: $newMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SingleDoubleModeChanged &&
            const DeepCollectionEquality().equals(other.newMode, newMode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newMode));

  @JsonKey(ignore: true)
  @override
  _$SingleDoubleModeChangedCopyWith<_SingleDoubleModeChanged> get copyWith =>
      __$SingleDoubleModeChangedCopyWithImpl<_SingleDoubleModeChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(Type newType) typeChanged,
    required TResult Function() trainingStarted,
    required TResult Function() trainingCanceled,
    required TResult Function(Mode newMode) singleDoubleModeChanged,
    required TResult Function(int newNumberOfTakes) numberOfTakesChanged,
    required TResult Function(bobs27.Mode newMode) bobsTwentySevenModeChanged,
    required TResult Function(AbstractTrainingGameSnapshot snapshot)
        snapshotReceived,
  }) {
    return singleDoubleModeChanged(newMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeChanged,
    TResult Function()? trainingStarted,
    TResult Function()? trainingCanceled,
    TResult Function(Mode newMode)? singleDoubleModeChanged,
    TResult Function(int newNumberOfTakes)? numberOfTakesChanged,
    TResult Function(bobs27.Mode newMode)? bobsTwentySevenModeChanged,
    TResult Function(AbstractTrainingGameSnapshot snapshot)? snapshotReceived,
  }) {
    return singleDoubleModeChanged?.call(newMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeChanged,
    TResult Function()? trainingStarted,
    TResult Function()? trainingCanceled,
    TResult Function(Mode newMode)? singleDoubleModeChanged,
    TResult Function(int newNumberOfTakes)? numberOfTakesChanged,
    TResult Function(bobs27.Mode newMode)? bobsTwentySevenModeChanged,
    TResult Function(AbstractTrainingGameSnapshot snapshot)? snapshotReceived,
    required TResult orElse(),
  }) {
    if (singleDoubleModeChanged != null) {
      return singleDoubleModeChanged(newMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PlayerAdded value) playerAdded,
    required TResult Function(_PlayerRemoved value) playerRemoved,
    required TResult Function(_PlayerReordered value) playerReordered,
    required TResult Function(_PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_TrainingStarted value) trainingStarted,
    required TResult Function(_TrainingCanceled value) trainingCanceled,
    required TResult Function(_SingleDoubleModeChanged value)
        singleDoubleModeChanged,
    required TResult Function(_NumberOfTakesChanged value) numberOfTakesChanged,
    required TResult Function(_BobsTwentySevenModeChanged value)
        bobsTwentySevenModeChanged,
    required TResult Function(_SnapshotReceived value) snapshotReceived,
  }) {
    return singleDoubleModeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_TrainingStarted value)? trainingStarted,
    TResult Function(_TrainingCanceled value)? trainingCanceled,
    TResult Function(_SingleDoubleModeChanged value)? singleDoubleModeChanged,
    TResult Function(_NumberOfTakesChanged value)? numberOfTakesChanged,
    TResult Function(_BobsTwentySevenModeChanged value)?
        bobsTwentySevenModeChanged,
    TResult Function(_SnapshotReceived value)? snapshotReceived,
  }) {
    return singleDoubleModeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_TrainingStarted value)? trainingStarted,
    TResult Function(_TrainingCanceled value)? trainingCanceled,
    TResult Function(_SingleDoubleModeChanged value)? singleDoubleModeChanged,
    TResult Function(_NumberOfTakesChanged value)? numberOfTakesChanged,
    TResult Function(_BobsTwentySevenModeChanged value)?
        bobsTwentySevenModeChanged,
    TResult Function(_SnapshotReceived value)? snapshotReceived,
    required TResult orElse(),
  }) {
    if (singleDoubleModeChanged != null) {
      return singleDoubleModeChanged(this);
    }
    return orElse();
  }
}

abstract class _SingleDoubleModeChanged implements CreateTrainingEvent {
  const factory _SingleDoubleModeChanged({required Mode newMode}) =
      _$_SingleDoubleModeChanged;

  Mode get newMode;
  @JsonKey(ignore: true)
  _$SingleDoubleModeChangedCopyWith<_SingleDoubleModeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NumberOfTakesChangedCopyWith<$Res> {
  factory _$NumberOfTakesChangedCopyWith(_NumberOfTakesChanged value,
          $Res Function(_NumberOfTakesChanged) then) =
      __$NumberOfTakesChangedCopyWithImpl<$Res>;
  $Res call({int newNumberOfTakes});
}

/// @nodoc
class __$NumberOfTakesChangedCopyWithImpl<$Res>
    extends _$CreateTrainingEventCopyWithImpl<$Res>
    implements _$NumberOfTakesChangedCopyWith<$Res> {
  __$NumberOfTakesChangedCopyWithImpl(
      _NumberOfTakesChanged _value, $Res Function(_NumberOfTakesChanged) _then)
      : super(_value, (v) => _then(v as _NumberOfTakesChanged));

  @override
  _NumberOfTakesChanged get _value => super._value as _NumberOfTakesChanged;

  @override
  $Res call({
    Object? newNumberOfTakes = freezed,
  }) {
    return _then(_NumberOfTakesChanged(
      newNumberOfTakes: newNumberOfTakes == freezed
          ? _value.newNumberOfTakes
          : newNumberOfTakes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_NumberOfTakesChanged implements _NumberOfTakesChanged {
  const _$_NumberOfTakesChanged({required this.newNumberOfTakes});

  @override
  final int newNumberOfTakes;

  @override
  String toString() {
    return 'CreateTrainingEvent.numberOfTakesChanged(newNumberOfTakes: $newNumberOfTakes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NumberOfTakesChanged &&
            const DeepCollectionEquality()
                .equals(other.newNumberOfTakes, newNumberOfTakes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(newNumberOfTakes));

  @JsonKey(ignore: true)
  @override
  _$NumberOfTakesChangedCopyWith<_NumberOfTakesChanged> get copyWith =>
      __$NumberOfTakesChangedCopyWithImpl<_NumberOfTakesChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(Type newType) typeChanged,
    required TResult Function() trainingStarted,
    required TResult Function() trainingCanceled,
    required TResult Function(Mode newMode) singleDoubleModeChanged,
    required TResult Function(int newNumberOfTakes) numberOfTakesChanged,
    required TResult Function(bobs27.Mode newMode) bobsTwentySevenModeChanged,
    required TResult Function(AbstractTrainingGameSnapshot snapshot)
        snapshotReceived,
  }) {
    return numberOfTakesChanged(newNumberOfTakes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeChanged,
    TResult Function()? trainingStarted,
    TResult Function()? trainingCanceled,
    TResult Function(Mode newMode)? singleDoubleModeChanged,
    TResult Function(int newNumberOfTakes)? numberOfTakesChanged,
    TResult Function(bobs27.Mode newMode)? bobsTwentySevenModeChanged,
    TResult Function(AbstractTrainingGameSnapshot snapshot)? snapshotReceived,
  }) {
    return numberOfTakesChanged?.call(newNumberOfTakes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeChanged,
    TResult Function()? trainingStarted,
    TResult Function()? trainingCanceled,
    TResult Function(Mode newMode)? singleDoubleModeChanged,
    TResult Function(int newNumberOfTakes)? numberOfTakesChanged,
    TResult Function(bobs27.Mode newMode)? bobsTwentySevenModeChanged,
    TResult Function(AbstractTrainingGameSnapshot snapshot)? snapshotReceived,
    required TResult orElse(),
  }) {
    if (numberOfTakesChanged != null) {
      return numberOfTakesChanged(newNumberOfTakes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PlayerAdded value) playerAdded,
    required TResult Function(_PlayerRemoved value) playerRemoved,
    required TResult Function(_PlayerReordered value) playerReordered,
    required TResult Function(_PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_TrainingStarted value) trainingStarted,
    required TResult Function(_TrainingCanceled value) trainingCanceled,
    required TResult Function(_SingleDoubleModeChanged value)
        singleDoubleModeChanged,
    required TResult Function(_NumberOfTakesChanged value) numberOfTakesChanged,
    required TResult Function(_BobsTwentySevenModeChanged value)
        bobsTwentySevenModeChanged,
    required TResult Function(_SnapshotReceived value) snapshotReceived,
  }) {
    return numberOfTakesChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_TrainingStarted value)? trainingStarted,
    TResult Function(_TrainingCanceled value)? trainingCanceled,
    TResult Function(_SingleDoubleModeChanged value)? singleDoubleModeChanged,
    TResult Function(_NumberOfTakesChanged value)? numberOfTakesChanged,
    TResult Function(_BobsTwentySevenModeChanged value)?
        bobsTwentySevenModeChanged,
    TResult Function(_SnapshotReceived value)? snapshotReceived,
  }) {
    return numberOfTakesChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_TrainingStarted value)? trainingStarted,
    TResult Function(_TrainingCanceled value)? trainingCanceled,
    TResult Function(_SingleDoubleModeChanged value)? singleDoubleModeChanged,
    TResult Function(_NumberOfTakesChanged value)? numberOfTakesChanged,
    TResult Function(_BobsTwentySevenModeChanged value)?
        bobsTwentySevenModeChanged,
    TResult Function(_SnapshotReceived value)? snapshotReceived,
    required TResult orElse(),
  }) {
    if (numberOfTakesChanged != null) {
      return numberOfTakesChanged(this);
    }
    return orElse();
  }
}

abstract class _NumberOfTakesChanged implements CreateTrainingEvent {
  const factory _NumberOfTakesChanged({required int newNumberOfTakes}) =
      _$_NumberOfTakesChanged;

  int get newNumberOfTakes;
  @JsonKey(ignore: true)
  _$NumberOfTakesChangedCopyWith<_NumberOfTakesChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BobsTwentySevenModeChangedCopyWith<$Res> {
  factory _$BobsTwentySevenModeChangedCopyWith(
          _BobsTwentySevenModeChanged value,
          $Res Function(_BobsTwentySevenModeChanged) then) =
      __$BobsTwentySevenModeChangedCopyWithImpl<$Res>;
  $Res call({bobs27.Mode newMode});
}

/// @nodoc
class __$BobsTwentySevenModeChangedCopyWithImpl<$Res>
    extends _$CreateTrainingEventCopyWithImpl<$Res>
    implements _$BobsTwentySevenModeChangedCopyWith<$Res> {
  __$BobsTwentySevenModeChangedCopyWithImpl(_BobsTwentySevenModeChanged _value,
      $Res Function(_BobsTwentySevenModeChanged) _then)
      : super(_value, (v) => _then(v as _BobsTwentySevenModeChanged));

  @override
  _BobsTwentySevenModeChanged get _value =>
      super._value as _BobsTwentySevenModeChanged;

  @override
  $Res call({
    Object? newMode = freezed,
  }) {
    return _then(_BobsTwentySevenModeChanged(
      newMode: newMode == freezed
          ? _value.newMode
          : newMode // ignore: cast_nullable_to_non_nullable
              as bobs27.Mode,
    ));
  }
}

/// @nodoc

class _$_BobsTwentySevenModeChanged implements _BobsTwentySevenModeChanged {
  const _$_BobsTwentySevenModeChanged({required this.newMode});

  @override
  final bobs27.Mode newMode;

  @override
  String toString() {
    return 'CreateTrainingEvent.bobsTwentySevenModeChanged(newMode: $newMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BobsTwentySevenModeChanged &&
            const DeepCollectionEquality().equals(other.newMode, newMode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newMode));

  @JsonKey(ignore: true)
  @override
  _$BobsTwentySevenModeChangedCopyWith<_BobsTwentySevenModeChanged>
      get copyWith => __$BobsTwentySevenModeChangedCopyWithImpl<
          _BobsTwentySevenModeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(Type newType) typeChanged,
    required TResult Function() trainingStarted,
    required TResult Function() trainingCanceled,
    required TResult Function(Mode newMode) singleDoubleModeChanged,
    required TResult Function(int newNumberOfTakes) numberOfTakesChanged,
    required TResult Function(bobs27.Mode newMode) bobsTwentySevenModeChanged,
    required TResult Function(AbstractTrainingGameSnapshot snapshot)
        snapshotReceived,
  }) {
    return bobsTwentySevenModeChanged(newMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeChanged,
    TResult Function()? trainingStarted,
    TResult Function()? trainingCanceled,
    TResult Function(Mode newMode)? singleDoubleModeChanged,
    TResult Function(int newNumberOfTakes)? numberOfTakesChanged,
    TResult Function(bobs27.Mode newMode)? bobsTwentySevenModeChanged,
    TResult Function(AbstractTrainingGameSnapshot snapshot)? snapshotReceived,
  }) {
    return bobsTwentySevenModeChanged?.call(newMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeChanged,
    TResult Function()? trainingStarted,
    TResult Function()? trainingCanceled,
    TResult Function(Mode newMode)? singleDoubleModeChanged,
    TResult Function(int newNumberOfTakes)? numberOfTakesChanged,
    TResult Function(bobs27.Mode newMode)? bobsTwentySevenModeChanged,
    TResult Function(AbstractTrainingGameSnapshot snapshot)? snapshotReceived,
    required TResult orElse(),
  }) {
    if (bobsTwentySevenModeChanged != null) {
      return bobsTwentySevenModeChanged(newMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PlayerAdded value) playerAdded,
    required TResult Function(_PlayerRemoved value) playerRemoved,
    required TResult Function(_PlayerReordered value) playerReordered,
    required TResult Function(_PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_TrainingStarted value) trainingStarted,
    required TResult Function(_TrainingCanceled value) trainingCanceled,
    required TResult Function(_SingleDoubleModeChanged value)
        singleDoubleModeChanged,
    required TResult Function(_NumberOfTakesChanged value) numberOfTakesChanged,
    required TResult Function(_BobsTwentySevenModeChanged value)
        bobsTwentySevenModeChanged,
    required TResult Function(_SnapshotReceived value) snapshotReceived,
  }) {
    return bobsTwentySevenModeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_TrainingStarted value)? trainingStarted,
    TResult Function(_TrainingCanceled value)? trainingCanceled,
    TResult Function(_SingleDoubleModeChanged value)? singleDoubleModeChanged,
    TResult Function(_NumberOfTakesChanged value)? numberOfTakesChanged,
    TResult Function(_BobsTwentySevenModeChanged value)?
        bobsTwentySevenModeChanged,
    TResult Function(_SnapshotReceived value)? snapshotReceived,
  }) {
    return bobsTwentySevenModeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_TrainingStarted value)? trainingStarted,
    TResult Function(_TrainingCanceled value)? trainingCanceled,
    TResult Function(_SingleDoubleModeChanged value)? singleDoubleModeChanged,
    TResult Function(_NumberOfTakesChanged value)? numberOfTakesChanged,
    TResult Function(_BobsTwentySevenModeChanged value)?
        bobsTwentySevenModeChanged,
    TResult Function(_SnapshotReceived value)? snapshotReceived,
    required TResult orElse(),
  }) {
    if (bobsTwentySevenModeChanged != null) {
      return bobsTwentySevenModeChanged(this);
    }
    return orElse();
  }
}

abstract class _BobsTwentySevenModeChanged implements CreateTrainingEvent {
  const factory _BobsTwentySevenModeChanged({required bobs27.Mode newMode}) =
      _$_BobsTwentySevenModeChanged;

  bobs27.Mode get newMode;
  @JsonKey(ignore: true)
  _$BobsTwentySevenModeChangedCopyWith<_BobsTwentySevenModeChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SnapshotReceivedCopyWith<$Res> {
  factory _$SnapshotReceivedCopyWith(
          _SnapshotReceived value, $Res Function(_SnapshotReceived) then) =
      __$SnapshotReceivedCopyWithImpl<$Res>;
  $Res call({AbstractTrainingGameSnapshot snapshot});
}

/// @nodoc
class __$SnapshotReceivedCopyWithImpl<$Res>
    extends _$CreateTrainingEventCopyWithImpl<$Res>
    implements _$SnapshotReceivedCopyWith<$Res> {
  __$SnapshotReceivedCopyWithImpl(
      _SnapshotReceived _value, $Res Function(_SnapshotReceived) _then)
      : super(_value, (v) => _then(v as _SnapshotReceived));

  @override
  _SnapshotReceived get _value => super._value as _SnapshotReceived;

  @override
  $Res call({
    Object? snapshot = freezed,
  }) {
    return _then(_SnapshotReceived(
      snapshot: snapshot == freezed
          ? _value.snapshot
          : snapshot // ignore: cast_nullable_to_non_nullable
              as AbstractTrainingGameSnapshot,
    ));
  }
}

/// @nodoc

class _$_SnapshotReceived implements _SnapshotReceived {
  const _$_SnapshotReceived({required this.snapshot});

  @override
  final AbstractTrainingGameSnapshot snapshot;

  @override
  String toString() {
    return 'CreateTrainingEvent.snapshotReceived(snapshot: $snapshot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SnapshotReceived &&
            const DeepCollectionEquality().equals(other.snapshot, snapshot));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(snapshot));

  @JsonKey(ignore: true)
  @override
  _$SnapshotReceivedCopyWith<_SnapshotReceived> get copyWith =>
      __$SnapshotReceivedCopyWithImpl<_SnapshotReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(Type newType) typeChanged,
    required TResult Function() trainingStarted,
    required TResult Function() trainingCanceled,
    required TResult Function(Mode newMode) singleDoubleModeChanged,
    required TResult Function(int newNumberOfTakes) numberOfTakesChanged,
    required TResult Function(bobs27.Mode newMode) bobsTwentySevenModeChanged,
    required TResult Function(AbstractTrainingGameSnapshot snapshot)
        snapshotReceived,
  }) {
    return snapshotReceived(snapshot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeChanged,
    TResult Function()? trainingStarted,
    TResult Function()? trainingCanceled,
    TResult Function(Mode newMode)? singleDoubleModeChanged,
    TResult Function(int newNumberOfTakes)? numberOfTakesChanged,
    TResult Function(bobs27.Mode newMode)? bobsTwentySevenModeChanged,
    TResult Function(AbstractTrainingGameSnapshot snapshot)? snapshotReceived,
  }) {
    return snapshotReceived?.call(snapshot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeChanged,
    TResult Function()? trainingStarted,
    TResult Function()? trainingCanceled,
    TResult Function(Mode newMode)? singleDoubleModeChanged,
    TResult Function(int newNumberOfTakes)? numberOfTakesChanged,
    TResult Function(bobs27.Mode newMode)? bobsTwentySevenModeChanged,
    TResult Function(AbstractTrainingGameSnapshot snapshot)? snapshotReceived,
    required TResult orElse(),
  }) {
    if (snapshotReceived != null) {
      return snapshotReceived(snapshot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PlayerAdded value) playerAdded,
    required TResult Function(_PlayerRemoved value) playerRemoved,
    required TResult Function(_PlayerReordered value) playerReordered,
    required TResult Function(_PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_TrainingStarted value) trainingStarted,
    required TResult Function(_TrainingCanceled value) trainingCanceled,
    required TResult Function(_SingleDoubleModeChanged value)
        singleDoubleModeChanged,
    required TResult Function(_NumberOfTakesChanged value) numberOfTakesChanged,
    required TResult Function(_BobsTwentySevenModeChanged value)
        bobsTwentySevenModeChanged,
    required TResult Function(_SnapshotReceived value) snapshotReceived,
  }) {
    return snapshotReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_TrainingStarted value)? trainingStarted,
    TResult Function(_TrainingCanceled value)? trainingCanceled,
    TResult Function(_SingleDoubleModeChanged value)? singleDoubleModeChanged,
    TResult Function(_NumberOfTakesChanged value)? numberOfTakesChanged,
    TResult Function(_BobsTwentySevenModeChanged value)?
        bobsTwentySevenModeChanged,
    TResult Function(_SnapshotReceived value)? snapshotReceived,
  }) {
    return snapshotReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_TrainingStarted value)? trainingStarted,
    TResult Function(_TrainingCanceled value)? trainingCanceled,
    TResult Function(_SingleDoubleModeChanged value)? singleDoubleModeChanged,
    TResult Function(_NumberOfTakesChanged value)? numberOfTakesChanged,
    TResult Function(_BobsTwentySevenModeChanged value)?
        bobsTwentySevenModeChanged,
    TResult Function(_SnapshotReceived value)? snapshotReceived,
    required TResult orElse(),
  }) {
    if (snapshotReceived != null) {
      return snapshotReceived(this);
    }
    return orElse();
  }
}

abstract class _SnapshotReceived implements CreateTrainingEvent {
  const factory _SnapshotReceived(
      {required AbstractTrainingGameSnapshot snapshot}) = _$_SnapshotReceived;

  AbstractTrainingGameSnapshot get snapshot;
  @JsonKey(ignore: true)
  _$SnapshotReceivedCopyWith<_SnapshotReceived> get copyWith =>
      throw _privateConstructorUsedError;
}
