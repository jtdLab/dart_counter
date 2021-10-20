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

  CreateTrainingGameCreated gameCreated() {
    return const CreateTrainingGameCreated();
  }

  CreateTrainingGameCanceled gameCanceled() {
    return const CreateTrainingGameCanceled();
  }

  CreateTrainingPlayerReordered playerReordered(
      {required int oldIndex, required int newIndex}) {
    return CreateTrainingPlayerReordered(
      oldIndex: oldIndex,
      newIndex: newIndex,
    );
  }

  CreateTrainingPlayerAdded playerAdded() {
    return const CreateTrainingPlayerAdded();
  }

  CreateTrainingPlayerRemoved playerRemoved({required int index}) {
    return CreateTrainingPlayerRemoved(
      index: index,
    );
  }

  CreateTrainingPlayerNameUpdated playerNameUpdated(
      {required int index, required String newName}) {
    return CreateTrainingPlayerNameUpdated(
      index: index,
      newName: newName,
    );
  }

  CreateTrainingTypeUpdated typeUpdated({required Type newType}) {
    return CreateTrainingTypeUpdated(
      newType: newType,
    );
  }

  CreateTrainingGameStarted gameStarted() {
    return const CreateTrainingGameStarted();
  }

  CreateTrainingGameReceived gameReceived(
      {required TrainingGameSnapshot gameSnapshot}) {
    return CreateTrainingGameReceived(
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
    required TResult Function() gameCreated,
    required TResult Function() gameCanceled,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(Type newType) typeUpdated,
    required TResult Function() gameStarted,
    required TResult Function(TrainingGameSnapshot gameSnapshot) gameReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCreated,
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCreated,
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateTrainingGameCreated value) gameCreated,
    required TResult Function(CreateTrainingGameCanceled value) gameCanceled,
    required TResult Function(CreateTrainingPlayerReordered value)
        playerReordered,
    required TResult Function(CreateTrainingPlayerAdded value) playerAdded,
    required TResult Function(CreateTrainingPlayerRemoved value) playerRemoved,
    required TResult Function(CreateTrainingPlayerNameUpdated value)
        playerNameUpdated,
    required TResult Function(CreateTrainingTypeUpdated value) typeUpdated,
    required TResult Function(CreateTrainingGameStarted value) gameStarted,
    required TResult Function(CreateTrainingGameReceived value) gameReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateTrainingGameCreated value)? gameCreated,
    TResult Function(CreateTrainingGameCanceled value)? gameCanceled,
    TResult Function(CreateTrainingPlayerReordered value)? playerReordered,
    TResult Function(CreateTrainingPlayerAdded value)? playerAdded,
    TResult Function(CreateTrainingPlayerRemoved value)? playerRemoved,
    TResult Function(CreateTrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(CreateTrainingTypeUpdated value)? typeUpdated,
    TResult Function(CreateTrainingGameStarted value)? gameStarted,
    TResult Function(CreateTrainingGameReceived value)? gameReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateTrainingGameCreated value)? gameCreated,
    TResult Function(CreateTrainingGameCanceled value)? gameCanceled,
    TResult Function(CreateTrainingPlayerReordered value)? playerReordered,
    TResult Function(CreateTrainingPlayerAdded value)? playerAdded,
    TResult Function(CreateTrainingPlayerRemoved value)? playerRemoved,
    TResult Function(CreateTrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(CreateTrainingTypeUpdated value)? typeUpdated,
    TResult Function(CreateTrainingGameStarted value)? gameStarted,
    TResult Function(CreateTrainingGameReceived value)? gameReceived,
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
abstract class $CreateTrainingGameCreatedCopyWith<$Res> {
  factory $CreateTrainingGameCreatedCopyWith(CreateTrainingGameCreated value,
          $Res Function(CreateTrainingGameCreated) then) =
      _$CreateTrainingGameCreatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateTrainingGameCreatedCopyWithImpl<$Res>
    extends _$CreateTrainingEventCopyWithImpl<$Res>
    implements $CreateTrainingGameCreatedCopyWith<$Res> {
  _$CreateTrainingGameCreatedCopyWithImpl(CreateTrainingGameCreated _value,
      $Res Function(CreateTrainingGameCreated) _then)
      : super(_value, (v) => _then(v as CreateTrainingGameCreated));

  @override
  CreateTrainingGameCreated get _value =>
      super._value as CreateTrainingGameCreated;
}

/// @nodoc

class _$CreateTrainingGameCreated implements CreateTrainingGameCreated {
  const _$CreateTrainingGameCreated();

  @override
  String toString() {
    return 'CreateTrainingEvent.gameCreated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CreateTrainingGameCreated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameCreated,
    required TResult Function() gameCanceled,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(Type newType) typeUpdated,
    required TResult Function() gameStarted,
    required TResult Function(TrainingGameSnapshot gameSnapshot) gameReceived,
  }) {
    return gameCreated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCreated,
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameReceived,
  }) {
    return gameCreated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCreated,
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameReceived,
    required TResult orElse(),
  }) {
    if (gameCreated != null) {
      return gameCreated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateTrainingGameCreated value) gameCreated,
    required TResult Function(CreateTrainingGameCanceled value) gameCanceled,
    required TResult Function(CreateTrainingPlayerReordered value)
        playerReordered,
    required TResult Function(CreateTrainingPlayerAdded value) playerAdded,
    required TResult Function(CreateTrainingPlayerRemoved value) playerRemoved,
    required TResult Function(CreateTrainingPlayerNameUpdated value)
        playerNameUpdated,
    required TResult Function(CreateTrainingTypeUpdated value) typeUpdated,
    required TResult Function(CreateTrainingGameStarted value) gameStarted,
    required TResult Function(CreateTrainingGameReceived value) gameReceived,
  }) {
    return gameCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateTrainingGameCreated value)? gameCreated,
    TResult Function(CreateTrainingGameCanceled value)? gameCanceled,
    TResult Function(CreateTrainingPlayerReordered value)? playerReordered,
    TResult Function(CreateTrainingPlayerAdded value)? playerAdded,
    TResult Function(CreateTrainingPlayerRemoved value)? playerRemoved,
    TResult Function(CreateTrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(CreateTrainingTypeUpdated value)? typeUpdated,
    TResult Function(CreateTrainingGameStarted value)? gameStarted,
    TResult Function(CreateTrainingGameReceived value)? gameReceived,
  }) {
    return gameCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateTrainingGameCreated value)? gameCreated,
    TResult Function(CreateTrainingGameCanceled value)? gameCanceled,
    TResult Function(CreateTrainingPlayerReordered value)? playerReordered,
    TResult Function(CreateTrainingPlayerAdded value)? playerAdded,
    TResult Function(CreateTrainingPlayerRemoved value)? playerRemoved,
    TResult Function(CreateTrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(CreateTrainingTypeUpdated value)? typeUpdated,
    TResult Function(CreateTrainingGameStarted value)? gameStarted,
    TResult Function(CreateTrainingGameReceived value)? gameReceived,
    required TResult orElse(),
  }) {
    if (gameCreated != null) {
      return gameCreated(this);
    }
    return orElse();
  }
}

