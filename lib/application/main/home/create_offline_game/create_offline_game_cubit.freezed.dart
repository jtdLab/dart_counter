// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_offline_game_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateOfflineGameStateTearOff {
  const _$CreateOfflineGameStateTearOff();

  CreateOfflineGameInitial initial() {
    return const CreateOfflineGameInitial();
  }

  CreateOfflineGameSuccess success(
      {required OfflineGameSnapshot initialSnapshot}) {
    return CreateOfflineGameSuccess(
      initialSnapshot: initialSnapshot,
    );
  }
}

/// @nodoc
const $CreateOfflineGameState = _$CreateOfflineGameStateTearOff();

/// @nodoc
mixin _$CreateOfflineGameState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(OfflineGameSnapshot initialSnapshot) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OfflineGameSnapshot initialSnapshot)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OfflineGameSnapshot initialSnapshot)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateOfflineGameInitial value) initial,
    required TResult Function(CreateOfflineGameSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateOfflineGameInitial value)? initial,
    TResult Function(CreateOfflineGameSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateOfflineGameInitial value)? initial,
    TResult Function(CreateOfflineGameSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateOfflineGameStateCopyWith<$Res> {
  factory $CreateOfflineGameStateCopyWith(CreateOfflineGameState value,
          $Res Function(CreateOfflineGameState) then) =
      _$CreateOfflineGameStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateOfflineGameStateCopyWithImpl<$Res>
    implements $CreateOfflineGameStateCopyWith<$Res> {
  _$CreateOfflineGameStateCopyWithImpl(this._value, this._then);

  final CreateOfflineGameState _value;
  // ignore: unused_field
  final $Res Function(CreateOfflineGameState) _then;
}

/// @nodoc
abstract class $CreateOfflineGameInitialCopyWith<$Res> {
  factory $CreateOfflineGameInitialCopyWith(CreateOfflineGameInitial value,
          $Res Function(CreateOfflineGameInitial) then) =
      _$CreateOfflineGameInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateOfflineGameInitialCopyWithImpl<$Res>
    extends _$CreateOfflineGameStateCopyWithImpl<$Res>
    implements $CreateOfflineGameInitialCopyWith<$Res> {
  _$CreateOfflineGameInitialCopyWithImpl(CreateOfflineGameInitial _value,
      $Res Function(CreateOfflineGameInitial) _then)
      : super(_value, (v) => _then(v as CreateOfflineGameInitial));

  @override
  CreateOfflineGameInitial get _value =>
      super._value as CreateOfflineGameInitial;
}

/// @nodoc

class _$CreateOfflineGameInitial implements CreateOfflineGameInitial {
  const _$CreateOfflineGameInitial();

  @override
  String toString() {
    return 'CreateOfflineGameState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CreateOfflineGameInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(OfflineGameSnapshot initialSnapshot) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OfflineGameSnapshot initialSnapshot)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OfflineGameSnapshot initialSnapshot)? success,
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
    required TResult Function(CreateOfflineGameInitial value) initial,
    required TResult Function(CreateOfflineGameSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateOfflineGameInitial value)? initial,
    TResult Function(CreateOfflineGameSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateOfflineGameInitial value)? initial,
    TResult Function(CreateOfflineGameSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CreateOfflineGameInitial implements CreateOfflineGameState {
  const factory CreateOfflineGameInitial() = _$CreateOfflineGameInitial;
}

/// @nodoc
abstract class $CreateOfflineGameSuccessCopyWith<$Res> {
  factory $CreateOfflineGameSuccessCopyWith(CreateOfflineGameSuccess value,
          $Res Function(CreateOfflineGameSuccess) then) =
      _$CreateOfflineGameSuccessCopyWithImpl<$Res>;
  $Res call({OfflineGameSnapshot initialSnapshot});

  $OfflineGameSnapshotCopyWith<$Res> get initialSnapshot;
}

/// @nodoc
class _$CreateOfflineGameSuccessCopyWithImpl<$Res>
    extends _$CreateOfflineGameStateCopyWithImpl<$Res>
    implements $CreateOfflineGameSuccessCopyWith<$Res> {
  _$CreateOfflineGameSuccessCopyWithImpl(CreateOfflineGameSuccess _value,
      $Res Function(CreateOfflineGameSuccess) _then)
      : super(_value, (v) => _then(v as CreateOfflineGameSuccess));

  @override
  CreateOfflineGameSuccess get _value =>
      super._value as CreateOfflineGameSuccess;

  @override
  $Res call({
    Object? initialSnapshot = freezed,
  }) {
    return _then(CreateOfflineGameSuccess(
      initialSnapshot: initialSnapshot == freezed
          ? _value.initialSnapshot
          : initialSnapshot // ignore: cast_nullable_to_non_nullable
              as OfflineGameSnapshot,
    ));
  }

  @override
  $OfflineGameSnapshotCopyWith<$Res> get initialSnapshot {
    return $OfflineGameSnapshotCopyWith<$Res>(_value.initialSnapshot, (value) {
      return _then(_value.copyWith(initialSnapshot: value));
    });
  }
}

/// @nodoc

class _$CreateOfflineGameSuccess implements CreateOfflineGameSuccess {
  const _$CreateOfflineGameSuccess({required this.initialSnapshot});

  @override
  final OfflineGameSnapshot initialSnapshot;

  @override
  String toString() {
    return 'CreateOfflineGameState.success(initialSnapshot: $initialSnapshot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateOfflineGameSuccess &&
            const DeepCollectionEquality()
                .equals(other.initialSnapshot, initialSnapshot));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(initialSnapshot));

  @JsonKey(ignore: true)
  @override
  $CreateOfflineGameSuccessCopyWith<CreateOfflineGameSuccess> get copyWith =>
      _$CreateOfflineGameSuccessCopyWithImpl<CreateOfflineGameSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(OfflineGameSnapshot initialSnapshot) success,
  }) {
    return success(initialSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OfflineGameSnapshot initialSnapshot)? success,
  }) {
    return success?.call(initialSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OfflineGameSnapshot initialSnapshot)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(initialSnapshot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateOfflineGameInitial value) initial,
    required TResult Function(CreateOfflineGameSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateOfflineGameInitial value)? initial,
    TResult Function(CreateOfflineGameSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateOfflineGameInitial value)? initial,
    TResult Function(CreateOfflineGameSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class CreateOfflineGameSuccess implements CreateOfflineGameState {
  const factory CreateOfflineGameSuccess(
          {required OfflineGameSnapshot initialSnapshot}) =
      _$CreateOfflineGameSuccess;

  OfflineGameSnapshot get initialSnapshot;
  @JsonKey(ignore: true)
  $CreateOfflineGameSuccessCopyWith<CreateOfflineGameSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
