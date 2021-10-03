// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SettingsEventTearOff {
  const _$SettingsEventTearOff();

  SettingsDataReceived dataReceived({required User user}) {
    return SettingsDataReceived(
      user: user,
    );
  }

  SettingsLocaleChanged localeChanged() {
    return const SettingsLocaleChanged();
  }

  SettingsSignOutPressed signOutPressed() {
    return const SettingsSignOutPressed();
  }
}

/// @nodoc
const $SettingsEvent = _$SettingsEventTearOff();

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) dataReceived,
    required TResult Function() localeChanged,
    required TResult Function() signOutPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? dataReceived,
    TResult Function()? localeChanged,
    TResult Function()? signOutPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? dataReceived,
    TResult Function()? localeChanged,
    TResult Function()? signOutPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsDataReceived value) dataReceived,
    required TResult Function(SettingsLocaleChanged value) localeChanged,
    required TResult Function(SettingsSignOutPressed value) signOutPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SettingsDataReceived value)? dataReceived,
    TResult Function(SettingsLocaleChanged value)? localeChanged,
    TResult Function(SettingsSignOutPressed value)? signOutPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsDataReceived value)? dataReceived,
    TResult Function(SettingsLocaleChanged value)? localeChanged,
    TResult Function(SettingsSignOutPressed value)? signOutPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  final SettingsEvent _value;
  // ignore: unused_field
  final $Res Function(SettingsEvent) _then;
}

/// @nodoc
abstract class $SettingsDataReceivedCopyWith<$Res> {
  factory $SettingsDataReceivedCopyWith(SettingsDataReceived value,
          $Res Function(SettingsDataReceived) then) =
      _$SettingsDataReceivedCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$SettingsDataReceivedCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements $SettingsDataReceivedCopyWith<$Res> {
  _$SettingsDataReceivedCopyWithImpl(
      SettingsDataReceived _value, $Res Function(SettingsDataReceived) _then)
      : super(_value, (v) => _then(v as SettingsDataReceived));

  @override
  SettingsDataReceived get _value => super._value as SettingsDataReceived;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(SettingsDataReceived(
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

class _$SettingsDataReceived implements SettingsDataReceived {
  const _$SettingsDataReceived({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'SettingsEvent.dataReceived(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SettingsDataReceived &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $SettingsDataReceivedCopyWith<SettingsDataReceived> get copyWith =>
      _$SettingsDataReceivedCopyWithImpl<SettingsDataReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) dataReceived,
    required TResult Function() localeChanged,
    required TResult Function() signOutPressed,
  }) {
    return dataReceived(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? dataReceived,
    TResult Function()? localeChanged,
    TResult Function()? signOutPressed,
  }) {
    return dataReceived?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? dataReceived,
    TResult Function()? localeChanged,
    TResult Function()? signOutPressed,
    required TResult orElse(),
  }) {
    if (dataReceived != null) {
      return dataReceived(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsDataReceived value) dataReceived,
    required TResult Function(SettingsLocaleChanged value) localeChanged,
    required TResult Function(SettingsSignOutPressed value) signOutPressed,
  }) {
    return dataReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SettingsDataReceived value)? dataReceived,
    TResult Function(SettingsLocaleChanged value)? localeChanged,
    TResult Function(SettingsSignOutPressed value)? signOutPressed,
  }) {
    return dataReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsDataReceived value)? dataReceived,
    TResult Function(SettingsLocaleChanged value)? localeChanged,
    TResult Function(SettingsSignOutPressed value)? signOutPressed,
    required TResult orElse(),
  }) {
    if (dataReceived != null) {
      return dataReceived(this);
    }
    return orElse();
  }
}

abstract class SettingsDataReceived implements SettingsEvent {
  const factory SettingsDataReceived({required User user}) =
      _$SettingsDataReceived;

  User get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingsDataReceivedCopyWith<SettingsDataReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsLocaleChangedCopyWith<$Res> {
  factory $SettingsLocaleChangedCopyWith(SettingsLocaleChanged value,
          $Res Function(SettingsLocaleChanged) then) =
      _$SettingsLocaleChangedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsLocaleChangedCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements $SettingsLocaleChangedCopyWith<$Res> {
  _$SettingsLocaleChangedCopyWithImpl(
      SettingsLocaleChanged _value, $Res Function(SettingsLocaleChanged) _then)
      : super(_value, (v) => _then(v as SettingsLocaleChanged));

  @override
  SettingsLocaleChanged get _value => super._value as SettingsLocaleChanged;
}

/// @nodoc

class _$SettingsLocaleChanged implements SettingsLocaleChanged {
  const _$SettingsLocaleChanged();

  @override
  String toString() {
    return 'SettingsEvent.localeChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SettingsLocaleChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) dataReceived,
    required TResult Function() localeChanged,
    required TResult Function() signOutPressed,
  }) {
    return localeChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? dataReceived,
    TResult Function()? localeChanged,
    TResult Function()? signOutPressed,
  }) {
    return localeChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? dataReceived,
    TResult Function()? localeChanged,
    TResult Function()? signOutPressed,
    required TResult orElse(),
  }) {
    if (localeChanged != null) {
      return localeChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsDataReceived value) dataReceived,
    required TResult Function(SettingsLocaleChanged value) localeChanged,
    required TResult Function(SettingsSignOutPressed value) signOutPressed,
  }) {
    return localeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SettingsDataReceived value)? dataReceived,
    TResult Function(SettingsLocaleChanged value)? localeChanged,
    TResult Function(SettingsSignOutPressed value)? signOutPressed,
  }) {
    return localeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsDataReceived value)? dataReceived,
    TResult Function(SettingsLocaleChanged value)? localeChanged,
    TResult Function(SettingsSignOutPressed value)? signOutPressed,
    required TResult orElse(),
  }) {
    if (localeChanged != null) {
      return localeChanged(this);
    }
    return orElse();
  }
}