abstract class CreateTrainingGameCreated implements CreateTrainingEvent {
  const factory CreateTrainingGameCreated() = _$CreateTrainingGameCreated;
}

/// @nodoc
abstract class $CreateTrainingGameCanceledCopyWith<$Res> {
  factory $CreateTrainingGameCanceledCopyWith(CreateTrainingGameCanceled value,
          $Res Function(CreateTrainingGameCanceled) then) =
      _$CreateTrainingGameCanceledCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateTrainingGameCanceledCopyWithImpl<$Res>
    extends _$CreateTrainingEventCopyWithImpl<$Res>
    implements $CreateTrainingGameCanceledCopyWith<$Res> {
  _$CreateTrainingGameCanceledCopyWithImpl(CreateTrainingGameCanceled _value,
      $Res Function(CreateTrainingGameCanceled) _then)
      : super(_value, (v) => _then(v as CreateTrainingGameCanceled));

  @override
  CreateTrainingGameCanceled get _value =>
      super._value as CreateTrainingGameCanceled;
}

/// @nodoc

class _$CreateTrainingGameCanceled implements CreateTrainingGameCanceled {
  const _$CreateTrainingGameCanceled();

  @override
  String toString() {
    return 'CreateTrainingEvent.gameCanceled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CreateTrainingGameCanceled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameCreated,
    required TResult Function() gameCanceled,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(Type newType) typeUpdated,
    required TResult Function() gameStarted,
    required TResult Function(TrainingGameSnapshot gameSnapshot) gameReceived,
  }) {
    return gameCanceled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCreated,
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameReceived,
  }) {
    return gameCanceled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCreated,
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeUpdated,
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
    required TResult Function(CreateTrainingGameCreated value) gameCreated,
    required TResult Function(CreateTrainingGameCanceled value) gameCanceled,
    required TResult Function(CreateTrainingPlayerReordered value)
        playerReordered,
    required TResult Function(CreateTrainingPlayerAdded value) playerAdded,
    required TResult Function(CreateTrainingPlayerRemoved value) playerRemoved,
    required TResult Function(CreateTrainingPlayerNameUpdated value)
        playerNameUpdated,
    required TResult Function(CreateTrainingTypeUpdated value) typeUpdated,
    required TResult Function(CreateTrainingGameStarted value) gameStarted,
    required TResult Function(CreateTrainingGameReceived value) gameReceived,
  }) {
    return gameCanceled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateTrainingGameCreated value)? gameCreated,
    TResult Function(CreateTrainingGameCanceled value)? gameCanceled,
    TResult Function(CreateTrainingPlayerReordered value)? playerReordered,
    TResult Function(CreateTrainingPlayerAdded value)? playerAdded,
    TResult Function(CreateTrainingPlayerRemoved value)? playerRemoved,
    TResult Function(CreateTrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(CreateTrainingTypeUpdated value)? typeUpdated,
    TResult Function(CreateTrainingGameStarted value)? gameStarted,
    TResult Function(CreateTrainingGameReceived value)? gameReceived,
  }) {
    return gameCanceled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateTrainingGameCreated value)? gameCreated,
    TResult Function(CreateTrainingGameCanceled value)? gameCanceled,
    TResult Function(CreateTrainingPlayerReordered value)? playerReordered,
    TResult Function(CreateTrainingPlayerAdded value)? playerAdded,
    TResult Function(CreateTrainingPlayerRemoved value)? playerRemoved,
    TResult Function(CreateTrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(CreateTrainingTypeUpdated value)? typeUpdated,
    TResult Function(CreateTrainingGameStarted value)? gameStarted,
    TResult Function(CreateTrainingGameReceived value)? gameReceived,
    required TResult orElse(),
  }) {
    if (gameCanceled != null) {
      return gameCanceled(this);
    }
    return orElse();
  }
}

