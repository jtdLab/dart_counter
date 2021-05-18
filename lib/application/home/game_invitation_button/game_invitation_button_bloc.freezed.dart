// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'game_invitation_button_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GameInvitationButtonEventTearOff {
  const _$GameInvitationButtonEventTearOff();

  _WatchDataStarted watchDataStarted() {
    return const _WatchDataStarted();
  }

  _DataReceived dataReceived(
      Either<GameInvitationFailure, KtList<GameInvitation>>
          failureOrInvitations) {
    return _DataReceived(
      failureOrInvitations,
    );
  }
}

/// @nodoc
const $GameInvitationButtonEvent = _$GameInvitationButtonEventTearOff();

/// @nodoc
mixin _$GameInvitationButtonEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchDataStarted,
    required TResult Function(
            Either<GameInvitationFailure, KtList<GameInvitation>>
                failureOrInvitations)
        dataReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchDataStarted,
    TResult Function(
            Either<GameInvitationFailure, KtList<GameInvitation>>
                failureOrInvitations)?
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
abstract class $GameInvitationButtonEventCopyWith<$Res> {
  factory $GameInvitationButtonEventCopyWith(GameInvitationButtonEvent value,
          $Res Function(GameInvitationButtonEvent) then) =
      _$GameInvitationButtonEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameInvitationButtonEventCopyWithImpl<$Res>
    implements $GameInvitationButtonEventCopyWith<$Res> {
  _$GameInvitationButtonEventCopyWithImpl(this._value, this._then);

  final GameInvitationButtonEvent _value;
  // ignore: unused_field
  final $Res Function(GameInvitationButtonEvent) _then;
}

/// @nodoc
abstract class _$WatchDataStartedCopyWith<$Res> {
  factory _$WatchDataStartedCopyWith(
          _WatchDataStarted value, $Res Function(_WatchDataStarted) then) =
      __$WatchDataStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchDataStartedCopyWithImpl<$Res>
    extends _$GameInvitationButtonEventCopyWithImpl<$Res>
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
    return 'GameInvitationButtonEvent.watchDataStarted()';
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
            Either<GameInvitationFailure, KtList<GameInvitation>>
                failureOrInvitations)
        dataReceived,
  }) {
    return watchDataStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchDataStarted,
    TResult Function(
            Either<GameInvitationFailure, KtList<GameInvitation>>
                failureOrInvitations)?
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

abstract class _WatchDataStarted implements GameInvitationButtonEvent {
  const factory _WatchDataStarted() = _$_WatchDataStarted;
}

/// @nodoc
abstract class _$DataReceivedCopyWith<$Res> {
  factory _$DataReceivedCopyWith(
          _DataReceived value, $Res Function(_DataReceived) then) =
      __$DataReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<GameInvitationFailure, KtList<GameInvitation>>
          failureOrInvitations});
}

/// @nodoc
class __$DataReceivedCopyWithImpl<$Res>
    extends _$GameInvitationButtonEventCopyWithImpl<$Res>
    implements _$DataReceivedCopyWith<$Res> {
  __$DataReceivedCopyWithImpl(
      _DataReceived _value, $Res Function(_DataReceived) _then)
      : super(_value, (v) => _then(v as _DataReceived));

  @override
  _DataReceived get _value => super._value as _DataReceived;

  @override
  $Res call({
    Object? failureOrInvitations = freezed,
  }) {
    return _then(_DataReceived(
      failureOrInvitations == freezed
          ? _value.failureOrInvitations
          : failureOrInvitations // ignore: cast_nullable_to_non_nullable
              as Either<GameInvitationFailure, KtList<GameInvitation>>,
    ));
  }
}

/// @nodoc
class _$_DataReceived implements _DataReceived {
  const _$_DataReceived(this.failureOrInvitations);

  @override
  final Either<GameInvitationFailure, KtList<GameInvitation>>
      failureOrInvitations;

