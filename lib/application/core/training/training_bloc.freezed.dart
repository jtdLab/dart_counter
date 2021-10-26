// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'training_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TrainingEventTearOff {
  const _$TrainingEventTearOff();

  TrainingCreated trainingCreated() {
    return const TrainingCreated();
  }

  TrainingPlayerAdded playerAdded() {
    return const TrainingPlayerAdded();
  }

  TrainingPlayerRemoved playerRemoved({required int index}) {
    return TrainingPlayerRemoved(
      index: index,
    );
  }

  TrainingPlayerReordered playerReordered(
      {required int oldIndex, required int newIndex}) {
    return TrainingPlayerReordered(
      oldIndex: oldIndex,
      newIndex: newIndex,
    );
  }

  TrainingPlayerNameUpdated playerNameUpdated(
      {required int index, required String newName}) {
    return TrainingPlayerNameUpdated(
      index: index,
      newName: newName,
    );
  }

  TrainingTypeChanged typeChanged({required Type newType}) {
    return TrainingTypeChanged(
      newType: newType,
    );
  }

  TrainingCanceled trainingCanceled() {
    return const TrainingCanceled();
  }

  TrainingGameSnapshotReceived gameSnapshotReceived(
      {required TrainingGameSnapshot gameSnapshot}) {
    return TrainingGameSnapshotReceived(
      gameSnapshot: gameSnapshot,
    );
  }
}

/// @nodoc
const $TrainingEvent = _$TrainingEventTearOff();

/// @nodoc
mixin _$TrainingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() trainingCreated,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(Type newType) typeChanged,
    required TResult Function() trainingCanceled,
    required TResult Function(TrainingGameSnapshot gameSnapshot)
        gameSnapshotReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? trainingCreated,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeChanged,
    TResult Function()? trainingCanceled,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameSnapshotReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? trainingCreated,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeChanged,
    TResult Function()? trainingCanceled,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameSnapshotReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrainingCreated value) trainingCreated,
    required TResult Function(TrainingPlayerAdded value) playerAdded,
    required TResult Function(TrainingPlayerRemoved value) playerRemoved,
    required TResult Function(TrainingPlayerReordered value) playerReordered,
    required TResult Function(TrainingPlayerNameUpdated value)
        playerNameUpdated,
    required TResult Function(TrainingTypeChanged value) typeChanged,
    required TResult Function(TrainingCanceled value) trainingCanceled,
    required TResult Function(TrainingGameSnapshotReceived value)
        gameSnapshotReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrainingCreated value)? trainingCreated,
    TResult Function(TrainingPlayerAdded value)? playerAdded,
    TResult Function(TrainingPlayerRemoved value)? playerRemoved,
    TResult Function(TrainingPlayerReordered value)? playerReordered,
    TResult Function(TrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(TrainingTypeChanged value)? typeChanged,
    TResult Function(TrainingCanceled value)? trainingCanceled,
    TResult Function(TrainingGameSnapshotReceived value)? gameSnapshotReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrainingCreated value)? trainingCreated,
    TResult Function(TrainingPlayerAdded value)? playerAdded,
    TResult Function(TrainingPlayerRemoved value)? playerRemoved,
    TResult Function(TrainingPlayerReordered value)? playerReordered,
    TResult Function(TrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(TrainingTypeChanged value)? typeChanged,
    TResult Function(TrainingCanceled value)? trainingCanceled,
    TResult Function(TrainingGameSnapshotReceived value)? gameSnapshotReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainingEventCopyWith<$Res> {
  factory $TrainingEventCopyWith(
          TrainingEvent value, $Res Function(TrainingEvent) then) =
      _$TrainingEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TrainingEventCopyWithImpl<$Res>
    implements $TrainingEventCopyWith<$Res> {
  _$TrainingEventCopyWithImpl(this._value, this._then);

  final TrainingEvent _value;
  // ignore: unused_field
  final $Res Function(TrainingEvent) _then;
}

/// @nodoc
abstract class $TrainingCreatedCopyWith<$Res> {
  factory $TrainingCreatedCopyWith(
          TrainingCreated value, $Res Function(TrainingCreated) then) =
      _$TrainingCreatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$TrainingCreatedCopyWithImpl<$Res>
    extends _$TrainingEventCopyWithImpl<$Res>
    implements $TrainingCreatedCopyWith<$Res> {
  _$TrainingCreatedCopyWithImpl(
      TrainingCreated _value, $Res Function(TrainingCreated) _then)
      : super(_value, (v) => _then(v as TrainingCreated));

  @override
  TrainingCreated get _value => super._value as TrainingCreated;
}

/// @nodoc

class _$TrainingCreated implements TrainingCreated {
  const _$TrainingCreated();

  @override
  String toString() {
    return 'TrainingEvent.trainingCreated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TrainingCreated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() trainingCreated,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(Type newType) typeChanged,
    required TResult Function() trainingCanceled,
    required TResult Function(TrainingGameSnapshot gameSnapshot)
        gameSnapshotReceived,
  }) {
    return trainingCreated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? trainingCreated,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeChanged,
    TResult Function()? trainingCanceled,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameSnapshotReceived,
  }) {
    return trainingCreated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? trainingCreated,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeChanged,
    TResult Function()? trainingCanceled,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameSnapshotReceived,
    required TResult orElse(),
  }) {
    if (trainingCreated != null) {
      return trainingCreated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrainingCreated value) trainingCreated,
    required TResult Function(TrainingPlayerAdded value) playerAdded,
    required TResult Function(TrainingPlayerRemoved value) playerRemoved,
    required TResult Function(TrainingPlayerReordered value) playerReordered,
    required TResult Function(TrainingPlayerNameUpdated value)
        playerNameUpdated,
    required TResult Function(TrainingTypeChanged value) typeChanged,
    required TResult Function(TrainingCanceled value) trainingCanceled,
    required TResult Function(TrainingGameSnapshotReceived value)
        gameSnapshotReceived,
  }) {
    return trainingCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrainingCreated value)? trainingCreated,
    TResult Function(TrainingPlayerAdded value)? playerAdded,
    TResult Function(TrainingPlayerRemoved value)? playerRemoved,
    TResult Function(TrainingPlayerReordered value)? playerReordered,
    TResult Function(TrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(TrainingTypeChanged value)? typeChanged,
    TResult Function(TrainingCanceled value)? trainingCanceled,
    TResult Function(TrainingGameSnapshotReceived value)? gameSnapshotReceived,
  }) {
    return trainingCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrainingCreated value)? trainingCreated,
    TResult Function(TrainingPlayerAdded value)? playerAdded,
    TResult Function(TrainingPlayerRemoved value)? playerRemoved,
    TResult Function(TrainingPlayerReordered value)? playerReordered,
    TResult Function(TrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(TrainingTypeChanged value)? typeChanged,
    TResult Function(TrainingCanceled value)? trainingCanceled,
    TResult Function(TrainingGameSnapshotReceived value)? gameSnapshotReceived,
    required TResult orElse(),
  }) {
    if (trainingCreated != null) {
      return trainingCreated(this);
    }
    return orElse();
  }
}