abstract class CreateTrainingGameCanceled implements CreateTrainingEvent {
  const factory CreateTrainingGameCanceled() = _$CreateTrainingGameCanceled;
}

/// @nodoc
abstract class $CreateTrainingPlayerReorderedCopyWith<$Res> {
  factory $CreateTrainingPlayerReorderedCopyWith(
          CreateTrainingPlayerReordered value,
          $Res Function(CreateTrainingPlayerReordered) then) =
      _$CreateTrainingPlayerReorderedCopyWithImpl<$Res>;
  $Res call({int oldIndex, int newIndex});
}

/// @nodoc
class _$CreateTrainingPlayerReorderedCopyWithImpl<$Res>
    extends _$CreateTrainingEventCopyWithImpl<$Res>
    implements $CreateTrainingPlayerReorderedCopyWith<$Res> {
  _$CreateTrainingPlayerReorderedCopyWithImpl(
      CreateTrainingPlayerReordered _value,
      $Res Function(CreateTrainingPlayerReordered) _then)
      : super(_value, (v) => _then(v as CreateTrainingPlayerReordered));

  @override
  CreateTrainingPlayerReordered get _value =>
      super._value as CreateTrainingPlayerReordered;

  @override
  $Res call({
    Object? oldIndex = freezed,
    Object? newIndex = freezed,
  }) {
    return _then(CreateTrainingPlayerReordered(
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

class _$CreateTrainingPlayerReordered implements CreateTrainingPlayerReordered {
  const _$CreateTrainingPlayerReordered(
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
        (other is CreateTrainingPlayerReordered &&
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
  $CreateTrainingPlayerReorderedCopyWith<CreateTrainingPlayerReordered>
      get copyWith => _$CreateTrainingPlayerReorderedCopyWithImpl<
          CreateTrainingPlayerReordered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameCreated,
    required TResult Function() gameCanceled,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(Type newType) typeUpdated,
    required TResult Function() gameStarted,
    required TResult Function(TrainingGameSnapshot gameSnapshot) gameReceived,
  }) {
    return playerReordered(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCreated,
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameReceived,
  }) {
    return playerReordered?.call(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCreated,
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeUpdated,
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
    required TResult Function(CreateTrainingGameCreated value) gameCreated,
    required TResult Function(CreateTrainingGameCanceled value) gameCanceled,
    required TResult Function(CreateTrainingPlayerReordered value)
        playerReordered,
    required TResult Function(CreateTrainingPlayerAdded value) playerAdded,
    required TResult Function(CreateTrainingPlayerRemoved value) playerRemoved,
    required TResult Function(CreateTrainingPlayerNameUpdated value)
        playerNameUpdated,
    required TResult Function(CreateTrainingTypeUpdated value) typeUpdated,
    required TResult Function(CreateTrainingGameStarted value) gameStarted,
    required TResult Function(CreateTrainingGameReceived value) gameReceived,
  }) {
    return playerReordered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateTrainingGameCreated value)? gameCreated,
    TResult Function(CreateTrainingGameCanceled value)? gameCanceled,
    TResult Function(CreateTrainingPlayerReordered value)? playerReordered,
    TResult Function(CreateTrainingPlayerAdded value)? playerAdded,
    TResult Function(CreateTrainingPlayerRemoved value)? playerRemoved,
    TResult Function(CreateTrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(CreateTrainingTypeUpdated value)? typeUpdated,
    TResult Function(CreateTrainingGameStarted value)? gameStarted,
    TResult Function(CreateTrainingGameReceived value)? gameReceived,
  }) {
    return playerReordered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateTrainingGameCreated value)? gameCreated,
    TResult Function(CreateTrainingGameCanceled value)? gameCanceled,
    TResult Function(CreateTrainingPlayerReordered value)? playerReordered,
    TResult Function(CreateTrainingPlayerAdded value)? playerAdded,
    TResult Function(CreateTrainingPlayerRemoved value)? playerRemoved,
    TResult Function(CreateTrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(CreateTrainingTypeUpdated value)? typeUpdated,
    TResult Function(CreateTrainingGameStarted value)? gameStarted,
    TResult Function(CreateTrainingGameReceived value)? gameReceived,
    required TResult orElse(),
  }) {
    if (playerReordered != null) {
      return playerReordered(this);
    }
    return orElse();
  }
}

abstract class CreateTrainingPlayerReordered implements CreateTrainingEvent {
  const factory CreateTrainingPlayerReordered(
      {required int oldIndex,
      required int newIndex}) = _$CreateTrainingPlayerReordered;

  int get oldIndex => throw _privateConstructorUsedError;
  int get newIndex => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateTrainingPlayerReorderedCopyWith<CreateTrainingPlayerReordered>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTrainingPlayerAddedCopyWith<$Res> {
  factory $CreateTrainingPlayerAddedCopyWith(CreateTrainingPlayerAdded value,
          $Res Function(CreateTrainingPlayerAdded) then) =
      _$CreateTrainingPlayerAddedCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateTrainingPlayerAddedCopyWithImpl<$Res>
    extends _$CreateTrainingEventCopyWithImpl<$Res>
    implements $CreateTrainingPlayerAddedCopyWith<$Res> {
  _$CreateTrainingPlayerAddedCopyWithImpl(CreateTrainingPlayerAdded _value,
      $Res Function(CreateTrainingPlayerAdded) _then)
      : super(_value, (v) => _then(v as CreateTrainingPlayerAdded));

  @override
  CreateTrainingPlayerAdded get _value =>
      super._value as CreateTrainingPlayerAdded;
}

/// @nodoc

class _$CreateTrainingPlayerAdded implements CreateTrainingPlayerAdded {
  const _$CreateTrainingPlayerAdded();

  @override
  String toString() {
    return 'CreateTrainingEvent.playerAdded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CreateTrainingPlayerAdded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameCreated,
    required TResult Function() gameCanceled,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(Type newType) typeUpdated,
    required TResult Function() gameStarted,
    required TResult Function(TrainingGameSnapshot gameSnapshot) gameReceived,
  }) {
    return playerAdded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCreated,
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameReceived,
  }) {
    return playerAdded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCreated,
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeUpdated,
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
    required TResult Function(CreateTrainingGameCreated value) gameCreated,
    required TResult Function(CreateTrainingGameCanceled value) gameCanceled,
    required TResult Function(CreateTrainingPlayerReordered value)
        playerReordered,
    required TResult Function(CreateTrainingPlayerAdded value) playerAdded,
    required TResult Function(CreateTrainingPlayerRemoved value) playerRemoved,
    required TResult Function(CreateTrainingPlayerNameUpdated value)
        playerNameUpdated,
    required TResult Function(CreateTrainingTypeUpdated value) typeUpdated,
    required TResult Function(CreateTrainingGameStarted value) gameStarted,
    required TResult Function(CreateTrainingGameReceived value) gameReceived,
  }) {
    return playerAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateTrainingGameCreated value)? gameCreated,
    TResult Function(CreateTrainingGameCanceled value)? gameCanceled,
    TResult Function(CreateTrainingPlayerReordered value)? playerReordered,
    TResult Function(CreateTrainingPlayerAdded value)? playerAdded,
    TResult Function(CreateTrainingPlayerRemoved value)? playerRemoved,
    TResult Function(CreateTrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(CreateTrainingTypeUpdated value)? typeUpdated,
    TResult Function(CreateTrainingGameStarted value)? gameStarted,
    TResult Function(CreateTrainingGameReceived value)? gameReceived,
  }) {
    return playerAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateTrainingGameCreated value)? gameCreated,
    TResult Function(CreateTrainingGameCanceled value)? gameCanceled,
    TResult Function(CreateTrainingPlayerReordered value)? playerReordered,
    TResult Function(CreateTrainingPlayerAdded value)? playerAdded,
    TResult Function(CreateTrainingPlayerRemoved value)? playerRemoved,
    TResult Function(CreateTrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(CreateTrainingTypeUpdated value)? typeUpdated,
    TResult Function(CreateTrainingGameStarted value)? gameStarted,
    TResult Function(CreateTrainingGameReceived value)? gameReceived,
    required TResult orElse(),
  }) {
    if (playerAdded != null) {
      return playerAdded(this);
    }
    return orElse();
  }
}

