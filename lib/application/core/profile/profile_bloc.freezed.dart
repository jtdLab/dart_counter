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

  WatchDataStarted watchDataStarted() {
    return const WatchDataStarted();
  }

  DataReceived dataReceived(Either<UserFailure, User> failureOrUser) {
    return DataReceived(
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
    required TResult Function(WatchDataStarted value) watchDataStarted,
    required TResult Function(DataReceived value) dataReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchDataStarted value)? watchDataStarted,
    TResult Function(DataReceived value)? dataReceived,
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
abstract class $WatchDataStartedCopyWith<$Res> {
  factory $WatchDataStartedCopyWith(
          WatchDataStarted value, $Res Function(WatchDataStarted) then) =
      _$WatchDataStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatchDataStartedCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements $WatchDataStartedCopyWith<$Res> {
  _$WatchDataStartedCopyWithImpl(
      WatchDataStarted _value, $Res Function(WatchDataStarted) _then)
      : super(_value, (v) => _then(v as WatchDataStarted));

  @override
  WatchDataStarted get _value => super._value as WatchDataStarted;
}

/// @nodoc

class _$WatchDataStarted implements WatchDataStarted {
  const _$WatchDataStarted();

  @override
  String toString() {
    return 'ProfileEvent.watchDataStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WatchDataStarted);
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
    required TResult Function(WatchDataStarted value) watchDataStarted,
    required TResult Function(DataReceived value) dataReceived,
  }) {
    return watchDataStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchDataStarted value)? watchDataStarted,
    TResult Function(DataReceived value)? dataReceived,
    required TResult orElse(),
  }) {
    if (watchDataStarted != null) {
      return watchDataStarted(this);
    }
    return orElse();
  }
}

abstract class WatchDataStarted implements ProfileEvent {
  const factory WatchDataStarted() = _$WatchDataStarted;
}

/// @nodoc
abstract class $DataReceivedCopyWith<$Res> {
  factory $DataReceivedCopyWith(
          DataReceived value, $Res Function(DataReceived) then) =
      _$DataReceivedCopyWithImpl<$Res>;
  $Res call({Either<UserFailure, User> failureOrUser});
}

/// @nodoc
class _$DataReceivedCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements $DataReceivedCopyWith<$Res> {
  _$DataReceivedCopyWithImpl(
      DataReceived _value, $Res Function(DataReceived) _then)
      : super(_value, (v) => _then(v as DataReceived));

  @override
  DataReceived get _value => super._value as DataReceived;

  @override
  $Res call({
    Object? failureOrUser = freezed,
  }) {
    return _then(DataReceived(
      failureOrUser == freezed
          ? _value.failureOrUser
          : failureOrUser // ignore: cast_nullable_to_non_nullable
              as Either<UserFailure, User>,
    ));
  }
}

/// @nodoc

class _$DataReceived implements DataReceived {
  const _$DataReceived(this.failureOrUser);

  @override
  final Either<UserFailure, User> failureOrUser;

  @override
  String toString() {
    return 'ProfileEvent.dataReceived(failureOrUser: $failureOrUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DataReceived &&
            (identical(other.failureOrUser, failureOrUser) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrUser, failureOrUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureOrUser);

  @JsonKey(ignore: true)
  @override
  $DataReceivedCopyWith<DataReceived> get copyWith =>
      _$DataReceivedCopyWithImpl<DataReceived>(this, _$identity);

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
    required TResult Function(WatchDataStarted value) watchDataStarted,
    required TResult Function(DataReceived value) dataReceived,
  }) {
    return dataReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchDataStarted value)? watchDataStarted,
    TResult Function(DataReceived value)? dataReceived,
    required TResult orElse(),
  }) {
    if (dataReceived != null) {
      return dataReceived(this);
    }
    return orElse();
  }
}

abstract class DataReceived implements ProfileEvent {
  const factory DataReceived(Either<UserFailure, User> failureOrUser) =
      _$DataReceived;

  Either<UserFailure, User> get failureOrUser =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataReceivedCopyWith<DataReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProfileStateTearOff {
  const _$ProfileStateTearOff();

  NoData noData() {
    return const NoData();
  }

  Data data(
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
    return Data(
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
    required TResult Function(NoData value) noData,
    required TResult Function(Data value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoData value)? noData,
    TResult Function(Data value)? data,
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
abstract class $NoDataCopyWith<$Res> {
  factory $NoDataCopyWith(NoData value, $Res Function(NoData) then) =
      _$NoDataCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoDataCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
    implements $NoDataCopyWith<$Res> {
  _$NoDataCopyWithImpl(NoData _value, $Res Function(NoData) _then)
      : super(_value, (v) => _then(v as NoData));

  @override
  NoData get _value => super._value as NoData;
}

/// @nodoc

class _$NoData implements NoData {
  const _$NoData();

  @override
  String toString() {
    return 'ProfileState.noData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoData);
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
    required TResult Function(NoData value) noData,
    required TResult Function(Data value) data,
  }) {
    return noData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoData value)? noData,
    TResult Function(Data value)? data,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(this);
    }
    return orElse();
  }
}

abstract class NoData implements ProfileState {
  const factory NoData() = _$NoData;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
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
class _$DataCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(Data _value, $Res Function(Data) _then)
      : super(_value, (v) => _then(v as Data));

  @override
  Data get _value => super._value as Data;

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
    return _then(Data(
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

class _$Data implements Data {
  const _$Data(
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
        (other is Data &&
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
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this, _$identity);

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
    required TResult Function(NoData value) noData,
    required TResult Function(Data value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoData value)? noData,
    TResult Function(Data value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class Data implements ProfileState {
  const factory Data(
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
      required int defeats}) = _$Data;

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
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}