abstract class TrainingCreated implements TrainingEvent {
  const factory TrainingCreated() = _$TrainingCreated;
}

/// @nodoc
abstract class $TrainingPlayerAddedCopyWith<$Res> {
  factory $TrainingPlayerAddedCopyWith(
          TrainingPlayerAdded value, $Res Function(TrainingPlayerAdded) then) =
      _$TrainingPlayerAddedCopyWithImpl<$Res>;
}

/// @nodoc
class _$TrainingPlayerAddedCopyWithImpl<$Res>
    extends _$TrainingEventCopyWithImpl<$Res>
    implements $TrainingPlayerAddedCopyWith<$Res> {
  _$TrainingPlayerAddedCopyWithImpl(
      TrainingPlayerAdded _value, $Res Function(TrainingPlayerAdded) _then)
      : super(_value, (v) => _then(v as TrainingPlayerAdded));

  @override
  TrainingPlayerAdded get _value => super._value as TrainingPlayerAdded;
}

/// @nodoc

class _$TrainingPlayerAdded implements TrainingPlayerAdded {
  const _$TrainingPlayerAdded();

  @override
  String toString() {
    return 'TrainingEvent.playerAdded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TrainingPlayerAdded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() trainingCreated,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(Type newType) typeChanged,
    required TResult Function() trainingCanceled,
    required TResult Function(TrainingGameSnapshot gameSnapshot)
        gameSnapshotReceived,
  }) {
    return playerAdded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? trainingCreated,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeChanged,
    TResult Function()? trainingCanceled,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameSnapshotReceived,
  }) {
    return playerAdded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? trainingCreated,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeChanged,
    TResult Function()? trainingCanceled,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameSnapshotReceived,
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
    required TResult Function(TrainingCreated value) trainingCreated,
    required TResult Function(TrainingPlayerAdded value) playerAdded,
    required TResult Function(TrainingPlayerRemoved value) playerRemoved,
    required TResult Function(TrainingPlayerReordered value) playerReordered,
    required TResult Function(TrainingPlayerNameUpdated value)
        playerNameUpdated,
    required TResult Function(TrainingTypeChanged value) typeChanged,
    required TResult Function(TrainingCanceled value) trainingCanceled,
    required TResult Function(TrainingGameSnapshotReceived value)
        gameSnapshotReceived,
  }) {
    return playerAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrainingCreated value)? trainingCreated,
    TResult Function(TrainingPlayerAdded value)? playerAdded,
    TResult Function(TrainingPlayerRemoved value)? playerRemoved,
    TResult Function(TrainingPlayerReordered value)? playerReordered,
    TResult Function(TrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(TrainingTypeChanged value)? typeChanged,
    TResult Function(TrainingCanceled value)? trainingCanceled,
    TResult Function(TrainingGameSnapshotReceived value)? gameSnapshotReceived,
  }) {
    return playerAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrainingCreated value)? trainingCreated,
    TResult Function(TrainingPlayerAdded value)? playerAdded,
    TResult Function(TrainingPlayerRemoved value)? playerRemoved,
    TResult Function(TrainingPlayerReordered value)? playerReordered,
    TResult Function(TrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(TrainingTypeChanged value)? typeChanged,
    TResult Function(TrainingCanceled value)? trainingCanceled,
    TResult Function(TrainingGameSnapshotReceived value)? gameSnapshotReceived,
    required TResult orElse(),
  }) {
    if (playerAdded != null) {
      return playerAdded(this);
    }
    return orElse();
  }
}

