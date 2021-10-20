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

  TrainingGameCanceled gameCanceled() {
    return const TrainingGameCanceled();
  }

  TrainingPlayerReordered playerReordered(
      {required int oldIndex, required int newIndex}) {
    return TrainingPlayerReordered(
      oldIndex: oldIndex,
      newIndex: newIndex,
    );
  }

  TrainingPlayerAdded playerAdded() {
    return const TrainingPlayerAdded();
  }

  TrainingPlayerRemoved playerRemoved({required int index}) {
    return TrainingPlayerRemoved(
      index: index,
    );
  }

  TrainingPlayerNameUpdated playerNameUpdated(
      {required int index, required String newName}) {
    return TrainingPlayerNameUpdated(
      index: index,
      newName: newName,
    );
  }

  TrainingGameStarted gameStarted() {
    return const TrainingGameStarted();
  }

  TrainingGameReceived gameReceived(
      {required TrainingGameSnapshot gameSnapshot}) {
    return TrainingGameReceived(
      gameSnapshot: gameSnapshot,
    );
  }
}

/// @nodoc
const $CreateTrainingEvent = _$CreateTrainingEventTearOff();

/// @nodoc
mixin _$CreateTrainingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameCanceled,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function() gameStarted,
    required TResult Function(TrainingGameSnapshot gameSnapshot) gameReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function()? gameStarted,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function()? gameStarted,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrainingGameCanceled value) gameCanceled,
    required TResult Function(TrainingPlayerReordered value) playerReordered,
    required TResult Function(TrainingPlayerAdded value) playerAdded,
    required TResult Function(TrainingPlayerRemoved value) playerRemoved,
    required TResult Function(TrainingPlayerNameUpdated value)
        playerNameUpdated,
    required TResult Function(TrainingGameStarted value) gameStarted,
    required TResult Function(TrainingGameReceived value) gameReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrainingGameCanceled value)? gameCanceled,
    TResult Function(TrainingPlayerReordered value)? playerReordered,
    TResult Function(TrainingPlayerAdded value)? playerAdded,
    TResult Function(TrainingPlayerRemoved value)? playerRemoved,
    TResult Function(TrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(TrainingGameStarted value)? gameStarted,
    TResult Function(TrainingGameReceived value)? gameReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrainingGameCanceled value)? gameCanceled,
    TResult Function(TrainingPlayerReordered value)? playerReordered,
    TResult Function(TrainingPlayerAdded value)? playerAdded,
    TResult Function(TrainingPlayerRemoved value)? playerRemoved,
    TResult Function(TrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(TrainingGameStarted value)? gameStarted,
    TResult Function(TrainingGameReceived value)? gameReceived,
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
abstract class $TrainingGameCanceledCopyWith<$Res> {
  factory $TrainingGameCanceledCopyWith(TrainingGameCanceled value,
          $Res Function(TrainingGameCanceled) then) =
      _$TrainingGameCanceledCopyWithImpl<$Res>;
}

/// @nodoc
class _$TrainingGameCanceledCopyWithImpl<$Res>
    extends _$CreateTrainingEventCopyWithImpl<$Res>
    implements $TrainingGameCanceledCopyWith<$Res> {
  _$TrainingGameCanceledCopyWithImpl(
      TrainingGameCanceled _value, $Res Function(TrainingGameCanceled) _then)
      : super(_value, (v) => _then(v as TrainingGameCanceled));

  @override
  TrainingGameCanceled get _value => super._value as TrainingGameCanceled;
}

/// @nodoc

class _$TrainingGameCanceled implements TrainingGameCanceled {
  const _$TrainingGameCanceled();

  @override
  String toString() {
    return 'CreateTrainingEvent.gameCanceled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TrainingGameCanceled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameCanceled,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function() gameStarted,
    required TResult Function(TrainingGameSnapshot gameSnapshot) gameReceived,
  }) {
    return gameCanceled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function()? gameStarted,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameReceived,
  }) {
    return gameCanceled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function()? gameStarted,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameReceived,
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
    required TResult Function(TrainingGameCanceled value) gameCanceled,
    required TResult Function(TrainingPlayerReordered value) playerReordered,
    required TResult Function(TrainingPlayerAdded value) playerAdded,
    required TResult Function(TrainingPlayerRemoved value) playerRemoved,
    required TResult Function(TrainingPlayerNameUpdated value)
        playerNameUpdated,
    required TResult Function(TrainingGameStarted value) gameStarted,
    required TResult Function(TrainingGameReceived value) gameReceived,
  }) {
    return gameCanceled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrainingGameCanceled value)? gameCanceled,
    TResult Function(TrainingPlayerReordered value)? playerReordered,
    TResult Function(TrainingPlayerAdded value)? playerAdded,
    TResult Function(TrainingPlayerRemoved value)? playerRemoved,
    TResult Function(TrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(TrainingGameStarted value)? gameStarted,
    TResult Function(TrainingGameReceived value)? gameReceived,
  }) {
    return gameCanceled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrainingGameCanceled value)? gameCanceled,
    TResult Function(TrainingPlayerReordered value)? playerReordered,
    TResult Function(TrainingPlayerAdded value)? playerAdded,
    TResult Function(TrainingPlayerRemoved value)? playerRemoved,
    TResult Function(TrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(TrainingGameStarted value)? gameStarted,
    TResult Function(TrainingGameReceived value)? gameReceived,
    required TResult orElse(),
  }) {
    if (gameCanceled != null) {
      return gameCanceled(this);
    }
    return orElse();
  }
}