abstract class CreateTrainingPlayerAdded implements CreateTrainingEvent {
  const factory CreateTrainingPlayerAdded() = _$CreateTrainingPlayerAdded;
}

/// @nodoc
abstract class $CreateTrainingPlayerRemovedCopyWith<$Res> {
  factory $CreateTrainingPlayerRemovedCopyWith(
          CreateTrainingPlayerRemoved value,
          $Res Function(CreateTrainingPlayerRemoved) then) =
      _$CreateTrainingPlayerRemovedCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$CreateTrainingPlayerRemovedCopyWithImpl<$Res>
    extends _$CreateTrainingEventCopyWithImpl<$Res>
    implements $CreateTrainingPlayerRemovedCopyWith<$Res> {
  _$CreateTrainingPlayerRemovedCopyWithImpl(CreateTrainingPlayerRemoved _value,
      $Res Function(CreateTrainingPlayerRemoved) _then)
      : super(_value, (v) => _then(v as CreateTrainingPlayerRemoved));

  @override
  CreateTrainingPlayerRemoved get _value =>
      super._value as CreateTrainingPlayerRemoved;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(CreateTrainingPlayerRemoved(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CreateTrainingPlayerRemoved implements CreateTrainingPlayerRemoved {
  const _$CreateTrainingPlayerRemoved({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'CreateTrainingEvent.playerRemoved(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateTrainingPlayerRemoved &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  $CreateTrainingPlayerRemovedCopyWith<CreateTrainingPlayerRemoved>
      get copyWith => _$CreateTrainingPlayerRemovedCopyWithImpl<
          CreateTrainingPlayerRemoved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameCreated,
    required TResult Function() gameCanceled,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(Type newType) typeUpdated,
    required TResult Function() gameStarted,
    required TResult Function(TrainingGameSnapshot gameSnapshot) gameReceived,
  }) {
    return playerRemoved(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCreated,
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameReceived,
  }) {
    return playerRemoved?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCreated,
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeUpdated,
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
    required TResult Function(CreateTrainingGameCreated value) gameCreated,
    required TResult Function(CreateTrainingGameCanceled value) gameCanceled,
    required TResult Function(CreateTrainingPlayerReordered value)
        playerReordered,
    required TResult Function(CreateTrainingPlayerAdded value) playerAdded,
    required TResult Function(CreateTrainingPlayerRemoved value) playerRemoved,
    required TResult Function(CreateTrainingPlayerNameUpdated value)
        playerNameUpdated,
    required TResult Function(CreateTrainingTypeUpdated value) typeUpdated,
    required TResult Function(CreateTrainingGameStarted value) gameStarted,
    required TResult Function(CreateTrainingGameReceived value) gameReceived,
  }) {
    return playerRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateTrainingGameCreated value)? gameCreated,
    TResult Function(CreateTrainingGameCanceled value)? gameCanceled,
    TResult Function(CreateTrainingPlayerReordered value)? playerReordered,
    TResult Function(CreateTrainingPlayerAdded value)? playerAdded,
    TResult Function(CreateTrainingPlayerRemoved value)? playerRemoved,
    TResult Function(CreateTrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(CreateTrainingTypeUpdated value)? typeUpdated,
    TResult Function(CreateTrainingGameStarted value)? gameStarted,
    TResult Function(CreateTrainingGameReceived value)? gameReceived,
  }) {
    return playerRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateTrainingGameCreated value)? gameCreated,
    TResult Function(CreateTrainingGameCanceled value)? gameCanceled,
    TResult Function(CreateTrainingPlayerReordered value)? playerReordered,
    TResult Function(CreateTrainingPlayerAdded value)? playerAdded,
    TResult Function(CreateTrainingPlayerRemoved value)? playerRemoved,
    TResult Function(CreateTrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(CreateTrainingTypeUpdated value)? typeUpdated,
    TResult Function(CreateTrainingGameStarted value)? gameStarted,
    TResult Function(CreateTrainingGameReceived value)? gameReceived,
    required TResult orElse(),
  }) {
    if (playerRemoved != null) {
      return playerRemoved(this);
    }
    return orElse();
  }
}

abstract class CreateTrainingPlayerRemoved implements CreateTrainingEvent {
  const factory CreateTrainingPlayerRemoved({required int index}) =
      _$CreateTrainingPlayerRemoved;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateTrainingPlayerRemovedCopyWith<CreateTrainingPlayerRemoved>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTrainingPlayerNameUpdatedCopyWith<$Res> {
  factory $CreateTrainingPlayerNameUpdatedCopyWith(
          CreateTrainingPlayerNameUpdated value,
          $Res Function(CreateTrainingPlayerNameUpdated) then) =
      _$CreateTrainingPlayerNameUpdatedCopyWithImpl<$Res>;
  $Res call({int index, String newName});
}

/// @nodoc
class _$CreateTrainingPlayerNameUpdatedCopyWithImpl<$Res>
    extends _$CreateTrainingEventCopyWithImpl<$Res>
    implements $CreateTrainingPlayerNameUpdatedCopyWith<$Res> {
  _$CreateTrainingPlayerNameUpdatedCopyWithImpl(
      CreateTrainingPlayerNameUpdated _value,
      $Res Function(CreateTrainingPlayerNameUpdated) _then)
      : super(_value, (v) => _then(v as CreateTrainingPlayerNameUpdated));

  @override
  CreateTrainingPlayerNameUpdated get _value =>
      super._value as CreateTrainingPlayerNameUpdated;

  @override
  $Res call({
    Object? index = freezed,
    Object? newName = freezed,
  }) {
    return _then(CreateTrainingPlayerNameUpdated(
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

class _$CreateTrainingPlayerNameUpdated
    implements CreateTrainingPlayerNameUpdated {
  const _$CreateTrainingPlayerNameUpdated(
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
        (other is CreateTrainingPlayerNameUpdated &&
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
  $CreateTrainingPlayerNameUpdatedCopyWith<CreateTrainingPlayerNameUpdated>
      get copyWith => _$CreateTrainingPlayerNameUpdatedCopyWithImpl<
          CreateTrainingPlayerNameUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameCreated,
    required TResult Function() gameCanceled,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(Type newType) typeUpdated,
    required TResult Function() gameStarted,
    required TResult Function(TrainingGameSnapshot gameSnapshot) gameReceived,
  }) {
    return playerNameUpdated(index, newName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCreated,
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameReceived,
  }) {
    return playerNameUpdated?.call(index, newName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCreated,
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeUpdated,
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
    required TResult Function(CreateTrainingGameCreated value) gameCreated,
    required TResult Function(CreateTrainingGameCanceled value) gameCanceled,
    required TResult Function(CreateTrainingPlayerReordered value)
        playerReordered,
    required TResult Function(CreateTrainingPlayerAdded value) playerAdded,
    required TResult Function(CreateTrainingPlayerRemoved value) playerRemoved,
    required TResult Function(CreateTrainingPlayerNameUpdated value)
        playerNameUpdated,
    required TResult Function(CreateTrainingTypeUpdated value) typeUpdated,
    required TResult Function(CreateTrainingGameStarted value) gameStarted,
    required TResult Function(CreateTrainingGameReceived value) gameReceived,
  }) {
    return playerNameUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateTrainingGameCreated value)? gameCreated,
    TResult Function(CreateTrainingGameCanceled value)? gameCanceled,
    TResult Function(CreateTrainingPlayerReordered value)? playerReordered,
    TResult Function(CreateTrainingPlayerAdded value)? playerAdded,
    TResult Function(CreateTrainingPlayerRemoved value)? playerRemoved,
    TResult Function(CreateTrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(CreateTrainingTypeUpdated value)? typeUpdated,
    TResult Function(CreateTrainingGameStarted value)? gameStarted,
    TResult Function(CreateTrainingGameReceived value)? gameReceived,
  }) {
    return playerNameUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateTrainingGameCreated value)? gameCreated,
    TResult Function(CreateTrainingGameCanceled value)? gameCanceled,
    TResult Function(CreateTrainingPlayerReordered value)? playerReordered,
    TResult Function(CreateTrainingPlayerAdded value)? playerAdded,
    TResult Function(CreateTrainingPlayerRemoved value)? playerRemoved,
    TResult Function(CreateTrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(CreateTrainingTypeUpdated value)? typeUpdated,
    TResult Function(CreateTrainingGameStarted value)? gameStarted,
    TResult Function(CreateTrainingGameReceived value)? gameReceived,
    required TResult orElse(),
  }) {
    if (playerNameUpdated != null) {
      return playerNameUpdated(this);
    }
    return orElse();
  }
}

abstract class CreateTrainingPlayerNameUpdated implements CreateTrainingEvent {
  const factory CreateTrainingPlayerNameUpdated(
      {required int index,
      required String newName}) = _$CreateTrainingPlayerNameUpdated;

  int get index => throw _privateConstructorUsedError;
  String get newName => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateTrainingPlayerNameUpdatedCopyWith<CreateTrainingPlayerNameUpdated>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTrainingTypeUpdatedCopyWith<$Res> {
  factory $CreateTrainingTypeUpdatedCopyWith(CreateTrainingTypeUpdated value,
          $Res Function(CreateTrainingTypeUpdated) then) =
      _$CreateTrainingTypeUpdatedCopyWithImpl<$Res>;
  $Res call({Type newType});
}

/// @nodoc
class _$CreateTrainingTypeUpdatedCopyWithImpl<$Res>
    extends _$CreateTrainingEventCopyWithImpl<$Res>
    implements $CreateTrainingTypeUpdatedCopyWith<$Res> {
  _$CreateTrainingTypeUpdatedCopyWithImpl(CreateTrainingTypeUpdated _value,
      $Res Function(CreateTrainingTypeUpdated) _then)
      : super(_value, (v) => _then(v as CreateTrainingTypeUpdated));

  @override
  CreateTrainingTypeUpdated get _value =>
      super._value as CreateTrainingTypeUpdated;

  @override
  $Res call({
    Object? newType = freezed,
  }) {
    return _then(CreateTrainingTypeUpdated(
      newType: newType == freezed
          ? _value.newType
          : newType // ignore: cast_nullable_to_non_nullable
              as Type,
    ));
  }
}

/// @nodoc

class _$CreateTrainingTypeUpdated implements CreateTrainingTypeUpdated {
  const _$CreateTrainingTypeUpdated({required this.newType});

  @override
  final Type newType;

  @override
  String toString() {
    return 'CreateTrainingEvent.typeUpdated(newType: $newType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateTrainingTypeUpdated &&
            (identical(other.newType, newType) ||
                const DeepCollectionEquality().equals(other.newType, newType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newType);

  @JsonKey(ignore: true)
  @override
  $CreateTrainingTypeUpdatedCopyWith<CreateTrainingTypeUpdated> get copyWith =>
      _$CreateTrainingTypeUpdatedCopyWithImpl<CreateTrainingTypeUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameCreated,
    required TResult Function() gameCanceled,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(Type newType) typeUpdated,
    required TResult Function() gameStarted,
    required TResult Function(TrainingGameSnapshot gameSnapshot) gameReceived,
  }) {
    return typeUpdated(newType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCreated,
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameReceived,
  }) {
    return typeUpdated?.call(newType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCreated,
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameReceived,
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
    required TResult Function(CreateTrainingGameCreated value) gameCreated,
    required TResult Function(CreateTrainingGameCanceled value) gameCanceled,
    required TResult Function(CreateTrainingPlayerReordered value)
        playerReordered,
    required TResult Function(CreateTrainingPlayerAdded value) playerAdded,
    required TResult Function(CreateTrainingPlayerRemoved value) playerRemoved,
    required TResult Function(CreateTrainingPlayerNameUpdated value)
        playerNameUpdated,
    required TResult Function(CreateTrainingTypeUpdated value) typeUpdated,
    required TResult Function(CreateTrainingGameStarted value) gameStarted,
    required TResult Function(CreateTrainingGameReceived value) gameReceived,
  }) {
    return typeUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateTrainingGameCreated value)? gameCreated,
    TResult Function(CreateTrainingGameCanceled value)? gameCanceled,
    TResult Function(CreateTrainingPlayerReordered value)? playerReordered,
    TResult Function(CreateTrainingPlayerAdded value)? playerAdded,
    TResult Function(CreateTrainingPlayerRemoved value)? playerRemoved,
    TResult Function(CreateTrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(CreateTrainingTypeUpdated value)? typeUpdated,
    TResult Function(CreateTrainingGameStarted value)? gameStarted,
    TResult Function(CreateTrainingGameReceived value)? gameReceived,
  }) {
    return typeUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateTrainingGameCreated value)? gameCreated,
    TResult Function(CreateTrainingGameCanceled value)? gameCanceled,
    TResult Function(CreateTrainingPlayerReordered value)? playerReordered,
    TResult Function(CreateTrainingPlayerAdded value)? playerAdded,
    TResult Function(CreateTrainingPlayerRemoved value)? playerRemoved,
    TResult Function(CreateTrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(CreateTrainingTypeUpdated value)? typeUpdated,
    TResult Function(CreateTrainingGameStarted value)? gameStarted,
    TResult Function(CreateTrainingGameReceived value)? gameReceived,
    required TResult orElse(),
  }) {
    if (typeUpdated != null) {
      return typeUpdated(this);
    }
    return orElse();
  }
}

abstract class CreateTrainingTypeUpdated implements CreateTrainingEvent {
  const factory CreateTrainingTypeUpdated({required Type newType}) =
      _$CreateTrainingTypeUpdated;

  Type get newType => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateTrainingTypeUpdatedCopyWith<CreateTrainingTypeUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTrainingGameStartedCopyWith<$Res> {
  factory $CreateTrainingGameStartedCopyWith(CreateTrainingGameStarted value,
          $Res Function(CreateTrainingGameStarted) then) =
      _$CreateTrainingGameStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateTrainingGameStartedCopyWithImpl<$Res>
    extends _$CreateTrainingEventCopyWithImpl<$Res>
    implements $CreateTrainingGameStartedCopyWith<$Res> {
  _$CreateTrainingGameStartedCopyWithImpl(CreateTrainingGameStarted _value,
      $Res Function(CreateTrainingGameStarted) _then)
      : super(_value, (v) => _then(v as CreateTrainingGameStarted));

  @override
  CreateTrainingGameStarted get _value =>
      super._value as CreateTrainingGameStarted;
}

/// @nodoc

class _$CreateTrainingGameStarted implements CreateTrainingGameStarted {
  const _$CreateTrainingGameStarted();

  @override
  String toString() {
    return 'CreateTrainingEvent.gameStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CreateTrainingGameStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameCreated,
    required TResult Function() gameCanceled,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(Type newType) typeUpdated,
    required TResult Function() gameStarted,
    required TResult Function(TrainingGameSnapshot gameSnapshot) gameReceived,
  }) {
    return gameStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCreated,
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameReceived,
  }) {
    return gameStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCreated,
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeUpdated,
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
    required TResult Function(CreateTrainingGameCreated value) gameCreated,
    required TResult Function(CreateTrainingGameCanceled value) gameCanceled,
    required TResult Function(CreateTrainingPlayerReordered value)
        playerReordered,
    required TResult Function(CreateTrainingPlayerAdded value) playerAdded,
    required TResult Function(CreateTrainingPlayerRemoved value) playerRemoved,
    required TResult Function(CreateTrainingPlayerNameUpdated value)
        playerNameUpdated,
    required TResult Function(CreateTrainingTypeUpdated value) typeUpdated,
    required TResult Function(CreateTrainingGameStarted value) gameStarted,
    required TResult Function(CreateTrainingGameReceived value) gameReceived,
  }) {
    return gameStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateTrainingGameCreated value)? gameCreated,
    TResult Function(CreateTrainingGameCanceled value)? gameCanceled,
    TResult Function(CreateTrainingPlayerReordered value)? playerReordered,
    TResult Function(CreateTrainingPlayerAdded value)? playerAdded,
    TResult Function(CreateTrainingPlayerRemoved value)? playerRemoved,
    TResult Function(CreateTrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(CreateTrainingTypeUpdated value)? typeUpdated,
    TResult Function(CreateTrainingGameStarted value)? gameStarted,
    TResult Function(CreateTrainingGameReceived value)? gameReceived,
  }) {
    return gameStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateTrainingGameCreated value)? gameCreated,
    TResult Function(CreateTrainingGameCanceled value)? gameCanceled,
    TResult Function(CreateTrainingPlayerReordered value)? playerReordered,
    TResult Function(CreateTrainingPlayerAdded value)? playerAdded,
    TResult Function(CreateTrainingPlayerRemoved value)? playerRemoved,
    TResult Function(CreateTrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(CreateTrainingTypeUpdated value)? typeUpdated,
    TResult Function(CreateTrainingGameStarted value)? gameStarted,
    TResult Function(CreateTrainingGameReceived value)? gameReceived,
    required TResult orElse(),
  }) {
    if (gameStarted != null) {
      return gameStarted(this);
    }
    return orElse();
  }
}