abstract class TrainingPlayerAdded implements TrainingEvent {
  const factory TrainingPlayerAdded() = _$TrainingPlayerAdded;
}

/// @nodoc
abstract class $TrainingPlayerRemovedCopyWith<$Res> {
  factory $TrainingPlayerRemovedCopyWith(TrainingPlayerRemoved value,
          $Res Function(TrainingPlayerRemoved) then) =
      _$TrainingPlayerRemovedCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$TrainingPlayerRemovedCopyWithImpl<$Res>
    extends _$TrainingEventCopyWithImpl<$Res>
    implements $TrainingPlayerRemovedCopyWith<$Res> {
  _$TrainingPlayerRemovedCopyWithImpl(
      TrainingPlayerRemoved _value, $Res Function(TrainingPlayerRemoved) _then)
      : super(_value, (v) => _then(v as TrainingPlayerRemoved));

  @override
  TrainingPlayerRemoved get _value => super._value as TrainingPlayerRemoved;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(TrainingPlayerRemoved(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TrainingPlayerRemoved implements TrainingPlayerRemoved {
  const _$TrainingPlayerRemoved({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'TrainingEvent.playerRemoved(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TrainingPlayerRemoved &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  $TrainingPlayerRemovedCopyWith<TrainingPlayerRemoved> get copyWith =>
      _$TrainingPlayerRemovedCopyWithImpl<TrainingPlayerRemoved>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() trainingCreated,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(Type newType) typeChanged,
    required TResult Function() trainingCanceled,
    required TResult Function(TrainingGameSnapshot gameSnapshot)
        gameSnapshotReceived,
  }) {
    return playerRemoved(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? trainingCreated,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeChanged,
    TResult Function()? trainingCanceled,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameSnapshotReceived,
  }) {
    return playerRemoved?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? trainingCreated,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeChanged,
    TResult Function()? trainingCanceled,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameSnapshotReceived,
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
    required TResult Function(TrainingCreated value) trainingCreated,
    required TResult Function(TrainingPlayerAdded value) playerAdded,
    required TResult Function(TrainingPlayerRemoved value) playerRemoved,
    required TResult Function(TrainingPlayerReordered value) playerReordered,
    required TResult Function(TrainingPlayerNameUpdated value)
        playerNameUpdated,
    required TResult Function(TrainingTypeChanged value) typeChanged,
    required TResult Function(TrainingCanceled value) trainingCanceled,
    required TResult Function(TrainingGameSnapshotReceived value)
        gameSnapshotReceived,
  }) {
    return playerRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrainingCreated value)? trainingCreated,
    TResult Function(TrainingPlayerAdded value)? playerAdded,
    TResult Function(TrainingPlayerRemoved value)? playerRemoved,
    TResult Function(TrainingPlayerReordered value)? playerReordered,
    TResult Function(TrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(TrainingTypeChanged value)? typeChanged,
    TResult Function(TrainingCanceled value)? trainingCanceled,
    TResult Function(TrainingGameSnapshotReceived value)? gameSnapshotReceived,
  }) {
    return playerRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrainingCreated value)? trainingCreated,
    TResult Function(TrainingPlayerAdded value)? playerAdded,
    TResult Function(TrainingPlayerRemoved value)? playerRemoved,
    TResult Function(TrainingPlayerReordered value)? playerReordered,
    TResult Function(TrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(TrainingTypeChanged value)? typeChanged,
    TResult Function(TrainingCanceled value)? trainingCanceled,
    TResult Function(TrainingGameSnapshotReceived value)? gameSnapshotReceived,
    required TResult orElse(),
  }) {
    if (playerRemoved != null) {
      return playerRemoved(this);
    }
    return orElse();
  }
}

abstract class TrainingPlayerRemoved implements TrainingEvent {
  const factory TrainingPlayerRemoved({required int index}) =
      _$TrainingPlayerRemoved;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrainingPlayerRemovedCopyWith<TrainingPlayerRemoved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainingPlayerReorderedCopyWith<$Res> {
  factory $TrainingPlayerReorderedCopyWith(TrainingPlayerReordered value,
          $Res Function(TrainingPlayerReordered) then) =
      _$TrainingPlayerReorderedCopyWithImpl<$Res>;
  $Res call({int oldIndex, int newIndex});
}

/// @nodoc
class _$TrainingPlayerReorderedCopyWithImpl<$Res>
    extends _$TrainingEventCopyWithImpl<$Res>
    implements $TrainingPlayerReorderedCopyWith<$Res> {
  _$TrainingPlayerReorderedCopyWithImpl(TrainingPlayerReordered _value,
      $Res Function(TrainingPlayerReordered) _then)
      : super(_value, (v) => _then(v as TrainingPlayerReordered));

  @override
  TrainingPlayerReordered get _value => super._value as TrainingPlayerReordered;

  @override
  $Res call({
    Object? oldIndex = freezed,
    Object? newIndex = freezed,
  }) {
    return _then(TrainingPlayerReordered(
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

class _$TrainingPlayerReordered implements TrainingPlayerReordered {
  const _$TrainingPlayerReordered(
      {required this.oldIndex, required this.newIndex});

  @override
  final int oldIndex;
  @override
  final int newIndex;

  @override
  String toString() {
    return 'TrainingEvent.playerReordered(oldIndex: $oldIndex, newIndex: $newIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TrainingPlayerReordered &&
            (identical(other.oldIndex, oldIndex) ||
                const DeepCollectionEquality()
                    .equals(other.oldIndex, oldIndex)) &&
            (identical(other.newIndex, newIndex) ||
                const DeepCollectionEquality()
                    .equals(other.newIndex, newIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(oldIndex) ^
      const DeepCollectionEquality().hash(newIndex);

  @JsonKey(ignore: true)
  @override
  $TrainingPlayerReorderedCopyWith<TrainingPlayerReordered> get copyWith =>
      _$TrainingPlayerReorderedCopyWithImpl<TrainingPlayerReordered>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() trainingCreated,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(Type newType) typeChanged,
    required TResult Function() trainingCanceled,
    required TResult Function(TrainingGameSnapshot gameSnapshot)
        gameSnapshotReceived,
  }) {
    return playerReordered(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? trainingCreated,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeChanged,
    TResult Function()? trainingCanceled,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameSnapshotReceived,
  }) {
    return playerReordered?.call(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? trainingCreated,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeChanged,
    TResult Function()? trainingCanceled,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameSnapshotReceived,
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
    required TResult Function(TrainingCreated value) trainingCreated,
    required TResult Function(TrainingPlayerAdded value) playerAdded,
    required TResult Function(TrainingPlayerRemoved value) playerRemoved,
    required TResult Function(TrainingPlayerReordered value) playerReordered,
    required TResult Function(TrainingPlayerNameUpdated value)
        playerNameUpdated,
    required TResult Function(TrainingTypeChanged value) typeChanged,
    required TResult Function(TrainingCanceled value) trainingCanceled,
    required TResult Function(TrainingGameSnapshotReceived value)
        gameSnapshotReceived,
  }) {
    return playerReordered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrainingCreated value)? trainingCreated,
    TResult Function(TrainingPlayerAdded value)? playerAdded,
    TResult Function(TrainingPlayerRemoved value)? playerRemoved,
    TResult Function(TrainingPlayerReordered value)? playerReordered,
    TResult Function(TrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(TrainingTypeChanged value)? typeChanged,
    TResult Function(TrainingCanceled value)? trainingCanceled,
    TResult Function(TrainingGameSnapshotReceived value)? gameSnapshotReceived,
  }) {
    return playerReordered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrainingCreated value)? trainingCreated,
    TResult Function(TrainingPlayerAdded value)? playerAdded,
    TResult Function(TrainingPlayerRemoved value)? playerRemoved,
    TResult Function(TrainingPlayerReordered value)? playerReordered,
    TResult Function(TrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(TrainingTypeChanged value)? typeChanged,
    TResult Function(TrainingCanceled value)? trainingCanceled,
    TResult Function(TrainingGameSnapshotReceived value)? gameSnapshotReceived,
    required TResult orElse(),
  }) {
    if (playerReordered != null) {
      return playerReordered(this);
    }
    return orElse();
  }
}

abstract class TrainingPlayerReordered implements TrainingEvent {
  const factory TrainingPlayerReordered(
      {required int oldIndex,
      required int newIndex}) = _$TrainingPlayerReordered;

  int get oldIndex => throw _privateConstructorUsedError;
  int get newIndex => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrainingPlayerReorderedCopyWith<TrainingPlayerReordered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainingPlayerNameUpdatedCopyWith<$Res> {
  factory $TrainingPlayerNameUpdatedCopyWith(TrainingPlayerNameUpdated value,
          $Res Function(TrainingPlayerNameUpdated) then) =
      _$TrainingPlayerNameUpdatedCopyWithImpl<$Res>;
  $Res call({int index, String newName});
}

/// @nodoc
class _$TrainingPlayerNameUpdatedCopyWithImpl<$Res>
    extends _$TrainingEventCopyWithImpl<$Res>
    implements $TrainingPlayerNameUpdatedCopyWith<$Res> {
  _$TrainingPlayerNameUpdatedCopyWithImpl(TrainingPlayerNameUpdated _value,
      $Res Function(TrainingPlayerNameUpdated) _then)
      : super(_value, (v) => _then(v as TrainingPlayerNameUpdated));

  @override
  TrainingPlayerNameUpdated get _value =>
      super._value as TrainingPlayerNameUpdated;

  @override
  $Res call({
    Object? index = freezed,
    Object? newName = freezed,
  }) {
    return _then(TrainingPlayerNameUpdated(
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

class _$TrainingPlayerNameUpdated implements TrainingPlayerNameUpdated {
  const _$TrainingPlayerNameUpdated(
      {required this.index, required this.newName});

  @override
  final int index;
  @override
  final String newName;

  @override
  String toString() {
    return 'TrainingEvent.playerNameUpdated(index: $index, newName: $newName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TrainingPlayerNameUpdated &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.newName, newName) ||
                const DeepCollectionEquality().equals(other.newName, newName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(newName);

  @JsonKey(ignore: true)
  @override
  $TrainingPlayerNameUpdatedCopyWith<TrainingPlayerNameUpdated> get copyWith =>
      _$TrainingPlayerNameUpdatedCopyWithImpl<TrainingPlayerNameUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() trainingCreated,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(Type newType) typeChanged,
    required TResult Function() trainingCanceled,
    required TResult Function(TrainingGameSnapshot gameSnapshot)
        gameSnapshotReceived,
  }) {
    return playerNameUpdated(index, newName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? trainingCreated,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeChanged,
    TResult Function()? trainingCanceled,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameSnapshotReceived,
  }) {
    return playerNameUpdated?.call(index, newName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? trainingCreated,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeChanged,
    TResult Function()? trainingCanceled,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameSnapshotReceived,
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
    required TResult Function(TrainingCreated value) trainingCreated,
    required TResult Function(TrainingPlayerAdded value) playerAdded,
    required TResult Function(TrainingPlayerRemoved value) playerRemoved,
    required TResult Function(TrainingPlayerReordered value) playerReordered,
    required TResult Function(TrainingPlayerNameUpdated value)
        playerNameUpdated,
    required TResult Function(TrainingTypeChanged value) typeChanged,
    required TResult Function(TrainingCanceled value) trainingCanceled,
    required TResult Function(TrainingGameSnapshotReceived value)
        gameSnapshotReceived,
  }) {
    return playerNameUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrainingCreated value)? trainingCreated,
    TResult Function(TrainingPlayerAdded value)? playerAdded,
    TResult Function(TrainingPlayerRemoved value)? playerRemoved,
    TResult Function(TrainingPlayerReordered value)? playerReordered,
    TResult Function(TrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(TrainingTypeChanged value)? typeChanged,
    TResult Function(TrainingCanceled value)? trainingCanceled,
    TResult Function(TrainingGameSnapshotReceived value)? gameSnapshotReceived,
  }) {
    return playerNameUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrainingCreated value)? trainingCreated,
    TResult Function(TrainingPlayerAdded value)? playerAdded,
    TResult Function(TrainingPlayerRemoved value)? playerRemoved,
    TResult Function(TrainingPlayerReordered value)? playerReordered,
    TResult Function(TrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(TrainingTypeChanged value)? typeChanged,
    TResult Function(TrainingCanceled value)? trainingCanceled,
    TResult Function(TrainingGameSnapshotReceived value)? gameSnapshotReceived,
    required TResult orElse(),
  }) {
    if (playerNameUpdated != null) {
      return playerNameUpdated(this);
    }
    return orElse();
  }
}

abstract class TrainingPlayerNameUpdated implements TrainingEvent {
  const factory TrainingPlayerNameUpdated(
      {required int index,
      required String newName}) = _$TrainingPlayerNameUpdated;

  int get index => throw _privateConstructorUsedError;
  String get newName => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrainingPlayerNameUpdatedCopyWith<TrainingPlayerNameUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainingTypeChangedCopyWith<$Res> {
  factory $TrainingTypeChangedCopyWith(
          TrainingTypeChanged value, $Res Function(TrainingTypeChanged) then) =
      _$TrainingTypeChangedCopyWithImpl<$Res>;
  $Res call({Type newType});
}

/// @nodoc
class _$TrainingTypeChangedCopyWithImpl<$Res>
    extends _$TrainingEventCopyWithImpl<$Res>
    implements $TrainingTypeChangedCopyWith<$Res> {
  _$TrainingTypeChangedCopyWithImpl(
      TrainingTypeChanged _value, $Res Function(TrainingTypeChanged) _then)
      : super(_value, (v) => _then(v as TrainingTypeChanged));

  @override
  TrainingTypeChanged get _value => super._value as TrainingTypeChanged;

  @override
  $Res call({
    Object? newType = freezed,
  }) {
    return _then(TrainingTypeChanged(
      newType: newType == freezed
          ? _value.newType
          : newType // ignore: cast_nullable_to_non_nullable
              as Type,
    ));
  }
}

/// @nodoc

class _$TrainingTypeChanged implements TrainingTypeChanged {
  const _$TrainingTypeChanged({required this.newType});

  @override
  final Type newType;

  @override
  String toString() {
    return 'TrainingEvent.typeChanged(newType: $newType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TrainingTypeChanged &&
            (identical(other.newType, newType) ||
                const DeepCollectionEquality().equals(other.newType, newType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newType);

  @JsonKey(ignore: true)
  @override
  $TrainingTypeChangedCopyWith<TrainingTypeChanged> get copyWith =>
      _$TrainingTypeChangedCopyWithImpl<TrainingTypeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() trainingCreated,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(Type newType) typeChanged,
    required TResult Function() trainingCanceled,
    required TResult Function(TrainingGameSnapshot gameSnapshot)
        gameSnapshotReceived,
  }) {
    return typeChanged(newType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? trainingCreated,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeChanged,
    TResult Function()? trainingCanceled,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameSnapshotReceived,
  }) {
    return typeChanged?.call(newType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? trainingCreated,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeChanged,
    TResult Function()? trainingCanceled,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameSnapshotReceived,
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
    required TResult Function(TrainingCreated value) trainingCreated,
    required TResult Function(TrainingPlayerAdded value) playerAdded,
    required TResult Function(TrainingPlayerRemoved value) playerRemoved,
    required TResult Function(TrainingPlayerReordered value) playerReordered,
    required TResult Function(TrainingPlayerNameUpdated value)
        playerNameUpdated,
    required TResult Function(TrainingTypeChanged value) typeChanged,
    required TResult Function(TrainingCanceled value) trainingCanceled,
    required TResult Function(TrainingGameSnapshotReceived value)
        gameSnapshotReceived,
  }) {
    return typeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrainingCreated value)? trainingCreated,
    TResult Function(TrainingPlayerAdded value)? playerAdded,
    TResult Function(TrainingPlayerRemoved value)? playerRemoved,
    TResult Function(TrainingPlayerReordered value)? playerReordered,
    TResult Function(TrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(TrainingTypeChanged value)? typeChanged,
    TResult Function(TrainingCanceled value)? trainingCanceled,
    TResult Function(TrainingGameSnapshotReceived value)? gameSnapshotReceived,
  }) {
    return typeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrainingCreated value)? trainingCreated,
    TResult Function(TrainingPlayerAdded value)? playerAdded,
    TResult Function(TrainingPlayerRemoved value)? playerRemoved,
    TResult Function(TrainingPlayerReordered value)? playerReordered,
    TResult Function(TrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(TrainingTypeChanged value)? typeChanged,
    TResult Function(TrainingCanceled value)? trainingCanceled,
    TResult Function(TrainingGameSnapshotReceived value)? gameSnapshotReceived,
    required TResult orElse(),
  }) {
    if (typeChanged != null) {
      return typeChanged(this);
    }
    return orElse();
  }
}

abstract class TrainingTypeChanged implements TrainingEvent {
  const factory TrainingTypeChanged({required Type newType}) =
      _$TrainingTypeChanged;

  Type get newType => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrainingTypeChangedCopyWith<TrainingTypeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainingCanceledCopyWith<$Res> {
  factory $TrainingCanceledCopyWith(
          TrainingCanceled value, $Res Function(TrainingCanceled) then) =
      _$TrainingCanceledCopyWithImpl<$Res>;
}

/// @nodoc
class _$TrainingCanceledCopyWithImpl<$Res>
    extends _$TrainingEventCopyWithImpl<$Res>
    implements $TrainingCanceledCopyWith<$Res> {
  _$TrainingCanceledCopyWithImpl(
      TrainingCanceled _value, $Res Function(TrainingCanceled) _then)
      : super(_value, (v) => _then(v as TrainingCanceled));

  @override
  TrainingCanceled get _value => super._value as TrainingCanceled;
}

/// @nodoc

class _$TrainingCanceled implements TrainingCanceled {
  const _$TrainingCanceled();

  @override
  String toString() {
    return 'TrainingEvent.trainingCanceled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TrainingCanceled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() trainingCreated,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(Type newType) typeChanged,
    required TResult Function() trainingCanceled,
    required TResult Function(TrainingGameSnapshot gameSnapshot)
        gameSnapshotReceived,
  }) {
    return trainingCanceled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? trainingCreated,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeChanged,
    TResult Function()? trainingCanceled,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameSnapshotReceived,
  }) {
    return trainingCanceled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? trainingCreated,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeChanged,
    TResult Function()? trainingCanceled,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameSnapshotReceived,
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
    required TResult Function(TrainingCreated value) trainingCreated,
    required TResult Function(TrainingPlayerAdded value) playerAdded,
    required TResult Function(TrainingPlayerRemoved value) playerRemoved,
    required TResult Function(TrainingPlayerReordered value) playerReordered,
    required TResult Function(TrainingPlayerNameUpdated value)
        playerNameUpdated,
    required TResult Function(TrainingTypeChanged value) typeChanged,
    required TResult Function(TrainingCanceled value) trainingCanceled,
    required TResult Function(TrainingGameSnapshotReceived value)
        gameSnapshotReceived,
  }) {
    return trainingCanceled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrainingCreated value)? trainingCreated,
    TResult Function(TrainingPlayerAdded value)? playerAdded,
    TResult Function(TrainingPlayerRemoved value)? playerRemoved,
    TResult Function(TrainingPlayerReordered value)? playerReordered,
    TResult Function(TrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(TrainingTypeChanged value)? typeChanged,
    TResult Function(TrainingCanceled value)? trainingCanceled,
    TResult Function(TrainingGameSnapshotReceived value)? gameSnapshotReceived,
  }) {
    return trainingCanceled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrainingCreated value)? trainingCreated,
    TResult Function(TrainingPlayerAdded value)? playerAdded,
    TResult Function(TrainingPlayerRemoved value)? playerRemoved,
    TResult Function(TrainingPlayerReordered value)? playerReordered,
    TResult Function(TrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(TrainingTypeChanged value)? typeChanged,
    TResult Function(TrainingCanceled value)? trainingCanceled,
    TResult Function(TrainingGameSnapshotReceived value)? gameSnapshotReceived,
    required TResult orElse(),
  }) {
    if (trainingCanceled != null) {
      return trainingCanceled(this);
    }
    return orElse();
  }
}

abstract class TrainingCanceled implements TrainingEvent {
  const factory TrainingCanceled() = _$TrainingCanceled;
}

/// @nodoc
abstract class $TrainingGameSnapshotReceivedCopyWith<$Res> {
  factory $TrainingGameSnapshotReceivedCopyWith(
          TrainingGameSnapshotReceived value,
          $Res Function(TrainingGameSnapshotReceived) then) =
      _$TrainingGameSnapshotReceivedCopyWithImpl<$Res>;
  $Res call({TrainingGameSnapshot gameSnapshot});
}

/// @nodoc
class _$TrainingGameSnapshotReceivedCopyWithImpl<$Res>
    extends _$TrainingEventCopyWithImpl<$Res>
    implements $TrainingGameSnapshotReceivedCopyWith<$Res> {
  _$TrainingGameSnapshotReceivedCopyWithImpl(
      TrainingGameSnapshotReceived _value,
      $Res Function(TrainingGameSnapshotReceived) _then)
      : super(_value, (v) => _then(v as TrainingGameSnapshotReceived));

  @override
  TrainingGameSnapshotReceived get _value =>
      super._value as TrainingGameSnapshotReceived;

  @override
  $Res call({
    Object? gameSnapshot = freezed,
  }) {
    return _then(TrainingGameSnapshotReceived(
      gameSnapshot: gameSnapshot == freezed
          ? _value.gameSnapshot
          : gameSnapshot // ignore: cast_nullable_to_non_nullable
              as TrainingGameSnapshot,
    ));
  }
}

/// @nodoc

class _$TrainingGameSnapshotReceived implements TrainingGameSnapshotReceived {
  const _$TrainingGameSnapshotReceived({required this.gameSnapshot});

  @override
  final TrainingGameSnapshot gameSnapshot;

  @override
  String toString() {
    return 'TrainingEvent.gameSnapshotReceived(gameSnapshot: $gameSnapshot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TrainingGameSnapshotReceived &&
            (identical(other.gameSnapshot, gameSnapshot) ||
                const DeepCollectionEquality()
                    .equals(other.gameSnapshot, gameSnapshot)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(gameSnapshot);

  @JsonKey(ignore: true)
  @override
  $TrainingGameSnapshotReceivedCopyWith<TrainingGameSnapshotReceived>
      get copyWith => _$TrainingGameSnapshotReceivedCopyWithImpl<
          TrainingGameSnapshotReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() trainingCreated,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(Type newType) typeChanged,
    required TResult Function() trainingCanceled,
    required TResult Function(TrainingGameSnapshot gameSnapshot)
        gameSnapshotReceived,
  }) {
    return gameSnapshotReceived(gameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? trainingCreated,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeChanged,
    TResult Function()? trainingCanceled,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameSnapshotReceived,
  }) {
    return gameSnapshotReceived?.call(gameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? trainingCreated,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeChanged,
    TResult Function()? trainingCanceled,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameSnapshotReceived,
    required TResult orElse(),
  }) {
    if (gameSnapshotReceived != null) {
      return gameSnapshotReceived(gameSnapshot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrainingCreated value) trainingCreated,
    required TResult Function(TrainingPlayerAdded value) playerAdded,
    required TResult Function(TrainingPlayerRemoved value) playerRemoved,
    required TResult Function(TrainingPlayerReordered value) playerReordered,
    required TResult Function(TrainingPlayerNameUpdated value)
        playerNameUpdated,
    required TResult Function(TrainingTypeChanged value) typeChanged,
    required TResult Function(TrainingCanceled value) trainingCanceled,
    required TResult Function(TrainingGameSnapshotReceived value)
        gameSnapshotReceived,
  }) {
    return gameSnapshotReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrainingCreated value)? trainingCreated,
    TResult Function(TrainingPlayerAdded value)? playerAdded,
    TResult Function(TrainingPlayerRemoved value)? playerRemoved,
    TResult Function(TrainingPlayerReordered value)? playerReordered,
    TResult Function(TrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(TrainingTypeChanged value)? typeChanged,
    TResult Function(TrainingCanceled value)? trainingCanceled,
    TResult Function(TrainingGameSnapshotReceived value)? gameSnapshotReceived,
  }) {
    return gameSnapshotReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrainingCreated value)? trainingCreated,
    TResult Function(TrainingPlayerAdded value)? playerAdded,
    TResult Function(TrainingPlayerRemoved value)? playerRemoved,
    TResult Function(TrainingPlayerReordered value)? playerReordered,
    TResult Function(TrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(TrainingTypeChanged value)? typeChanged,
    TResult Function(TrainingCanceled value)? trainingCanceled,
    TResult Function(TrainingGameSnapshotReceived value)? gameSnapshotReceived,
    required TResult orElse(),
  }) {
    if (gameSnapshotReceived != null) {
      return gameSnapshotReceived(this);
    }
    return orElse();
  }
}

abstract class TrainingGameSnapshotReceived implements TrainingEvent {
  const factory TrainingGameSnapshotReceived(
          {required TrainingGameSnapshot gameSnapshot}) =
      _$TrainingGameSnapshotReceived;