abstract class TrainingGameCanceled implements CreateTrainingEvent {
  const factory TrainingGameCanceled() = _$TrainingGameCanceled;
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
    extends _$CreateTrainingEventCopyWithImpl<$Res>
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
    return 'CreateTrainingEvent.playerReordered(oldIndex: $oldIndex, newIndex: $newIndex)';
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
    required TResult Function() gameCanceled,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function() gameStarted,
    required TResult Function(TrainingGameSnapshot gameSnapshot) gameReceived,
  }) {
    return playerReordered(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function()? gameStarted,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameReceived,
  }) {
    return playerReordered?.call(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function()? gameStarted,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameReceived,
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
    required TResult Function(TrainingGameCanceled value) gameCanceled,
    required TResult Function(TrainingPlayerReordered value) playerReordered,
    required TResult Function(TrainingPlayerAdded value) playerAdded,
    required TResult Function(TrainingPlayerRemoved value) playerRemoved,
    required TResult Function(TrainingPlayerNameUpdated value)
        playerNameUpdated,
    required TResult Function(TrainingGameStarted value) gameStarted,
    required TResult Function(TrainingGameReceived value) gameReceived,
  }) {
    return playerReordered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrainingGameCanceled value)? gameCanceled,
    TResult Function(TrainingPlayerReordered value)? playerReordered,
    TResult Function(TrainingPlayerAdded value)? playerAdded,
    TResult Function(TrainingPlayerRemoved value)? playerRemoved,
    TResult Function(TrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(TrainingGameStarted value)? gameStarted,
    TResult Function(TrainingGameReceived value)? gameReceived,
  }) {
    return playerReordered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrainingGameCanceled value)? gameCanceled,
    TResult Function(TrainingPlayerReordered value)? playerReordered,
    TResult Function(TrainingPlayerAdded value)? playerAdded,
    TResult Function(TrainingPlayerRemoved value)? playerRemoved,
    TResult Function(TrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(TrainingGameStarted value)? gameStarted,
    TResult Function(TrainingGameReceived value)? gameReceived,
    required TResult orElse(),
  }) {
    if (playerReordered != null) {
      return playerReordered(this);
    }
    return orElse();
  }
}