abstract class CreateTrainingGameStarted implements CreateTrainingEvent {
  const factory CreateTrainingGameStarted() = _$CreateTrainingGameStarted;
}

/// @nodoc
abstract class $CreateTrainingGameReceivedCopyWith<$Res> {
  factory $CreateTrainingGameReceivedCopyWith(CreateTrainingGameReceived value,
          $Res Function(CreateTrainingGameReceived) then) =
      _$CreateTrainingGameReceivedCopyWithImpl<$Res>;
  $Res call({TrainingGameSnapshot gameSnapshot});
}

/// @nodoc
class _$CreateTrainingGameReceivedCopyWithImpl<$Res>
    extends _$CreateTrainingEventCopyWithImpl<$Res>
    implements $CreateTrainingGameReceivedCopyWith<$Res> {
  _$CreateTrainingGameReceivedCopyWithImpl(CreateTrainingGameReceived _value,
      $Res Function(CreateTrainingGameReceived) _then)
      : super(_value, (v) => _then(v as CreateTrainingGameReceived));

  @override
  CreateTrainingGameReceived get _value =>
      super._value as CreateTrainingGameReceived;

  @override
  $Res call({
    Object? gameSnapshot = freezed,
  }) {
    return _then(CreateTrainingGameReceived(
      gameSnapshot: gameSnapshot == freezed
          ? _value.gameSnapshot
          : gameSnapshot // ignore: cast_nullable_to_non_nullable
              as TrainingGameSnapshot,
    ));
  }
}