  TrainingGameSnapshot get gameSnapshot => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrainingGameSnapshotReceivedCopyWith<TrainingGameSnapshotReceived>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$TrainingStateTearOff {
  const _$TrainingStateTearOff();

  TrainingInitial initial(
      {required Type type, required TrainingGameSnapshot gameSnapshot}) {
    return TrainingInitial(
      type: type,
      gameSnapshot: gameSnapshot,
    );
  }
}

/// @nodoc
const $TrainingState = _$TrainingStateTearOff();

/// @nodoc
mixin _$TrainingState {
  Type get type => throw _privateConstructorUsedError;
  TrainingGameSnapshot get gameSnapshot => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Type type, TrainingGameSnapshot gameSnapshot)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Type type, TrainingGameSnapshot gameSnapshot)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Type type, TrainingGameSnapshot gameSnapshot)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrainingInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrainingInitial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrainingInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrainingStateCopyWith<TrainingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainingStateCopyWith<$Res> {
  factory $TrainingStateCopyWith(
          TrainingState value, $Res Function(TrainingState) then) =
      _$TrainingStateCopyWithImpl<$Res>;
  $Res call({Type type, TrainingGameSnapshot gameSnapshot});
}

/// @nodoc
class _$TrainingStateCopyWithImpl<$Res>
    implements $TrainingStateCopyWith<$Res> {
  _$TrainingStateCopyWithImpl(this._value, this._then);

  final TrainingState _value;
  // ignore: unused_field
  final $Res Function(TrainingState) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? gameSnapshot = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Type,
      gameSnapshot: gameSnapshot == freezed
          ? _value.gameSnapshot
          : gameSnapshot // ignore: cast_nullable_to_non_nullable
              as TrainingGameSnapshot,
    ));
  }
}

