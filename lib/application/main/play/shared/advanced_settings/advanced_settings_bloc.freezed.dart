// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'advanced_settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AdvancedSettingsEventTearOff {
  const _$AdvancedSettingsEventTearOff();

  _Started started() {
    return const _Started();
  }
}

/// @nodoc
const $AdvancedSettingsEvent = _$AdvancedSettingsEventTearOff();

/// @nodoc
mixin _$AdvancedSettingsEvent {
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
abstract class $AdvancedSettingsEventCopyWith<$Res> {
  factory $AdvancedSettingsEventCopyWith(AdvancedSettingsEvent value,
          $Res Function(AdvancedSettingsEvent) then) =
      _$AdvancedSettingsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AdvancedSettingsEventCopyWithImpl<$Res>
    implements $AdvancedSettingsEventCopyWith<$Res> {
  _$AdvancedSettingsEventCopyWithImpl(this._value, this._then);

  final AdvancedSettingsEvent _value;
  // ignore: unused_field
  final $Res Function(AdvancedSettingsEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$AdvancedSettingsEventCopyWithImpl<$Res>
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
    return 'AdvancedSettingsEvent.started()';
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

abstract class _Started implements AdvancedSettingsEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
class _$AdvancedSettingsStateTearOff {
  const _$AdvancedSettingsStateTearOff();

  AdvancedSettingsCreateGame createGame(
      {required KtList<AdvancedSettings> advancedSettings}) {
    return AdvancedSettingsCreateGame(
      advancedSettings: advancedSettings,
    );
  }

  AdvancedSettingsInGame inGame(
      {required KtList<AdvancedSettings> advancedSettings,
      required AdvancedSettings currentTurnAdvancedSettings}) {
    return AdvancedSettingsInGame(
      advancedSettings: advancedSettings,
      currentTurnAdvancedSettings: currentTurnAdvancedSettings,
    );
  }
}

/// @nodoc
const $AdvancedSettingsState = _$AdvancedSettingsStateTearOff();

/// @nodoc
mixin _$AdvancedSettingsState {
  KtList<AdvancedSettings> get advancedSettings =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KtList<AdvancedSettings> advancedSettings)
        createGame,
    required TResult Function(KtList<AdvancedSettings> advancedSettings,
            AdvancedSettings currentTurnAdvancedSettings)
        inGame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(KtList<AdvancedSettings> advancedSettings)? createGame,
    TResult Function(KtList<AdvancedSettings> advancedSettings,
            AdvancedSettings currentTurnAdvancedSettings)?
        inGame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<AdvancedSettings> advancedSettings)? createGame,
    TResult Function(KtList<AdvancedSettings> advancedSettings,
            AdvancedSettings currentTurnAdvancedSettings)?
        inGame,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdvancedSettingsCreateGame value) createGame,
    required TResult Function(AdvancedSettingsInGame value) inGame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AdvancedSettingsCreateGame value)? createGame,
    TResult Function(AdvancedSettingsInGame value)? inGame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdvancedSettingsCreateGame value)? createGame,
    TResult Function(AdvancedSettingsInGame value)? inGame,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdvancedSettingsStateCopyWith<AdvancedSettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvancedSettingsStateCopyWith<$Res> {
  factory $AdvancedSettingsStateCopyWith(AdvancedSettingsState value,
          $Res Function(AdvancedSettingsState) then) =
      _$AdvancedSettingsStateCopyWithImpl<$Res>;
  $Res call({KtList<AdvancedSettings> advancedSettings});
}

/// @nodoc
class _$AdvancedSettingsStateCopyWithImpl<$Res>
    implements $AdvancedSettingsStateCopyWith<$Res> {
  _$AdvancedSettingsStateCopyWithImpl(this._value, this._then);

  final AdvancedSettingsState _value;
  // ignore: unused_field
  final $Res Function(AdvancedSettingsState) _then;

  @override
  $Res call({
    Object? advancedSettings = freezed,
  }) {
    return _then(_value.copyWith(
      advancedSettings: advancedSettings == freezed
          ? _value.advancedSettings
          : advancedSettings // ignore: cast_nullable_to_non_nullable
              as KtList<AdvancedSettings>,
    ));
  }
}

/// @nodoc
abstract class $AdvancedSettingsCreateGameCopyWith<$Res>
    implements $AdvancedSettingsStateCopyWith<$Res> {
  factory $AdvancedSettingsCreateGameCopyWith(AdvancedSettingsCreateGame value,
          $Res Function(AdvancedSettingsCreateGame) then) =
      _$AdvancedSettingsCreateGameCopyWithImpl<$Res>;
  @override
  $Res call({KtList<AdvancedSettings> advancedSettings});
}

