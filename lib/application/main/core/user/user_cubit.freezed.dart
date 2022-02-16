// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserStateTearOff {
  const _$UserStateTearOff();

  UserLoadInProgress loadInProgress() {
    return const UserLoadInProgress();
  }

  UserLoadSuccess loadSuccess({required User user}) {
    return UserLoadSuccess(
      user: user,
    );
  }

  UserLoadFailure loadFailure({required UserFailure failure}) {
    return UserLoadFailure(
      failure: failure,
    );
  }
}

/// @nodoc
const $UserState = _$UserStateTearOff();

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(User user) loadSuccess,
    required TResult Function(UserFailure failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(User user)? loadSuccess,
    TResult Function(UserFailure failure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(User user)? loadSuccess,
    TResult Function(UserFailure failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoadInProgress value) loadInProgress,
    required TResult Function(UserLoadSuccess value) loadSuccess,
    required TResult Function(UserLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserLoadInProgress value)? loadInProgress,
    TResult Function(UserLoadSuccess value)? loadSuccess,
    TResult Function(UserLoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoadInProgress value)? loadInProgress,
    TResult Function(UserLoadSuccess value)? loadSuccess,
    TResult Function(UserLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;
}

/// @nodoc
abstract class $UserLoadInProgressCopyWith<$Res> {
  factory $UserLoadInProgressCopyWith(
          UserLoadInProgress value, $Res Function(UserLoadInProgress) then) =
      _$UserLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserLoadInProgressCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res>
    implements $UserLoadInProgressCopyWith<$Res> {
  _$UserLoadInProgressCopyWithImpl(
      UserLoadInProgress _value, $Res Function(UserLoadInProgress) _then)
      : super(_value, (v) => _then(v as UserLoadInProgress));

  @override
  UserLoadInProgress get _value => super._value as UserLoadInProgress;
}

/// @nodoc

class _$UserLoadInProgress extends UserLoadInProgress {
  const _$UserLoadInProgress() : super._();

  @override
  String toString() {
    return 'UserState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(User user) loadSuccess,
    required TResult Function(UserFailure failure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(User user)? loadSuccess,
    TResult Function(UserFailure failure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(User user)? loadSuccess,
    TResult Function(UserFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoadInProgress value) loadInProgress,
    required TResult Function(UserLoadSuccess value) loadSuccess,
    required TResult Function(UserLoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserLoadInProgress value)? loadInProgress,
    TResult Function(UserLoadSuccess value)? loadSuccess,
    TResult Function(UserLoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoadInProgress value)? loadInProgress,
    TResult Function(UserLoadSuccess value)? loadSuccess,
    TResult Function(UserLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class UserLoadInProgress extends UserState {
  const factory UserLoadInProgress() = _$UserLoadInProgress;
  const UserLoadInProgress._() : super._();
}

/// @nodoc
abstract class $UserLoadSuccessCopyWith<$Res> {
  factory $UserLoadSuccessCopyWith(
          UserLoadSuccess value, $Res Function(UserLoadSuccess) then) =
      _$UserLoadSuccessCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$UserLoadSuccessCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements $UserLoadSuccessCopyWith<$Res> {
  _$UserLoadSuccessCopyWithImpl(
      UserLoadSuccess _value, $Res Function(UserLoadSuccess) _then)
      : super(_value, (v) => _then(v as UserLoadSuccess));

  @override
  UserLoadSuccess get _value => super._value as UserLoadSuccess;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(UserLoadSuccess(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$UserLoadSuccess extends UserLoadSuccess {
  const _$UserLoadSuccess({required this.user}) : super._();

  @override
  final User user;

  @override
  String toString() {
    return 'UserState.loadSuccess(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserLoadSuccess &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $UserLoadSuccessCopyWith<UserLoadSuccess> get copyWith =>
      _$UserLoadSuccessCopyWithImpl<UserLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(User user) loadSuccess,
    required TResult Function(UserFailure failure) loadFailure,
  }) {
    return loadSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(User user)? loadSuccess,
    TResult Function(UserFailure failure)? loadFailure,
  }) {
    return loadSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(User user)? loadSuccess,
    TResult Function(UserFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoadInProgress value) loadInProgress,
    required TResult Function(UserLoadSuccess value) loadSuccess,
    required TResult Function(UserLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserLoadInProgress value)? loadInProgress,
    TResult Function(UserLoadSuccess value)? loadSuccess,
    TResult Function(UserLoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoadInProgress value)? loadInProgress,
    TResult Function(UserLoadSuccess value)? loadSuccess,
    TResult Function(UserLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class UserLoadSuccess extends UserState {
  const factory UserLoadSuccess({required User user}) = _$UserLoadSuccess;
  const UserLoadSuccess._() : super._();

  User get user;
  @JsonKey(ignore: true)
  $UserLoadSuccessCopyWith<UserLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLoadFailureCopyWith<$Res> {
  factory $UserLoadFailureCopyWith(
          UserLoadFailure value, $Res Function(UserLoadFailure) then) =
      _$UserLoadFailureCopyWithImpl<$Res>;
  $Res call({UserFailure failure});

  $UserFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$UserLoadFailureCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements $UserLoadFailureCopyWith<$Res> {
  _$UserLoadFailureCopyWithImpl(
      UserLoadFailure _value, $Res Function(UserLoadFailure) _then)
      : super(_value, (v) => _then(v as UserLoadFailure));

  @override
  UserLoadFailure get _value => super._value as UserLoadFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(UserLoadFailure(
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as UserFailure,
    ));
  }

  @override
  $UserFailureCopyWith<$Res> get failure {
    return $UserFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$UserLoadFailure extends UserLoadFailure {
  const _$UserLoadFailure({required this.failure}) : super._();

  @override
  final UserFailure failure;

  @override
  String toString() {
    return 'UserState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserLoadFailure &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  $UserLoadFailureCopyWith<UserLoadFailure> get copyWith =>
      _$UserLoadFailureCopyWithImpl<UserLoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(User user) loadSuccess,
    required TResult Function(UserFailure failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(User user)? loadSuccess,
    TResult Function(UserFailure failure)? loadFailure,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(User user)? loadSuccess,
    TResult Function(UserFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoadInProgress value) loadInProgress,
    required TResult Function(UserLoadSuccess value) loadSuccess,
    required TResult Function(UserLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserLoadInProgress value)? loadInProgress,
    TResult Function(UserLoadSuccess value)? loadSuccess,
    TResult Function(UserLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoadInProgress value)? loadInProgress,
    TResult Function(UserLoadSuccess value)? loadSuccess,
    TResult Function(UserLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class UserLoadFailure extends UserState {
  const factory UserLoadFailure({required UserFailure failure}) =
      _$UserLoadFailure;
  const UserLoadFailure._() : super._();

  UserFailure get failure;
  @JsonKey(ignore: true)
  $UserLoadFailureCopyWith<UserLoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
