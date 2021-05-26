// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileEventTearOff {
  const _$ProfileEventTearOff();

  _WatchDataStarted watchDataStarted() {
    return const _WatchDataStarted();
  }

  _DataReceived dataReceived(Either<UserFailure, User> failureOrUser) {
    return _DataReceived(
      failureOrUser,
    );
  }
}

/// @nodoc
const $ProfileEvent = _$ProfileEventTearOff();

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchDataStarted,
    required TResult Function(Either<UserFailure, User> failureOrUser)
        dataReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchDataStarted,
    TResult Function(Either<UserFailure, User> failureOrUser)? dataReceived,
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
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res> implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  final ProfileEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileEvent) _then;
}

/// @nodoc
abstract class _$WatchDataStartedCopyWith<$Res> {
  factory _$WatchDataStartedCopyWith(
          _WatchDataStarted value, $Res Function(_WatchDataStarted) then) =
      __$WatchDataStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchDataStartedCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
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
    return 'ProfileEvent.watchDataStarted()';
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
    required TResult Function(Either<UserFailure, User> failureOrUser)
        dataReceived,
  }) {
    return watchDataStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchDataStarted,
    TResult Function(Either<UserFailure, User> failureOrUser)? dataReceived,
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

abstract class _WatchDataStarted implements ProfileEvent {
  const factory _WatchDataStarted() = _$_WatchDataStarted;
}

/// @nodoc
abstract class _$DataReceivedCopyWith<$Res> {
  factory _$DataReceivedCopyWith(
          _DataReceived value, $Res Function(_DataReceived) then) =
      __$DataReceivedCopyWithImpl<$Res>;
  $Res call({Either<UserFailure, User> failureOrUser});
}

/// @nodoc
class __$DataReceivedCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements _$DataReceivedCopyWith<$Res> {
  __$DataReceivedCopyWithImpl(
      _DataReceived _value, $Res Function(_DataReceived) _then)
      : super(_value, (v) => _then(v as _DataReceived));

  @override
  _DataReceived get _value => super._value as _DataReceived;

  @override
  $Res call({
    Object? failureOrUser = freezed,
  }) {
    return _then(_DataReceived(
      failureOrUser == freezed
          ? _value.failureOrUser
          : failureOrUser // ignore: cast_nullable_to_non_nullable
              as Either<UserFailure, User>,
    ));
  }
}

/// @nodoc

class _$_DataReceived implements _DataReceived {
  const _$_DataReceived(this.failureOrUser);

  @override
  final Either<UserFailure, User> failureOrUser;

  @override
  String toString() {
    return 'ProfileEvent.dataReceived(failureOrUser: $failureOrUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataReceived &&
            (identical(other.failureOrUser, failureOrUser) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrUser, failureOrUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureOrUser);

  @JsonKey(ignore: true)
  @override
  _$DataReceivedCopyWith<_DataReceived> get copyWith =>
      __$DataReceivedCopyWithImpl<_DataReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchDataStarted,
    required TResult Function(Either<UserFailure, User> failureOrUser)
        dataReceived,
  }) {
    return dataReceived(failureOrUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchDataStarted,
    TResult Function(Either<UserFailure, User> failureOrUser)? dataReceived,
    required TResult orElse(),
  }) {
    if (dataReceived != null) {
      return dataReceived(failureOrUser);
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

abstract class _DataReceived implements ProfileEvent {
  const factory _DataReceived(Either<UserFailure, User> failureOrUser) =
      _$_DataReceived;

  Either<UserFailure, User> get failureOrUser =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DataReceivedCopyWith<_DataReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProfileStateTearOff {
  const _$ProfileStateTearOff();

  _NoData noData() {
    return const _NoData();
  }

  _Data data(
      {required String? photoUrl,
      required String username,
      required double average,
      required Trend averageTrend,
      required double checkoutPercentage,
      required Trend checkoutPercentageTrend,
      required double firstNine,
      required Trend firstNineTrend,
      required int games,
      required int wins,
      required int defeats}) {
    return _Data(
      photoUrl: photoUrl,
      username: username,
      average: average,
      averageTrend: averageTrend,
      checkoutPercentage: checkoutPercentage,
      checkoutPercentageTrend: checkoutPercentageTrend,
      firstNine: firstNine,
      firstNineTrend: firstNineTrend,
      games: games,
      wins: wins,
      defeats: defeats,
    );
  }
}

/// @nodoc
const $ProfileState = _$ProfileStateTearOff();

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noData,
    required TResult Function(
            String? photoUrl,
            String username,
            double average,
            Trend averageTrend,
            double checkoutPercentage,
            Trend checkoutPercentageTrend,
            double firstNine,
            Trend firstNineTrend,
            int games,
            int wins,
            int defeats)
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noData,
    TResult Function(
            String? photoUrl,
            String username,
            double average,
            Trend averageTrend,
            double checkoutPercentage,
            Trend checkoutPercentageTrend,
            double firstNine,
            Trend firstNineTrend,
            int games,
            int wins,
            int defeats)?
        data,
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
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;
}

/// @nodoc
abstract class _$NoDataCopyWith<$Res> {
  factory _$NoDataCopyWith(_NoData value, $Res Function(_NoData) then) =
      __$NoDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoDataCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
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
    return 'ProfileState.noData()';
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
    required TResult Function(
            String? photoUrl,
            String username,
            double average,
            Trend averageTrend,
            double checkoutPercentage,
            Trend checkoutPercentageTrend,
            double firstNine,
            Trend firstNineTrend,
            int games,
            int wins,
            int defeats)
        data,
  }) {
    return noData();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noData,
    TResult Function(
            String? photoUrl,
            String username,
            double average,
            Trend averageTrend,
            double checkoutPercentage,
            Trend checkoutPercentageTrend,
            double firstNine,
            Trend firstNineTrend,
            int games,
            int wins,
            int defeats)?
        data,
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

abstract class _NoData implements ProfileState {
  const factory _NoData() = _$_NoData;
}

/// @nodoc
abstract class _$DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  $Res call(
      {String? photoUrl,
      String username,
      double average,
      Trend averageTrend,
      double checkoutPercentage,
      Trend checkoutPercentageTrend,
      double firstNine,
      Trend firstNineTrend,
      int games,
      int wins,
      int defeats});
}

/// @nodoc
class __$DataCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(_Data _value, $Res Function(_Data) _then)
      : super(_value, (v) => _then(v as _Data));

  @override
  _Data get _value => super._value as _Data;

  @override
  $Res call({
    Object? photoUrl = freezed,
    Object? username = freezed,
    Object? average = freezed,
    Object? averageTrend = freezed,
    Object? checkoutPercentage = freezed,
    Object? checkoutPercentageTrend = freezed,
    Object? firstNine = freezed,
    Object? firstNineTrend = freezed,
    Object? games = freezed,
    Object? wins = freezed,
    Object? defeats = freezed,
  }) {
    return _then(_Data(
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      average: average == freezed
          ? _value.average
          : average // ignore: cast_nullable_to_non_nullable
              as double,
      averageTrend: averageTrend == freezed
          ? _value.averageTrend
          : averageTrend // ignore: cast_nullable_to_non_nullable
              as Trend,
      checkoutPercentage: checkoutPercentage == freezed
          ? _value.checkoutPercentage
          : checkoutPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      checkoutPercentageTrend: checkoutPercentageTrend == freezed
          ? _value.checkoutPercentageTrend
          : checkoutPercentageTrend // ignore: cast_nullable_to_non_nullable
              as Trend,
      firstNine: firstNine == freezed
          ? _value.firstNine
          : firstNine // ignore: cast_nullable_to_non_nullable
              as double,
      firstNineTrend: firstNineTrend == freezed
          ? _value.firstNineTrend
          : firstNineTrend // ignore: cast_nullable_to_non_nullable
              as Trend,
      games: games == freezed
          ? _value.games
          : games // ignore: cast_nullable_to_non_nullable
              as int,
      wins: wins == freezed
          ? _value.wins
          : wins // ignore: cast_nullable_to_non_nullable
              as int,
      defeats: defeats == freezed
          ? _value.defeats
          : defeats // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Data implements _Data {
  const _$_Data(
      {required this.photoUrl,
      required this.username,
      required this.average,
      required this.averageTrend,
      required this.checkoutPercentage,
      required this.checkoutPercentageTrend,
      required this.firstNine,
      required this.firstNineTrend,
      required this.games,
      required this.wins,
      required this.defeats});

  @override
  final String? photoUrl;
  @override
  final String username;
  @override
  final double average;
  @override
  final Trend averageTrend;
  @override
  final double checkoutPercentage;
  @override
  final Trend checkoutPercentageTrend;
  @override
  final double firstNine;
  @override
  final Trend firstNineTrend;
  @override
  final int games;
  @override
  final int wins;
  @override
  final int defeats;

  @override
  String toString() {
    return 'ProfileState.data(photoUrl: $photoUrl, username: $username, average: $average, averageTrend: $averageTrend, checkoutPercentage: $checkoutPercentage, checkoutPercentageTrend: $checkoutPercentageTrend, firstNine: $firstNine, firstNineTrend: $firstNineTrend, games: $games, wins: $wins, defeats: $defeats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Data &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.average, average) ||
                const DeepCollectionEquality()
                    .equals(other.average, average)) &&
            (identical(other.averageTrend, averageTrend) ||
                const DeepCollectionEquality()
                    .equals(other.averageTrend, averageTrend)) &&
            (identical(other.checkoutPercentage, checkoutPercentage) ||
                const DeepCollectionEquality()
                    .equals(other.checkoutPercentage, checkoutPercentage)) &&
            (identical(
                    other.checkoutPercentageTrend, checkoutPercentageTrend) ||
                const DeepCollectionEquality().equals(
                    other.checkoutPercentageTrend, checkoutPercentageTrend)) &&
            (identical(other.firstNine, firstNine) ||
                const DeepCollectionEquality()
                    .equals(other.firstNine, firstNine)) &&
            (identical(other.firstNineTrend, firstNineTrend) ||
                const DeepCollectionEquality()
                    .equals(other.firstNineTrend, firstNineTrend)) &&
            (identical(other.games, games) ||
                const DeepCollectionEquality().equals(other.games, games)) &&
            (identical(other.wins, wins) ||
                const DeepCollectionEquality().equals(other.wins, wins)) &&
            (identical(other.defeats, defeats) ||
                const DeepCollectionEquality().equals(other.defeats, defeats)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(average) ^
      const DeepCollectionEquality().hash(averageTrend) ^
      const DeepCollectionEquality().hash(checkoutPercentage) ^
      const DeepCollectionEquality().hash(checkoutPercentageTrend) ^
      const DeepCollectionEquality().hash(firstNine) ^
      const DeepCollectionEquality().hash(firstNineTrend) ^
      const DeepCollectionEquality().hash(games) ^
      const DeepCollectionEquality().hash(wins) ^
      const DeepCollectionEquality().hash(defeats);

  @JsonKey(ignore: true)
  @override
  _$DataCopyWith<_Data> get copyWith =>
      __$DataCopyWithImpl<_Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noData,
    required TResult Function(
            String? photoUrl,
            String username,
            double average,
            Trend averageTrend,
            double checkoutPercentage,
            Trend checkoutPercentageTrend,
            double firstNine,
            Trend firstNineTrend,
            int games,
            int wins,
            int defeats)
        data,
  }) {
    return data(
        photoUrl,
        username,
        average,
        averageTrend,
        checkoutPercentage,
        checkoutPercentageTrend,
        firstNine,
        firstNineTrend,
        games,
        wins,
        defeats);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noData,
    TResult Function(
            String? photoUrl,
            String username,
            double average,
            Trend averageTrend,
            double checkoutPercentage,
            Trend checkoutPercentageTrend,
            double firstNine,
            Trend firstNineTrend,
            int games,
            int wins,
            int defeats)?
        data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(
          photoUrl,
          username,
          average,
          averageTrend,
          checkoutPercentage,
          checkoutPercentageTrend,
          firstNine,
          firstNineTrend,
          games,
          wins,
          defeats);
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

abstract class _Data implements ProfileState {
  const factory _Data(
      {required String? photoUrl,
      required String username,
      required double average,
      required Trend averageTrend,
      required double checkoutPercentage,
      required Trend checkoutPercentageTrend,
      required double firstNine,
      required Trend firstNineTrend,
      required int games,
      required int wins,
      required int defeats}) = _$_Data;

  String? get photoUrl => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  double get average => throw _privateConstructorUsedError;
  Trend get averageTrend => throw _privateConstructorUsedError;
  double get checkoutPercentage => throw _privateConstructorUsedError;
  Trend get checkoutPercentageTrend => throw _privateConstructorUsedError;
  double get firstNine => throw _privateConstructorUsedError;
  Trend get firstNineTrend => throw _privateConstructorUsedError;
  int get games => throw _privateConstructorUsedError;
  int get wins => throw _privateConstructorUsedError;
  int get defeats => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}
