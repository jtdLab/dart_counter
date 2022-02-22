// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_online_game_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateOnlineGameStateTearOff {
  const _$CreateOnlineGameStateTearOff();

  CreateOnlineGameInitial initial() {
    return const CreateOnlineGameInitial();
  }

  CreateOnlineGameSuccess success() {
    return const CreateOnlineGameSuccess();
  }

  CreateOnlineGameFailure failure({required PlayFailure failure}) {
    return CreateOnlineGameFailure(
      failure: failure,
    );
  }
}

/// @nodoc
const $CreateOnlineGameState = _$CreateOnlineGameStateTearOff();

/// @nodoc
mixin _$CreateOnlineGameState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function(PlayFailure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function(PlayFailure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function(PlayFailure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateOnlineGameInitial value) initial,
    required TResult Function(CreateOnlineGameSuccess value) success,
    required TResult Function(CreateOnlineGameFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateOnlineGameInitial value)? initial,
    TResult Function(CreateOnlineGameSuccess value)? success,
    TResult Function(CreateOnlineGameFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateOnlineGameInitial value)? initial,
    TResult Function(CreateOnlineGameSuccess value)? success,
    TResult Function(CreateOnlineGameFailure value)? failure,
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
    required TResult Function() success,
    required TResult Function(PlayFailure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function(PlayFailure failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function(PlayFailure failure)? failure,
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
    required TResult Function(CreateOnlineGameSuccess value) success,
    required TResult Function(CreateOnlineGameFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateOnlineGameInitial value)? initial,
    TResult Function(CreateOnlineGameSuccess value)? success,
    TResult Function(CreateOnlineGameFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateOnlineGameInitial value)? initial,
    TResult Function(CreateOnlineGameSuccess value)? success,
    TResult Function(CreateOnlineGameFailure value)? failure,
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

/// @nodoc
abstract class $CreateOnlineGameSuccessCopyWith<$Res> {
  factory $CreateOnlineGameSuccessCopyWith(CreateOnlineGameSuccess value,
          $Res Function(CreateOnlineGameSuccess) then) =
      _$CreateOnlineGameSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateOnlineGameSuccessCopyWithImpl<$Res>
    extends _$CreateOnlineGameStateCopyWithImpl<$Res>
    implements $CreateOnlineGameSuccessCopyWith<$Res> {
  _$CreateOnlineGameSuccessCopyWithImpl(CreateOnlineGameSuccess _value,
      $Res Function(CreateOnlineGameSuccess) _then)
      : super(_value, (v) => _then(v as CreateOnlineGameSuccess));

  @override
  CreateOnlineGameSuccess get _value => super._value as CreateOnlineGameSuccess;
}

/// @nodoc

class _$CreateOnlineGameSuccess implements CreateOnlineGameSuccess {
  const _$CreateOnlineGameSuccess();

  @override
  String toString() {
    return 'CreateOnlineGameState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CreateOnlineGameSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function(PlayFailure failure) failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function(PlayFailure failure)? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function(PlayFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateOnlineGameInitial value) initial,
    required TResult Function(CreateOnlineGameSuccess value) success,
    required TResult Function(CreateOnlineGameFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateOnlineGameInitial value)? initial,
    TResult Function(CreateOnlineGameSuccess value)? success,
    TResult Function(CreateOnlineGameFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateOnlineGameInitial value)? initial,
    TResult Function(CreateOnlineGameSuccess value)? success,
    TResult Function(CreateOnlineGameFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class CreateOnlineGameSuccess implements CreateOnlineGameState {
  const factory CreateOnlineGameSuccess() = _$CreateOnlineGameSuccess;
}

/// @nodoc
abstract class $CreateOnlineGameFailureCopyWith<$Res> {
  factory $CreateOnlineGameFailureCopyWith(CreateOnlineGameFailure value,
          $Res Function(CreateOnlineGameFailure) then) =
      _$CreateOnlineGameFailureCopyWithImpl<$Res>;
  $Res call({PlayFailure failure});

  $PlayFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$CreateOnlineGameFailureCopyWithImpl<$Res>
    extends _$CreateOnlineGameStateCopyWithImpl<$Res>
    implements $CreateOnlineGameFailureCopyWith<$Res> {
  _$CreateOnlineGameFailureCopyWithImpl(CreateOnlineGameFailure _value,
      $Res Function(CreateOnlineGameFailure) _then)
      : super(_value, (v) => _then(v as CreateOnlineGameFailure));

  @override
  CreateOnlineGameFailure get _value => super._value as CreateOnlineGameFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(CreateOnlineGameFailure(
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as PlayFailure,
    ));
  }

  @override
  $PlayFailureCopyWith<$Res> get failure {
    return $PlayFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$CreateOnlineGameFailure implements CreateOnlineGameFailure {
  const _$CreateOnlineGameFailure({required this.failure});

  @override
  final PlayFailure failure;

  @override
  String toString() {
    return 'CreateOnlineGameState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateOnlineGameFailure &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  $CreateOnlineGameFailureCopyWith<CreateOnlineGameFailure> get copyWith =>
      _$CreateOnlineGameFailureCopyWithImpl<CreateOnlineGameFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function(PlayFailure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function(PlayFailure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function(PlayFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateOnlineGameInitial value) initial,
    required TResult Function(CreateOnlineGameSuccess value) success,
    required TResult Function(CreateOnlineGameFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateOnlineGameInitial value)? initial,
    TResult Function(CreateOnlineGameSuccess value)? success,
    TResult Function(CreateOnlineGameFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateOnlineGameInitial value)? initial,
    TResult Function(CreateOnlineGameSuccess value)? success,
    TResult Function(CreateOnlineGameFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class CreateOnlineGameFailure implements CreateOnlineGameState {
  const factory CreateOnlineGameFailure({required PlayFailure failure}) =
      _$CreateOnlineGameFailure;

  PlayFailure get failure;
  @JsonKey(ignore: true)
  $CreateOnlineGameFailureCopyWith<CreateOnlineGameFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