/// @nodoc

class _$CreateTrainingGameReceived implements CreateTrainingGameReceived {
  const _$CreateTrainingGameReceived({required this.gameSnapshot});

  @override
  final TrainingGameSnapshot gameSnapshot;

  @override
  String toString() {
    return 'CreateTrainingEvent.gameReceived(gameSnapshot: $gameSnapshot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateTrainingGameReceived &&
            (identical(other.gameSnapshot, gameSnapshot) ||
                const DeepCollectionEquality()
                    .equals(other.gameSnapshot, gameSnapshot)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(gameSnapshot);

  @JsonKey(ignore: true)
  @override
  $CreateTrainingGameReceivedCopyWith<CreateTrainingGameReceived>
      get copyWith =>
          _$CreateTrainingGameReceivedCopyWithImpl<CreateTrainingGameReceived>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameCreated,
    required TResult Function() gameCanceled,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(Type newType) typeUpdated,
    required TResult Function() gameStarted,
    required TResult Function(TrainingGameSnapshot gameSnapshot) gameReceived,
  }) {
    return gameReceived(gameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCreated,
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameReceived,
  }) {
    return gameReceived?.call(gameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCreated,
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(Type newType)? typeUpdated,
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
    required TResult Function(CreateTrainingGameCreated value) gameCreated,
    required TResult Function(CreateTrainingGameCanceled value) gameCanceled,
    required TResult Function(CreateTrainingPlayerReordered value)
        playerReordered,
    required TResult Function(CreateTrainingPlayerAdded value) playerAdded,
    required TResult Function(CreateTrainingPlayerRemoved value) playerRemoved,
    required TResult Function(CreateTrainingPlayerNameUpdated value)
        playerNameUpdated,
    required TResult Function(CreateTrainingTypeUpdated value) typeUpdated,
    required TResult Function(CreateTrainingGameStarted value) gameStarted,
    required TResult Function(CreateTrainingGameReceived value) gameReceived,
  }) {
    return gameReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateTrainingGameCreated value)? gameCreated,
    TResult Function(CreateTrainingGameCanceled value)? gameCanceled,
    TResult Function(CreateTrainingPlayerReordered value)? playerReordered,
    TResult Function(CreateTrainingPlayerAdded value)? playerAdded,
    TResult Function(CreateTrainingPlayerRemoved value)? playerRemoved,
    TResult Function(CreateTrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(CreateTrainingTypeUpdated value)? typeUpdated,
    TResult Function(CreateTrainingGameStarted value)? gameStarted,
    TResult Function(CreateTrainingGameReceived value)? gameReceived,
  }) {
    return gameReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateTrainingGameCreated value)? gameCreated,
    TResult Function(CreateTrainingGameCanceled value)? gameCanceled,
    TResult Function(CreateTrainingPlayerReordered value)? playerReordered,
    TResult Function(CreateTrainingPlayerAdded value)? playerAdded,
    TResult Function(CreateTrainingPlayerRemoved value)? playerRemoved,
    TResult Function(CreateTrainingPlayerNameUpdated value)? playerNameUpdated,
    TResult Function(CreateTrainingTypeUpdated value)? typeUpdated,
    TResult Function(CreateTrainingGameStarted value)? gameStarted,
    TResult Function(CreateTrainingGameReceived value)? gameReceived,
    required TResult orElse(),
  }) {
    if (gameReceived != null) {
      return gameReceived(this);
    }
    return orElse();
  }
}

abstract class CreateTrainingGameReceived implements CreateTrainingEvent {
  const factory CreateTrainingGameReceived(
          {required TrainingGameSnapshot gameSnapshot}) =
      _$CreateTrainingGameReceived;

  TrainingGameSnapshot get gameSnapshot => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateTrainingGameReceivedCopyWith<CreateTrainingGameReceived>
      get copyWith => throw _privateConstructorUsedError;
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