abstract class TrainingPlayerReordered implements CreateTrainingEvent {
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
abstract class $TrainingPlayerAddedCopyWith<$Res> {
  factory $TrainingPlayerAddedCopyWith(
          TrainingPlayerAdded value, $Res Function(TrainingPlayerAdded) then) =
      _$TrainingPlayerAddedCopyWithImpl<$Res>;
}

/// @nodoc
class _$TrainingPlayerAddedCopyWithImpl<$Res>
    extends _$CreateTrainingEventCopyWithImpl<$Res>
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
    return 'CreateTrainingEvent.playerAdded()';
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
    required TResult Function() gameCanceled,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function() gameStarted,
    required TResult Function(TrainingGameSnapshot gameSnapshot) gameReceived,
  }) {
    return playerAdded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function()? gameStarted,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameReceived,
  }) {
    return playerAdded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function()? gameStarted,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameReceived,
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
    required TResult Function(TrainingGameCanceled value) gameCanceled,
    required TResult Function(TrainingPlayerReordered value) playerReordered,
    required TResult Function(TrainingPlayerAdded value) playerAdded,
    required TResult Function(TrainingPlayerRemoved value) playerRemoved,
    required TResult Function(TrainingPlayerNameUpdated value)
        playerNameUpdated,
    required TResult Function(TrainingGameStarted value) gameStarted,
    required TResult Function(TrainingGameReceived value) gameReceived,
  }) {
    return playerAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrainingGameCanceled value)? gameCanceled,
    TResult Function(TrainingPlayerReordered value)? playerReordered,
    TResult Function(TrainingPlayerAdded value)? playerAdded,
    TResult Function(TrainingPlayerRemoved value)? playerRemoved,
    TResult Function(TrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(TrainingGameStarted value)? gameStarted,
    TResult Function(TrainingGameReceived value)? gameReceived,
  }) {
    return playerAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrainingGameCanceled value)? gameCanceled,
    TResult Function(TrainingPlayerReordered value)? playerReordered,
    TResult Function(TrainingPlayerAdded value)? playerAdded,
    TResult Function(TrainingPlayerRemoved value)? playerRemoved,
    TResult Function(TrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(TrainingGameStarted value)? gameStarted,
    TResult Function(TrainingGameReceived value)? gameReceived,
    required TResult orElse(),
  }) {
    if (playerAdded != null) {
      return playerAdded(this);
    }
    return orElse();
  }
}

abstract class TrainingPlayerAdded implements CreateTrainingEvent {
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
    extends _$CreateTrainingEventCopyWithImpl<$Res>
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
    return 'CreateTrainingEvent.playerRemoved(index: $index)';
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
    required TResult Function() gameCanceled,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function() gameStarted,
    required TResult Function(TrainingGameSnapshot gameSnapshot) gameReceived,
  }) {
    return playerRemoved(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function()? gameStarted,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameReceived,
  }) {
    return playerRemoved?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function()? gameStarted,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameReceived,
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
    required TResult Function(TrainingGameCanceled value) gameCanceled,
    required TResult Function(TrainingPlayerReordered value) playerReordered,
    required TResult Function(TrainingPlayerAdded value) playerAdded,
    required TResult Function(TrainingPlayerRemoved value) playerRemoved,
    required TResult Function(TrainingPlayerNameUpdated value)
        playerNameUpdated,
    required TResult Function(TrainingGameStarted value) gameStarted,
    required TResult Function(TrainingGameReceived value) gameReceived,
  }) {
    return playerRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrainingGameCanceled value)? gameCanceled,
    TResult Function(TrainingPlayerReordered value)? playerReordered,
    TResult Function(TrainingPlayerAdded value)? playerAdded,
    TResult Function(TrainingPlayerRemoved value)? playerRemoved,
    TResult Function(TrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(TrainingGameStarted value)? gameStarted,
    TResult Function(TrainingGameReceived value)? gameReceived,
  }) {
    return playerRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrainingGameCanceled value)? gameCanceled,
    TResult Function(TrainingPlayerReordered value)? playerReordered,
    TResult Function(TrainingPlayerAdded value)? playerAdded,
    TResult Function(TrainingPlayerRemoved value)? playerRemoved,
    TResult Function(TrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(TrainingGameStarted value)? gameStarted,
    TResult Function(TrainingGameReceived value)? gameReceived,
    required TResult orElse(),
  }) {
    if (playerRemoved != null) {
      return playerRemoved(this);
    }
    return orElse();
  }
}