/// @nodoc
abstract class $TrainingInitialCopyWith<$Res>
    implements $TrainingStateCopyWith<$Res> {
  factory $TrainingInitialCopyWith(
          TrainingInitial value, $Res Function(TrainingInitial) then) =
      _$TrainingInitialCopyWithImpl<$Res>;
  @override
  $Res call({Type type, TrainingGameSnapshot gameSnapshot});
}

/// @nodoc
class _$TrainingInitialCopyWithImpl<$Res>
    extends _$TrainingStateCopyWithImpl<$Res>
    implements $TrainingInitialCopyWith<$Res> {
  _$TrainingInitialCopyWithImpl(
      TrainingInitial _value, $Res Function(TrainingInitial) _then)
      : super(_value, (v) => _then(v as TrainingInitial));

  @override
  TrainingInitial get _value => super._value as TrainingInitial;

  @override
  $Res call({
    Object? type = freezed,
    Object? gameSnapshot = freezed,
  }) {
    return _then(TrainingInitial(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Type,
      gameSnapshot: gameSnapshot == freezed
          ? _value.gameSnapshot
          : gameSnapshot // ignore: cast_nullable_to_non_nullable
              as TrainingGameSnapshot,
    ));
  }
}

/// @nodoc

class _$TrainingInitial implements TrainingInitial {
  const _$TrainingInitial({required this.type, required this.gameSnapshot});