/// @nodoc
class _$AdvancedSettingsCreateGameCopyWithImpl<$Res>
    extends _$AdvancedSettingsStateCopyWithImpl<$Res>
    implements $AdvancedSettingsCreateGameCopyWith<$Res> {
  _$AdvancedSettingsCreateGameCopyWithImpl(AdvancedSettingsCreateGame _value,
      $Res Function(AdvancedSettingsCreateGame) _then)
      : super(_value, (v) => _then(v as AdvancedSettingsCreateGame));

  @override
  AdvancedSettingsCreateGame get _value =>
      super._value as AdvancedSettingsCreateGame;

  @override
  $Res call({
    Object? advancedSettings = freezed,
  }) {
    return _then(AdvancedSettingsCreateGame(
      advancedSettings: advancedSettings == freezed
          ? _value.advancedSettings
          : advancedSettings // ignore: cast_nullable_to_non_nullable
              as KtList<AdvancedSettings>,
    ));
  }
}

/// @nodoc

class _$AdvancedSettingsCreateGame implements AdvancedSettingsCreateGame {
  const _$AdvancedSettingsCreateGame({required this.advancedSettings});

  @override
  final KtList<AdvancedSettings> advancedSettings;

  @override
  String toString() {
    return 'AdvancedSettingsState.createGame(advancedSettings: $advancedSettings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdvancedSettingsCreateGame &&
            (identical(other.advancedSettings, advancedSettings) ||
                other.advancedSettings == advancedSettings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, advancedSettings);

  @JsonKey(ignore: true)
  @override
  $AdvancedSettingsCreateGameCopyWith<AdvancedSettingsCreateGame>
      get copyWith =>
          _$AdvancedSettingsCreateGameCopyWithImpl<AdvancedSettingsCreateGame>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KtList<AdvancedSettings> advancedSettings)
        createGame,
    required TResult Function(KtList<AdvancedSettings> advancedSettings,
            AdvancedSettings currentTurnAdvancedSettings)
        inGame,
  }) {
    return createGame(advancedSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(KtList<AdvancedSettings> advancedSettings)? createGame,
    TResult Function(KtList<AdvancedSettings> advancedSettings,
            AdvancedSettings currentTurnAdvancedSettings)?
        inGame,
  }) {
    return createGame?.call(advancedSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<AdvancedSettings> advancedSettings)? createGame,
    TResult Function(KtList<AdvancedSettings> advancedSettings,
            AdvancedSettings currentTurnAdvancedSettings)?
        inGame,
    required TResult orElse(),
  }) {
    if (createGame != null) {
      return createGame(advancedSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdvancedSettingsCreateGame value) createGame,
    required TResult Function(AdvancedSettingsInGame value) inGame,
  }) {
    return createGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AdvancedSettingsCreateGame value)? createGame,
    TResult Function(AdvancedSettingsInGame value)? inGame,
  }) {
    return createGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdvancedSettingsCreateGame value)? createGame,
    TResult Function(AdvancedSettingsInGame value)? inGame,
    required TResult orElse(),
  }) {
    if (createGame != null) {
      return createGame(this);
    }
    return orElse();
  }
}

abstract class AdvancedSettingsCreateGame implements AdvancedSettingsState {
  const factory AdvancedSettingsCreateGame(
          {required KtList<AdvancedSettings> advancedSettings}) =
      _$AdvancedSettingsCreateGame;