abstract class TrainingPlayerRemoved implements CreateTrainingEvent {
  const factory TrainingPlayerRemoved({required int index}) =
      _$TrainingPlayerRemoved;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrainingPlayerRemovedCopyWith<TrainingPlayerRemoved> get copyWith =>
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
    extends _$CreateTrainingEventCopyWithImpl<$Res>
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
    return 'CreateTrainingEvent.playerNameUpdated(index: $index, newName: $newName)';
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
    required TResult Function() gameCanceled,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function() gameStarted,
    required TResult Function(TrainingGameSnapshot gameSnapshot) gameReceived,
  }) {
    return playerNameUpdated(index, newName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function()? gameStarted,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameReceived,
  }) {
    return playerNameUpdated?.call(index, newName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function()? gameStarted,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameReceived,
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
    required TResult Function(TrainingGameCanceled value) gameCanceled,
    required TResult Function(TrainingPlayerReordered value) playerReordered,
    required TResult Function(TrainingPlayerAdded value) playerAdded,
    required TResult Function(TrainingPlayerRemoved value) playerRemoved,
    required TResult Function(TrainingPlayerNameUpdated value)
        playerNameUpdated,
    required TResult Function(TrainingGameStarted value) gameStarted,
    required TResult Function(TrainingGameReceived value) gameReceived,
  }) {
    return playerNameUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrainingGameCanceled value)? gameCanceled,
    TResult Function(TrainingPlayerReordered value)? playerReordered,
    TResult Function(TrainingPlayerAdded value)? playerAdded,
    TResult Function(TrainingPlayerRemoved value)? playerRemoved,
    TResult Function(TrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(TrainingGameStarted value)? gameStarted,
    TResult Function(TrainingGameReceived value)? gameReceived,
  }) {
    return playerNameUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrainingGameCanceled value)? gameCanceled,
    TResult Function(TrainingPlayerReordered value)? playerReordered,
    TResult Function(TrainingPlayerAdded value)? playerAdded,
    TResult Function(TrainingPlayerRemoved value)? playerRemoved,
    TResult Function(TrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(TrainingGameStarted value)? gameStarted,
    TResult Function(TrainingGameReceived value)? gameReceived,
    required TResult orElse(),
  }) {
    if (playerNameUpdated != null) {
      return playerNameUpdated(this);
    }
    return orElse();
  }
}

abstract class TrainingPlayerNameUpdated implements CreateTrainingEvent {
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
abstract class $TrainingGameStartedCopyWith<$Res> {
  factory $TrainingGameStartedCopyWith(
          TrainingGameStarted value, $Res Function(TrainingGameStarted) then) =
      _$TrainingGameStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$TrainingGameStartedCopyWithImpl<$Res>
    extends _$CreateTrainingEventCopyWithImpl<$Res>
    implements $TrainingGameStartedCopyWith<$Res> {
  _$TrainingGameStartedCopyWithImpl(
      TrainingGameStarted _value, $Res Function(TrainingGameStarted) _then)
      : super(_value, (v) => _then(v as TrainingGameStarted));

  @override
  TrainingGameStarted get _value => super._value as TrainingGameStarted;
}

/// @nodoc

class _$TrainingGameStarted implements TrainingGameStarted {
  const _$TrainingGameStarted();

  @override
  String toString() {
    return 'CreateTrainingEvent.gameStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TrainingGameStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameCanceled,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function() gameStarted,
    required TResult Function(TrainingGameSnapshot gameSnapshot) gameReceived,
  }) {
    return gameStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function()? gameStarted,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameReceived,
  }) {
    return gameStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function()? gameStarted,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameReceived,
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
    required TResult Function(TrainingGameCanceled value) gameCanceled,
    required TResult Function(TrainingPlayerReordered value) playerReordered,
    required TResult Function(TrainingPlayerAdded value) playerAdded,
    required TResult Function(TrainingPlayerRemoved value) playerRemoved,
    required TResult Function(TrainingPlayerNameUpdated value)
        playerNameUpdated,
    required TResult Function(TrainingGameStarted value) gameStarted,
    required TResult Function(TrainingGameReceived value) gameReceived,
  }) {
    return gameStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrainingGameCanceled value)? gameCanceled,
    TResult Function(TrainingPlayerReordered value)? playerReordered,
    TResult Function(TrainingPlayerAdded value)? playerAdded,
    TResult Function(TrainingPlayerRemoved value)? playerRemoved,
    TResult Function(TrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(TrainingGameStarted value)? gameStarted,
    TResult Function(TrainingGameReceived value)? gameReceived,
  }) {
    return gameStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrainingGameCanceled value)? gameCanceled,
    TResult Function(TrainingPlayerReordered value)? playerReordered,
    TResult Function(TrainingPlayerAdded value)? playerAdded,
    TResult Function(TrainingPlayerRemoved value)? playerRemoved,
    TResult Function(TrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(TrainingGameStarted value)? gameStarted,
    TResult Function(TrainingGameReceived value)? gameReceived,
    required TResult orElse(),
  }) {
    if (gameStarted != null) {
      return gameStarted(this);
    }
    return orElse();
  }
}

abstract class TrainingGameStarted implements CreateTrainingEvent {
  const factory TrainingGameStarted() = _$TrainingGameStarted;
}