  @override
  final Type type;
  @override
  final TrainingGameSnapshot gameSnapshot;

  @override
  String toString() {
    return 'TrainingState.initial(type: $type, gameSnapshot: $gameSnapshot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TrainingInitial &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.gameSnapshot, gameSnapshot) ||
                const DeepCollectionEquality()
                    .equals(other.gameSnapshot, gameSnapshot)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(gameSnapshot);

  @JsonKey(ignore: true)
  @override
  $TrainingInitialCopyWith<TrainingInitial> get copyWith =>
      _$TrainingInitialCopyWithImpl<TrainingInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Type type, TrainingGameSnapshot gameSnapshot)
        initial,
  }) {
    return initial(type, gameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Type type, TrainingGameSnapshot gameSnapshot)? initial,
  }) {
    return initial?.call(type, gameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Type type, TrainingGameSnapshot gameSnapshot)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(type, gameSnapshot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrainingInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrainingInitial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrainingInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TrainingInitial implements TrainingState {
  const factory TrainingInitial(
      {required Type type,
      required TrainingGameSnapshot gameSnapshot}) = _$TrainingInitial;

  @override
  Type get type => throw _privateConstructorUsedError;
  @override
  TrainingGameSnapshot get gameSnapshot => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $TrainingInitialCopyWith<TrainingInitial> get copyWith =>
      throw _privateConstructorUsedError;
}