  @override
  KtList<AdvancedSettings> get advancedSettings;
  @override
  @JsonKey(ignore: true)
  $AdvancedSettingsCreateGameCopyWith<AdvancedSettingsCreateGame>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvancedSettingsInGameCopyWith<$Res>
    implements $AdvancedSettingsStateCopyWith<$Res> {
  factory $AdvancedSettingsInGameCopyWith(AdvancedSettingsInGame value,
          $Res Function(AdvancedSettingsInGame) then) =
      _$AdvancedSettingsInGameCopyWithImpl<$Res>;
  @override
  $Res call(
      {KtList<AdvancedSettings> advancedSettings,
      AdvancedSettings currentTurnAdvancedSettings});

  $AdvancedSettingsCopyWith<$Res> get currentTurnAdvancedSettings;
}

/// @nodoc
class _$AdvancedSettingsInGameCopyWithImpl<$Res>
    extends _$AdvancedSettingsStateCopyWithImpl<$Res>
    implements $AdvancedSettingsInGameCopyWith<$Res> {
  _$AdvancedSettingsInGameCopyWithImpl(AdvancedSettingsInGame _value,
      $Res Function(AdvancedSettingsInGame) _then)
      : super(_value, (v) => _then(v as AdvancedSettingsInGame));

  @override
  AdvancedSettingsInGame get _value => super._value as AdvancedSettingsInGame;

  @override
  $Res call({
    Object? advancedSettings = freezed,
    Object? currentTurnAdvancedSettings = freezed,
  }) {
    return _then(AdvancedSettingsInGame(
      advancedSettings: advancedSettings == freezed
          ? _value.advancedSettings
          : advancedSettings // ignore: cast_nullable_to_non_nullable
              as KtList<AdvancedSettings>,
      currentTurnAdvancedSettings: currentTurnAdvancedSettings == freezed
          ? _value.currentTurnAdvancedSettings
          : currentTurnAdvancedSettings // ignore: cast_nullable_to_non_nullable
              as AdvancedSettings,
    ));
  }

  @override
  $AdvancedSettingsCopyWith<$Res> get currentTurnAdvancedSettings {
    return $AdvancedSettingsCopyWith<$Res>(_value.currentTurnAdvancedSettings,
        (value) {
      return _then(_value.copyWith(currentTurnAdvancedSettings: value));
    });
  }
}

/// @nodoc

class _$AdvancedSettingsInGame implements AdvancedSettingsInGame {
  const _$AdvancedSettingsInGame(
      {required this.advancedSettings,
      required this.currentTurnAdvancedSettings});

  @override
  final KtList<AdvancedSettings> advancedSettings;
  @override
  final AdvancedSettings currentTurnAdvancedSettings;

  @override
  String toString() {
    return 'AdvancedSettingsState.inGame(advancedSettings: $advancedSettings, currentTurnAdvancedSettings: $currentTurnAdvancedSettings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdvancedSettingsInGame &&
            (identical(other.advancedSettings, advancedSettings) ||
                other.advancedSettings == advancedSettings) &&
            (identical(other.currentTurnAdvancedSettings,
                    currentTurnAdvancedSettings) ||
                other.currentTurnAdvancedSettings ==
                    currentTurnAdvancedSettings));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, advancedSettings, currentTurnAdvancedSettings);

  @JsonKey(ignore: true)
  @override
  $AdvancedSettingsInGameCopyWith<AdvancedSettingsInGame> get copyWith =>
      _$AdvancedSettingsInGameCopyWithImpl<AdvancedSettingsInGame>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KtList<AdvancedSettings> advancedSettings)
        createGame,
    required TResult Function(KtList<AdvancedSettings> advancedSettings,
            AdvancedSettings currentTurnAdvancedSettings)
        inGame,
  }) {
    return inGame(advancedSettings, currentTurnAdvancedSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(KtList<AdvancedSettings> advancedSettings)? createGame,
    TResult Function(KtList<AdvancedSettings> advancedSettings,
            AdvancedSettings currentTurnAdvancedSettings)?
        inGame,
  }) {
    return inGame?.call(advancedSettings, currentTurnAdvancedSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<AdvancedSettings> advancedSettings)? createGame,
    TResult Function(KtList<AdvancedSettings> advancedSettings,
            AdvancedSettings currentTurnAdvancedSettings)?
        inGame,
    required TResult orElse(),
  }) {
    if (inGame != null) {
      return inGame(advancedSettings, currentTurnAdvancedSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdvancedSettingsCreateGame value) createGame,
    required TResult Function(AdvancedSettingsInGame value) inGame,
  }) {
    return inGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AdvancedSettingsCreateGame value)? createGame,
    TResult Function(AdvancedSettingsInGame value)? inGame,
  }) {
    return inGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdvancedSettingsCreateGame value)? createGame,
    TResult Function(AdvancedSettingsInGame value)? inGame,
    required TResult orElse(),
  }) {
    if (inGame != null) {
      return inGame(this);
    }
    return orElse();
  }
}

abstract class AdvancedSettingsInGame implements AdvancedSettingsState {
  const factory AdvancedSettingsInGame(
          {required KtList<AdvancedSettings> advancedSettings,
          required AdvancedSettings currentTurnAdvancedSettings}) =
      _$AdvancedSettingsInGame;

  @override
  KtList<AdvancedSettings> get advancedSettings;
  AdvancedSettings get currentTurnAdvancedSettings;
  @override
  @JsonKey(ignore: true)
  $AdvancedSettingsInGameCopyWith<AdvancedSettingsInGame> get copyWith =>
      throw _privateConstructorUsedError;
}
