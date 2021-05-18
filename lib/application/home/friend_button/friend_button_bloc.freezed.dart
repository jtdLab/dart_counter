// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'friend_button_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FriendButtonEventTearOff {
  const _$FriendButtonEventTearOff();

  _WatchDataStarted watchDataStarted() {
    return const _WatchDataStarted();
  }

  _DataReceived dataReceived(
      Either<FriendFailure, KtList<FriendRequest>> failureOrFriendRequest) {
    return _DataReceived(
      failureOrFriendRequest,
    );
  }
}

/// @nodoc
const $FriendButtonEvent = _$FriendButtonEventTearOff();

/// @nodoc
mixin _$FriendButtonEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchDataStarted,
    required TResult Function(
            Either<FriendFailure, KtList<FriendRequest>> failureOrFriendRequest)
        dataReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchDataStarted,
    TResult Function(
            Either<FriendFailure, KtList<FriendRequest>>
                failureOrFriendRequest)?
        dataReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchDataStarted value) watchDataStarted,
    required TResult Function(_DataReceived value) dataReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchDataStarted value)? watchDataStarted,
    TResult Function(_DataReceived value)? dataReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendButtonEventCopyWith<$Res> {
  factory $FriendButtonEventCopyWith(
          FriendButtonEvent value, $Res Function(FriendButtonEvent) then) =
      _$FriendButtonEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FriendButtonEventCopyWithImpl<$Res>
    implements $FriendButtonEventCopyWith<$Res> {
  _$FriendButtonEventCopyWithImpl(this._value, this._then);

  final FriendButtonEvent _value;
  // ignore: unused_field
  final $Res Function(FriendButtonEvent) _then;
}

/// @nodoc
abstract class _$WatchDataStartedCopyWith<$Res> {
  factory _$WatchDataStartedCopyWith(
          _WatchDataStarted value, $Res Function(_WatchDataStarted) then) =
      __$WatchDataStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchDataStartedCopyWithImpl<$Res>
    extends _$FriendButtonEventCopyWithImpl<$Res>
    implements _$WatchDataStartedCopyWith<$Res> {
  __$WatchDataStartedCopyWithImpl(
      _WatchDataStarted _value, $Res Function(_WatchDataStarted) _then)
      : super(_value, (v) => _then(v as _WatchDataStarted));

  @override
  _WatchDataStarted get _value => super._value as _WatchDataStarted;
}

/// @nodoc
class _$_WatchDataStarted implements _WatchDataStarted {
  const _$_WatchDataStarted();

  @override
  String toString() {
    return 'FriendButtonEvent.watchDataStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchDataStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchDataStarted,
    required TResult Function(
            Either<FriendFailure, KtList<FriendRequest>> failureOrFriendRequest)
        dataReceived,
  }) {
    return watchDataStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchDataStarted,
    TResult Function(
            Either<FriendFailure, KtList<FriendRequest>>
                failureOrFriendRequest)?
        dataReceived,
    required TResult orElse(),
  }) {
    if (watchDataStarted != null) {
      return watchDataStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchDataStarted value) watchDataStarted,
    required TResult Function(_DataReceived value) dataReceived,
  }) {
    return watchDataStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchDataStarted value)? watchDataStarted,
    TResult Function(_DataReceived value)? dataReceived,
    required TResult orElse(),
  }) {
    if (watchDataStarted != null) {
      return watchDataStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchDataStarted implements FriendButtonEvent {
  const factory _WatchDataStarted() = _$_WatchDataStarted;
}

/// @nodoc
abstract class _$DataReceivedCopyWith<$Res> {
  factory _$DataReceivedCopyWith(
          _DataReceived value, $Res Function(_DataReceived) then) =
      __$DataReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<FriendFailure, KtList<FriendRequest>> failureOrFriendRequest});
}

/// @nodoc
class __$DataReceivedCopyWithImpl<$Res>
    extends _$FriendButtonEventCopyWithImpl<$Res>
    implements _$DataReceivedCopyWith<$Res> {
  __$DataReceivedCopyWithImpl(
      _DataReceived _value, $Res Function(_DataReceived) _then)
      : super(_value, (v) => _then(v as _DataReceived));

  @override
  _DataReceived get _value => super._value as _DataReceived;

  @override
  $Res call({
    Object? failureOrFriendRequest = freezed,
  }) {
    return _then(_DataReceived(
      failureOrFriendRequest == freezed
          ? _value.failureOrFriendRequest
          : failureOrFriendRequest // ignore: cast_nullable_to_non_nullable
              as Either<FriendFailure, KtList<FriendRequest>>,
    ));
  }
}

/// @nodoc
class _$_DataReceived implements _DataReceived {
  const _$_DataReceived(this.failureOrFriendRequest);

  @override
  final Either<FriendFailure, KtList<FriendRequest>> failureOrFriendRequest;

