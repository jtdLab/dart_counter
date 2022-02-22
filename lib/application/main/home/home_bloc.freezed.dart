// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  _Started started() {
    return const _Started();
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
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
    return 'HomeEvent.started()';
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
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
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
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomeEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  HomeLoadInProgress loadInProgress() {
    return const HomeLoadInProgress();
  }

  HomeLoadSuccess loadSuccess(
      {required User user,
      required int unreadGameInvitations,
      required int unreadFriendRequests}) {
    return HomeLoadSuccess(
      user: user,
      unreadGameInvitations: unreadGameInvitations,
      unreadFriendRequests: unreadFriendRequests,
    );
  }

  HomeLoadFailure loadFailure() {
    return const HomeLoadFailure();
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(
            User user, int unreadGameInvitations, int unreadFriendRequests)
        loadSuccess,
    required TResult Function() loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(
            User user, int unreadGameInvitations, int unreadFriendRequests)?
        loadSuccess,
    TResult Function()? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(
            User user, int unreadGameInvitations, int unreadFriendRequests)?
        loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeLoadInProgress value) loadInProgress,
    required TResult Function(HomeLoadSuccess value) loadSuccess,
    required TResult Function(HomeLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeLoadInProgress value)? loadInProgress,
    TResult Function(HomeLoadSuccess value)? loadSuccess,
    TResult Function(HomeLoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLoadInProgress value)? loadInProgress,
    TResult Function(HomeLoadSuccess value)? loadSuccess,
    TResult Function(HomeLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class $HomeLoadInProgressCopyWith<$Res> {
  factory $HomeLoadInProgressCopyWith(
          HomeLoadInProgress value, $Res Function(HomeLoadInProgress) then) =
      _$HomeLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeLoadInProgressCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeLoadInProgressCopyWith<$Res> {
  _$HomeLoadInProgressCopyWithImpl(
      HomeLoadInProgress _value, $Res Function(HomeLoadInProgress) _then)
      : super(_value, (v) => _then(v as HomeLoadInProgress));

  @override
  HomeLoadInProgress get _value => super._value as HomeLoadInProgress;
}

/// @nodoc

class _$HomeLoadInProgress implements HomeLoadInProgress {
  const _$HomeLoadInProgress();

  @override
  String toString() {
    return 'HomeState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(
            User user, int unreadGameInvitations, int unreadFriendRequests)
        loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(
            User user, int unreadGameInvitations, int unreadFriendRequests)?
        loadSuccess,
    TResult Function()? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(
            User user, int unreadGameInvitations, int unreadFriendRequests)?
        loadSuccess,
    TResult Function()? loadFailure,
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
    required TResult Function(HomeLoadInProgress value) loadInProgress,
    required TResult Function(HomeLoadSuccess value) loadSuccess,
    required TResult Function(HomeLoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeLoadInProgress value)? loadInProgress,
    TResult Function(HomeLoadSuccess value)? loadSuccess,
    TResult Function(HomeLoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLoadInProgress value)? loadInProgress,
    TResult Function(HomeLoadSuccess value)? loadSuccess,
    TResult Function(HomeLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class HomeLoadInProgress implements HomeState {
  const factory HomeLoadInProgress() = _$HomeLoadInProgress;
}

/// @nodoc
abstract class $HomeLoadSuccessCopyWith<$Res> {
  factory $HomeLoadSuccessCopyWith(
          HomeLoadSuccess value, $Res Function(HomeLoadSuccess) then) =
      _$HomeLoadSuccessCopyWithImpl<$Res>;
  $Res call({User user, int unreadGameInvitations, int unreadFriendRequests});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$HomeLoadSuccessCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeLoadSuccessCopyWith<$Res> {
  _$HomeLoadSuccessCopyWithImpl(
      HomeLoadSuccess _value, $Res Function(HomeLoadSuccess) _then)
      : super(_value, (v) => _then(v as HomeLoadSuccess));

  @override
  HomeLoadSuccess get _value => super._value as HomeLoadSuccess;

  @override
  $Res call({
    Object? user = freezed,
    Object? unreadGameInvitations = freezed,
    Object? unreadFriendRequests = freezed,
  }) {
    return _then(HomeLoadSuccess(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      unreadGameInvitations: unreadGameInvitations == freezed
          ? _value.unreadGameInvitations
          : unreadGameInvitations // ignore: cast_nullable_to_non_nullable
              as int,
      unreadFriendRequests: unreadFriendRequests == freezed
          ? _value.unreadFriendRequests
          : unreadFriendRequests // ignore: cast_nullable_to_non_nullable
              as int,
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

class _$HomeLoadSuccess implements HomeLoadSuccess {
  const _$HomeLoadSuccess(
      {required this.user,
      required this.unreadGameInvitations,
      required this.unreadFriendRequests});

  @override
  final User user;
  @override
  final int unreadGameInvitations;
  @override
  final int unreadFriendRequests;

  @override
  String toString() {
    return 'HomeState.loadSuccess(user: $user, unreadGameInvitations: $unreadGameInvitations, unreadFriendRequests: $unreadFriendRequests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeLoadSuccess &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality()
                .equals(other.unreadGameInvitations, unreadGameInvitations) &&
            const DeepCollectionEquality()
                .equals(other.unreadFriendRequests, unreadFriendRequests));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(unreadGameInvitations),
      const DeepCollectionEquality().hash(unreadFriendRequests));

  @JsonKey(ignore: true)
  @override
  $HomeLoadSuccessCopyWith<HomeLoadSuccess> get copyWith =>
      _$HomeLoadSuccessCopyWithImpl<HomeLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(
            User user, int unreadGameInvitations, int unreadFriendRequests)
        loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadSuccess(user, unreadGameInvitations, unreadFriendRequests);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(
            User user, int unreadGameInvitations, int unreadFriendRequests)?
        loadSuccess,
    TResult Function()? loadFailure,
  }) {
    return loadSuccess?.call(user, unreadGameInvitations, unreadFriendRequests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(
            User user, int unreadGameInvitations, int unreadFriendRequests)?
        loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(user, unreadGameInvitations, unreadFriendRequests);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeLoadInProgress value) loadInProgress,
    required TResult Function(HomeLoadSuccess value) loadSuccess,
    required TResult Function(HomeLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeLoadInProgress value)? loadInProgress,
    TResult Function(HomeLoadSuccess value)? loadSuccess,
    TResult Function(HomeLoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLoadInProgress value)? loadInProgress,
    TResult Function(HomeLoadSuccess value)? loadSuccess,
    TResult Function(HomeLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class HomeLoadSuccess implements HomeState {
  const factory HomeLoadSuccess(
      {required User user,
      required int unreadGameInvitations,
      required int unreadFriendRequests}) = _$HomeLoadSuccess;

  User get user;
  int get unreadGameInvitations;
  int get unreadFriendRequests;
  @JsonKey(ignore: true)
  $HomeLoadSuccessCopyWith<HomeLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeLoadFailureCopyWith<$Res> {
  factory $HomeLoadFailureCopyWith(
          HomeLoadFailure value, $Res Function(HomeLoadFailure) then) =
      _$HomeLoadFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeLoadFailureCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeLoadFailureCopyWith<$Res> {
  _$HomeLoadFailureCopyWithImpl(
      HomeLoadFailure _value, $Res Function(HomeLoadFailure) _then)
      : super(_value, (v) => _then(v as HomeLoadFailure));

  @override
  HomeLoadFailure get _value => super._value as HomeLoadFailure;
}

/// @nodoc

class _$HomeLoadFailure implements HomeLoadFailure {
  const _$HomeLoadFailure();

  @override
  String toString() {
    return 'HomeState.loadFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeLoadFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(
            User user, int unreadGameInvitations, int unreadFriendRequests)
        loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(
            User user, int unreadGameInvitations, int unreadFriendRequests)?
        loadSuccess,
    TResult Function()? loadFailure,
  }) {
    return loadFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(
            User user, int unreadGameInvitations, int unreadFriendRequests)?
        loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeLoadInProgress value) loadInProgress,
    required TResult Function(HomeLoadSuccess value) loadSuccess,
    required TResult Function(HomeLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeLoadInProgress value)? loadInProgress,
    TResult Function(HomeLoadSuccess value)? loadSuccess,
    TResult Function(HomeLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLoadInProgress value)? loadInProgress,
    TResult Function(HomeLoadSuccess value)? loadSuccess,
    TResult Function(HomeLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class HomeLoadFailure implements HomeState {
  const factory HomeLoadFailure() = _$HomeLoadFailure;
}