abstract class SettingsLocaleChanged implements SettingsEvent {
  const factory SettingsLocaleChanged() = _$SettingsLocaleChanged;
}

/// @nodoc
abstract class $SettingsSignOutPressedCopyWith<$Res> {
  factory $SettingsSignOutPressedCopyWith(SettingsSignOutPressed value,
          $Res Function(SettingsSignOutPressed) then) =
      _$SettingsSignOutPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsSignOutPressedCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements $SettingsSignOutPressedCopyWith<$Res> {
  _$SettingsSignOutPressedCopyWithImpl(SettingsSignOutPressed _value,
      $Res Function(SettingsSignOutPressed) _then)
      : super(_value, (v) => _then(v as SettingsSignOutPressed));

  @override
  SettingsSignOutPressed get _value => super._value as SettingsSignOutPressed;
}

/// @nodoc

class _$SettingsSignOutPressed implements SettingsSignOutPressed {
  const _$SettingsSignOutPressed();

  @override
  String toString() {
    return 'SettingsEvent.signOutPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SettingsSignOutPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) dataReceived,
    required TResult Function() localeChanged,
    required TResult Function() signOutPressed,
  }) {
    return signOutPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? dataReceived,
    TResult Function()? localeChanged,
    TResult Function()? signOutPressed,
  }) {
    return signOutPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? dataReceived,
    TResult Function()? localeChanged,
    TResult Function()? signOutPressed,
    required TResult orElse(),
  }) {
    if (signOutPressed != null) {
      return signOutPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsDataReceived value) dataReceived,
    required TResult Function(SettingsLocaleChanged value) localeChanged,
    required TResult Function(SettingsSignOutPressed value) signOutPressed,
  }) {
    return signOutPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SettingsDataReceived value)? dataReceived,
    TResult Function(SettingsLocaleChanged value)? localeChanged,
    TResult Function(SettingsSignOutPressed value)? signOutPressed,
  }) {
    return signOutPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsDataReceived value)? dataReceived,
    TResult Function(SettingsLocaleChanged value)? localeChanged,
    TResult Function(SettingsSignOutPressed value)? signOutPressed,
    required TResult orElse(),
  }) {
    if (signOutPressed != null) {
      return signOutPressed(this);
    }
    return orElse();
  }
}

abstract class SettingsSignOutPressed implements SettingsEvent {
  const factory SettingsSignOutPressed() = _$SettingsSignOutPressed;
}

/// @nodoc
class _$SettingsStateTearOff {
  const _$SettingsStateTearOff();

  SettingsInitial initial({required User user, required bool localeChanged}) {
    return SettingsInitial(
      user: user,
      localeChanged: localeChanged,
    );
  }
}

/// @nodoc
const $SettingsState = _$SettingsStateTearOff();

/// @nodoc
mixin _$SettingsState {
  User get user => throw _privateConstructorUsedError;
  bool get localeChanged => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user, bool localeChanged) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user, bool localeChanged)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user, bool localeChanged)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SettingsInitial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res>;
  $Res call({User user, bool localeChanged});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  final SettingsState _value;
  // ignore: unused_field
  final $Res Function(SettingsState) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? localeChanged = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      localeChanged: localeChanged == freezed
          ? _value.localeChanged
          : localeChanged // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class $SettingsInitialCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory $SettingsInitialCopyWith(
          SettingsInitial value, $Res Function(SettingsInitial) then) =
      _$SettingsInitialCopyWithImpl<$Res>;
  @override
  $Res call({User user, bool localeChanged});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$SettingsInitialCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsInitialCopyWith<$Res> {
  _$SettingsInitialCopyWithImpl(
      SettingsInitial _value, $Res Function(SettingsInitial) _then)
      : super(_value, (v) => _then(v as SettingsInitial));

  @override
  SettingsInitial get _value => super._value as SettingsInitial;

  @override
  $Res call({
    Object? user = freezed,
    Object? localeChanged = freezed,
  }) {
    return _then(SettingsInitial(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      localeChanged: localeChanged == freezed
          ? _value.localeChanged
          : localeChanged // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SettingsInitial implements SettingsInitial {
  const _$SettingsInitial({required this.user, required this.localeChanged});

  @override
  final User user;
  @override
  final bool localeChanged;

  @override
  String toString() {
    return 'SettingsState.initial(user: $user, localeChanged: $localeChanged)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SettingsInitial &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.localeChanged, localeChanged) ||
                const DeepCollectionEquality()
                    .equals(other.localeChanged, localeChanged)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(localeChanged);

  @JsonKey(ignore: true)
  @override
  $SettingsInitialCopyWith<SettingsInitial> get copyWith =>
      _$SettingsInitialCopyWithImpl<SettingsInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user, bool localeChanged) initial,
  }) {
    return initial(user, localeChanged);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user, bool localeChanged)? initial,
  }) {
    return initial?.call(user, localeChanged);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user, bool localeChanged)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(user, localeChanged);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SettingsInitial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SettingsInitial implements SettingsState {
  const factory SettingsInitial(
      {required User user, required bool localeChanged}) = _$SettingsInitial;

  @override
  User get user => throw _privateConstructorUsedError;
  @override
  bool get localeChanged => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SettingsInitialCopyWith<SettingsInitial> get copyWith =>
      throw _privateConstructorUsedError;
}