/// @nodoc
abstract class $TrainingGameReceivedCopyWith<$Res> {
  factory $TrainingGameReceivedCopyWith(TrainingGameReceived value,
          $Res Function(TrainingGameReceived) then) =
      _$TrainingGameReceivedCopyWithImpl<$Res>;
  $Res call({TrainingGameSnapshot gameSnapshot});
}

/// @nodoc
class _$TrainingGameReceivedCopyWithImpl<$Res>
    extends _$CreateTrainingEventCopyWithImpl<$Res>
    implements $TrainingGameReceivedCopyWith<$Res> {
  _$TrainingGameReceivedCopyWithImpl(
      TrainingGameReceived _value, $Res Function(TrainingGameReceived) _then)
      : super(_value, (v) => _then(v as TrainingGameReceived));

  @override
  TrainingGameReceived get _value => super._value as TrainingGameReceived;

  @override
  $Res call({
    Object? gameSnapshot = freezed,
  }) {
    return _then(TrainingGameReceived(
      gameSnapshot: gameSnapshot == freezed
          ? _value.gameSnapshot
          : gameSnapshot // ignore: cast_nullable_to_non_nullable
              as TrainingGameSnapshot,
    ));
  }
}

/// @nodoc

class _$TrainingGameReceived implements TrainingGameReceived {
  const _$TrainingGameReceived({required this.gameSnapshot});

  @override
  final TrainingGameSnapshot gameSnapshot;

  @override
  String toString() {
    return 'CreateTrainingEvent.gameReceived(gameSnapshot: $gameSnapshot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TrainingGameReceived &&
            (identical(other.gameSnapshot, gameSnapshot) ||
                const DeepCollectionEquality()
                    .equals(other.gameSnapshot, gameSnapshot)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(gameSnapshot);

  @JsonKey(ignore: true)
  @override
  $TrainingGameReceivedCopyWith<TrainingGameReceived> get copyWith =>
      _$TrainingGameReceivedCopyWithImpl<TrainingGameReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameCanceled,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function() gameStarted,
    required TResult Function(TrainingGameSnapshot gameSnapshot) gameReceived,
  }) {
    return gameReceived(gameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function()? gameStarted,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameReceived,
  }) {
    return gameReceived?.call(gameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function()? gameStarted,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameReceived,
    required TResult orElse(),
  }) {
    if (gameReceived != null) {
      return gameReceived(gameSnapshot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrainingGameCanceled value) gameCanceled,
    required TResult Function(TrainingPlayerReordered value) playerReordered,
    required TResult Function(TrainingPlayerAdded value) playerAdded,
    required TResult Function(TrainingPlayerRemoved value) playerRemoved,
    required TResult Function(TrainingPlayerNameUpdated value)
        playerNameUpdated,
    required TResult Function(TrainingGameStarted value) gameStarted,
    required TResult Function(TrainingGameReceived value) gameReceived,
  }) {
    return gameReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrainingGameCanceled value)? gameCanceled,
    TResult Function(TrainingPlayerReordered value)? playerReordered,
    TResult Function(TrainingPlayerAdded value)? playerAdded,
    TResult Function(TrainingPlayerRemoved value)? playerRemoved,
    TResult Function(TrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(TrainingGameStarted value)? gameStarted,
    TResult Function(TrainingGameReceived value)? gameReceived,
  }) {
    return gameReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrainingGameCanceled value)? gameCanceled,
    TResult Function(TrainingPlayerReordered value)? playerReordered,
    TResult Function(TrainingPlayerAdded value)? playerAdded,
    TResult Function(TrainingPlayerRemoved value)? playerRemoved,
    TResult Function(TrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(TrainingGameStarted value)? gameStarted,
    TResult Function(TrainingGameReceived value)? gameReceived,
    required TResult orElse(),
  }) {
    if (gameReceived != null) {
      return gameReceived(this);
    }
    return orElse();
  }
}

abstract class TrainingGameReceived implements CreateTrainingEvent {
  const factory TrainingGameReceived(
      {required TrainingGameSnapshot gameSnapshot}) = _$TrainingGameReceived;