  @override
  String toString() {
    return 'FriendButtonEvent.dataReceived(failureOrFriendRequest: $failureOrFriendRequest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataReceived &&
            (identical(other.failureOrFriendRequest, failureOrFriendRequest) ||
                const DeepCollectionEquality().equals(
                    other.failureOrFriendRequest, failureOrFriendRequest)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrFriendRequest);

  @JsonKey(ignore: true)
  @override
  _$DataReceivedCopyWith<_DataReceived> get copyWith =>
      __$DataReceivedCopyWithImpl<_DataReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchDataStarted,
    required TResult Function(
            Either<FriendFailure, KtList<FriendRequest>> failureOrFriendRequest)
        dataReceived,
  }) {
    return dataReceived(failureOrFriendRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchDataStarted,
    TResult Function(
            Either<FriendFailure, KtList<FriendRequest>>
                failureOrFriendRequest)?
        dataReceived,
    required TResult orElse(),
  }) {
    if (dataReceived != null) {
      return dataReceived(failureOrFriendRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchDataStarted value) watchDataStarted,
    required TResult Function(_DataReceived value) dataReceived,
  }) {
    return dataReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchDataStarted value)? watchDataStarted,
    TResult Function(_DataReceived value)? dataReceived,
    required TResult orElse(),
  }) {
    if (dataReceived != null) {
      return dataReceived(this);
    }
    return orElse();
  }
}

abstract class _DataReceived implements FriendButtonEvent {
  const factory _DataReceived(
          Either<FriendFailure, KtList<FriendRequest>> failureOrFriendRequest) =
      _$_DataReceived;

  Either<FriendFailure, KtList<FriendRequest>> get failureOrFriendRequest =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DataReceivedCopyWith<_DataReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FriendButtonStateTearOff {
  const _$FriendButtonStateTearOff();

  _NoData noData() {
    return const _NoData();
  }

  _Data data({required int newFriendRequests}) {
    return _Data(
      newFriendRequests: newFriendRequests,
    );
  }
}

/// @nodoc
const $FriendButtonState = _$FriendButtonStateTearOff();

/// @nodoc
mixin _$FriendButtonState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noData,
    required TResult Function(int newFriendRequests) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noData,
    TResult Function(int newFriendRequests)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoData value) noData,
    required TResult Function(_Data value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoData value)? noData,
    TResult Function(_Data value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendButtonStateCopyWith<$Res> {
  factory $FriendButtonStateCopyWith(
          FriendButtonState value, $Res Function(FriendButtonState) then) =
      _$FriendButtonStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FriendButtonStateCopyWithImpl<$Res>
    implements $FriendButtonStateCopyWith<$Res> {
  _$FriendButtonStateCopyWithImpl(this._value, this._then);

  final FriendButtonState _value;
  // ignore: unused_field
  final $Res Function(FriendButtonState) _then;
}

/// @nodoc
abstract class _$NoDataCopyWith<$Res> {
  factory _$NoDataCopyWith(_NoData value, $Res Function(_NoData) then) =
      __$NoDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoDataCopyWithImpl<$Res> extends _$FriendButtonStateCopyWithImpl<$Res>
    implements _$NoDataCopyWith<$Res> {
  __$NoDataCopyWithImpl(_NoData _value, $Res Function(_NoData) _then)
      : super(_value, (v) => _then(v as _NoData));

  @override
  _NoData get _value => super._value as _NoData;
}

/// @nodoc
class _$_NoData implements _NoData {
  const _$_NoData();

  @override
  String toString() {
    return 'FriendButtonState.noData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NoData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noData,
    required TResult Function(int newFriendRequests) data,
  }) {
    return noData();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noData,
    TResult Function(int newFriendRequests)? data,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoData value) noData,
    required TResult Function(_Data value) data,
  }) {
    return noData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoData value)? noData,
    TResult Function(_Data value)? data,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(this);
    }
    return orElse();
  }
}

abstract class _NoData implements FriendButtonState {
  const factory _NoData() = _$_NoData;
}

/// @nodoc
abstract class _$DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  $Res call({int newFriendRequests});
}

/// @nodoc
class __$DataCopyWithImpl<$Res> extends _$FriendButtonStateCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(_Data _value, $Res Function(_Data) _then)
      : super(_value, (v) => _then(v as _Data));

  @override
  _Data get _value => super._value as _Data;

  @override
  $Res call({
    Object? newFriendRequests = freezed,
  }) {
    return _then(_Data(
      newFriendRequests: newFriendRequests == freezed
          ? _value.newFriendRequests
          : newFriendRequests // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$_Data implements _Data {
  const _$_Data({required this.newFriendRequests});

  @override
  final int newFriendRequests;

  @override
  String toString() {
    return 'FriendButtonState.data(newFriendRequests: $newFriendRequests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Data &&
            (identical(other.newFriendRequests, newFriendRequests) ||
                const DeepCollectionEquality()
                    .equals(other.newFriendRequests, newFriendRequests)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newFriendRequests);

  @JsonKey(ignore: true)
  @override
  _$DataCopyWith<_Data> get copyWith =>
      __$DataCopyWithImpl<_Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noData,
    required TResult Function(int newFriendRequests) data,
  }) {
    return data(newFriendRequests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noData,
    TResult Function(int newFriendRequests)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(newFriendRequests);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoData value) noData,
    required TResult Function(_Data value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoData value)? noData,
    TResult Function(_Data value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _Data implements FriendButtonState {
  const factory _Data({required int newFriendRequests}) = _$_Data;

  int get newFriendRequests => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}