  @override
  String toString() {
    return 'GameInvitationButtonEvent.dataReceived(failureOrInvitations: $failureOrInvitations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataReceived &&
            (identical(other.failureOrInvitations, failureOrInvitations) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrInvitations, failureOrInvitations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrInvitations);

  @JsonKey(ignore: true)
  @override
  _$DataReceivedCopyWith<_DataReceived> get copyWith =>
      __$DataReceivedCopyWithImpl<_DataReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchDataStarted,
    required TResult Function(
            Either<GameInvitationFailure, KtList<GameInvitation>>
                failureOrInvitations)
        dataReceived,
  }) {
    return dataReceived(failureOrInvitations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchDataStarted,
    TResult Function(
            Either<GameInvitationFailure, KtList<GameInvitation>>
                failureOrInvitations)?
        dataReceived,
    required TResult orElse(),
  }) {
    if (dataReceived != null) {
      return dataReceived(failureOrInvitations);
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

abstract class _DataReceived implements GameInvitationButtonEvent {
  const factory _DataReceived(
      Either<GameInvitationFailure, KtList<GameInvitation>>
          failureOrInvitations) = _$_DataReceived;

  Either<GameInvitationFailure, KtList<GameInvitation>>
      get failureOrInvitations => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DataReceivedCopyWith<_DataReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GameInvitationButtonStateTearOff {
  const _$GameInvitationButtonStateTearOff();

  _NoData noData() {
    return const _NoData();
  }

  _Data data({required int newGameInvitations}) {
    return _Data(
      newGameInvitations: newGameInvitations,
    );
  }
}

/// @nodoc
const $GameInvitationButtonState = _$GameInvitationButtonStateTearOff();

/// @nodoc
mixin _$GameInvitationButtonState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noData,
    required TResult Function(int newGameInvitations) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noData,
    TResult Function(int newGameInvitations)? data,
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
abstract class $GameInvitationButtonStateCopyWith<$Res> {
  factory $GameInvitationButtonStateCopyWith(GameInvitationButtonState value,
          $Res Function(GameInvitationButtonState) then) =
      _$GameInvitationButtonStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameInvitationButtonStateCopyWithImpl<$Res>
    implements $GameInvitationButtonStateCopyWith<$Res> {
  _$GameInvitationButtonStateCopyWithImpl(this._value, this._then);

  final GameInvitationButtonState _value;
  // ignore: unused_field
  final $Res Function(GameInvitationButtonState) _then;
}

/// @nodoc
abstract class _$NoDataCopyWith<$Res> {
  factory _$NoDataCopyWith(_NoData value, $Res Function(_NoData) then) =
      __$NoDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoDataCopyWithImpl<$Res>
    extends _$GameInvitationButtonStateCopyWithImpl<$Res>
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
    return 'GameInvitationButtonState.noData()';
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
    required TResult Function(int newGameInvitations) data,
  }) {
    return noData();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noData,
    TResult Function(int newGameInvitations)? data,
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

abstract class _NoData implements GameInvitationButtonState {
  const factory _NoData() = _$_NoData;
}

/// @nodoc
abstract class _$DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  $Res call({int newGameInvitations});
}

/// @nodoc
class __$DataCopyWithImpl<$Res>
    extends _$GameInvitationButtonStateCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(_Data _value, $Res Function(_Data) _then)
      : super(_value, (v) => _then(v as _Data));

  @override
  _Data get _value => super._value as _Data;

  @override
  $Res call({
    Object? newGameInvitations = freezed,
  }) {
    return _then(_Data(
      newGameInvitations: newGameInvitations == freezed
          ? _value.newGameInvitations
          : newGameInvitations // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$_Data implements _Data {
  const _$_Data({required this.newGameInvitations});

  @override
  final int newGameInvitations;

  @override
  String toString() {
    return 'GameInvitationButtonState.data(newGameInvitations: $newGameInvitations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Data &&
            (identical(other.newGameInvitations, newGameInvitations) ||
                const DeepCollectionEquality()
                    .equals(other.newGameInvitations, newGameInvitations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newGameInvitations);

  @JsonKey(ignore: true)
  @override
  _$DataCopyWith<_Data> get copyWith =>
      __$DataCopyWithImpl<_Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noData,
    required TResult Function(int newGameInvitations) data,
  }) {
    return data(newGameInvitations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noData,
    TResult Function(int newGameInvitations)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(newGameInvitations);
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

abstract class _Data implements GameInvitationButtonState {
  const factory _Data({required int newGameInvitations}) = _$_Data;

  int get newGameInvitations => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}