  TrainingGameSnapshot get gameSnapshot => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrainingGameReceivedCopyWith<TrainingGameReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CreateTrainingStateTearOff {
  const _$CreateTrainingStateTearOff();

  CreateTrainingInitial initial({required TrainingGameSnapshot gameSnapshot}) {
    return CreateTrainingInitial(
      gameSnapshot: gameSnapshot,
    );
  }
}

/// @nodoc
const $CreateTrainingState = _$CreateTrainingStateTearOff();

/// @nodoc
mixin _$CreateTrainingState {
  TrainingGameSnapshot get gameSnapshot => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TrainingGameSnapshot gameSnapshot) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TrainingGameSnapshot gameSnapshot)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TrainingGameSnapshot gameSnapshot)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateTrainingInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateTrainingInitial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateTrainingInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateTrainingStateCopyWith<CreateTrainingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTrainingStateCopyWith<$Res> {
  factory $CreateTrainingStateCopyWith(
          CreateTrainingState value, $Res Function(CreateTrainingState) then) =
      _$CreateTrainingStateCopyWithImpl<$Res>;
  $Res call({TrainingGameSnapshot gameSnapshot});
}

/// @nodoc
class _$CreateTrainingStateCopyWithImpl<$Res>
    implements $CreateTrainingStateCopyWith<$Res> {
  _$CreateTrainingStateCopyWithImpl(this._value, this._then);

  final CreateTrainingState _value;
  // ignore: unused_field
  final $Res Function(CreateTrainingState) _then;

  @override
  $Res call({
    Object? gameSnapshot = freezed,
  }) {
    return _then(_value.copyWith(
      gameSnapshot: gameSnapshot == freezed
          ? _value.gameSnapshot
          : gameSnapshot // ignore: cast_nullable_to_non_nullable
              as TrainingGameSnapshot,
    ));
  }
}

/// @nodoc
abstract class $CreateTrainingInitialCopyWith<$Res>
    implements $CreateTrainingStateCopyWith<$Res> {
  factory $CreateTrainingInitialCopyWith(CreateTrainingInitial value,
          $Res Function(CreateTrainingInitial) then) =
      _$CreateTrainingInitialCopyWithImpl<$Res>;
  @override
  $Res call({TrainingGameSnapshot gameSnapshot});
}

/// @nodoc
class _$CreateTrainingInitialCopyWithImpl<$Res>
    extends _$CreateTrainingStateCopyWithImpl<$Res>
    implements $CreateTrainingInitialCopyWith<$Res> {
  _$CreateTrainingInitialCopyWithImpl(
      CreateTrainingInitial _value, $Res Function(CreateTrainingInitial) _then)
      : super(_value, (v) => _then(v as CreateTrainingInitial));

  @override
  CreateTrainingInitial get _value => super._value as CreateTrainingInitial;

  @override
  $Res call({
    Object? gameSnapshot = freezed,
  }) {
    return _then(CreateTrainingInitial(
      gameSnapshot: gameSnapshot == freezed
          ? _value.gameSnapshot
          : gameSnapshot // ignore: cast_nullable_to_non_nullable
              as TrainingGameSnapshot,
    ));
  }
}

/// @nodoc

class _$CreateTrainingInitial implements CreateTrainingInitial {
  const _$CreateTrainingInitial({required this.gameSnapshot});

  @override
  final TrainingGameSnapshot gameSnapshot;

  @override
  String toString() {
    return 'CreateTrainingState.initial(gameSnapshot: $gameSnapshot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateTrainingInitial &&
            (identical(other.gameSnapshot, gameSnapshot) ||
                const DeepCollectionEquality()
                    .equals(other.gameSnapshot, gameSnapshot)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(gameSnapshot);

  @JsonKey(ignore: true)
  @override
  $CreateTrainingInitialCopyWith<CreateTrainingInitial> get copyWith =>
      _$CreateTrainingInitialCopyWithImpl<CreateTrainingInitial>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TrainingGameSnapshot gameSnapshot) initial,
  }) {
    return initial(gameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TrainingGameSnapshot gameSnapshot)? initial,
  }) {
    return initial?.call(gameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TrainingGameSnapshot gameSnapshot)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(gameSnapshot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateTrainingInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateTrainingInitial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateTrainingInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CreateTrainingInitial implements CreateTrainingState {
  const factory CreateTrainingInitial(
      {required TrainingGameSnapshot gameSnapshot}) = _$CreateTrainingInitial;

  @override
  TrainingGameSnapshot get gameSnapshot => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $CreateTrainingInitialCopyWith<CreateTrainingInitial> get copyWith =>
      throw _privateConstructorUsedError;
}
