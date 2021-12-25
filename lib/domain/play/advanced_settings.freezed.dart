// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'advanced_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AdvancedSettingsTearOff {
  const _$AdvancedSettingsTearOff();

  _AdvancedSettings call(
      {required UniqueId playerId,
      required bool showAverage,
      required bool checkoutPercentage,
      required bool smartKeyBoardActivated}) {
    return _AdvancedSettings(
      playerId: playerId,
      showAverage: showAverage,
      checkoutPercentage: checkoutPercentage,
      smartKeyBoardActivated: smartKeyBoardActivated,
    );
  }
}

/// @nodoc
const $AdvancedSettings = _$AdvancedSettingsTearOff();

/// @nodoc
mixin _$AdvancedSettings {
  UniqueId get playerId => throw _privateConstructorUsedError;
  bool get showAverage => throw _privateConstructorUsedError;
  bool get checkoutPercentage => throw _privateConstructorUsedError;
  bool get smartKeyBoardActivated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdvancedSettingsCopyWith<AdvancedSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvancedSettingsCopyWith<$Res> {
  factory $AdvancedSettingsCopyWith(
          AdvancedSettings value, $Res Function(AdvancedSettings) then) =
      _$AdvancedSettingsCopyWithImpl<$Res>;
  $Res call(
      {UniqueId playerId,
      bool showAverage,
      bool checkoutPercentage,
      bool smartKeyBoardActivated});
}

/// @nodoc
class _$AdvancedSettingsCopyWithImpl<$Res>
    implements $AdvancedSettingsCopyWith<$Res> {
  _$AdvancedSettingsCopyWithImpl(this._value, this._then);

  final AdvancedSettings _value;
  // ignore: unused_field
  final $Res Function(AdvancedSettings) _then;

  @override
  $Res call({
    Object? playerId = freezed,
    Object? showAverage = freezed,
    Object? checkoutPercentage = freezed,
    Object? smartKeyBoardActivated = freezed,
  }) {
    return _then(_value.copyWith(
      playerId: playerId == freezed
          ? _value.playerId
          : playerId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      showAverage: showAverage == freezed
          ? _value.showAverage
          : showAverage // ignore: cast_nullable_to_non_nullable
              as bool,
      checkoutPercentage: checkoutPercentage == freezed
          ? _value.checkoutPercentage
          : checkoutPercentage // ignore: cast_nullable_to_non_nullable
              as bool,
      smartKeyBoardActivated: smartKeyBoardActivated == freezed
          ? _value.smartKeyBoardActivated
          : smartKeyBoardActivated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$AdvancedSettingsCopyWith<$Res>
    implements $AdvancedSettingsCopyWith<$Res> {
  factory _$AdvancedSettingsCopyWith(
          _AdvancedSettings value, $Res Function(_AdvancedSettings) then) =
      __$AdvancedSettingsCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId playerId,
      bool showAverage,
      bool checkoutPercentage,
      bool smartKeyBoardActivated});
}

/// @nodoc
class __$AdvancedSettingsCopyWithImpl<$Res>
    extends _$AdvancedSettingsCopyWithImpl<$Res>
    implements _$AdvancedSettingsCopyWith<$Res> {
  __$AdvancedSettingsCopyWithImpl(
      _AdvancedSettings _value, $Res Function(_AdvancedSettings) _then)
      : super(_value, (v) => _then(v as _AdvancedSettings));

  @override
  _AdvancedSettings get _value => super._value as _AdvancedSettings;

  @override
  $Res call({
    Object? playerId = freezed,
    Object? showAverage = freezed,
    Object? checkoutPercentage = freezed,
    Object? smartKeyBoardActivated = freezed,
  }) {
    return _then(_AdvancedSettings(
      playerId: playerId == freezed
          ? _value.playerId
          : playerId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      showAverage: showAverage == freezed
          ? _value.showAverage
          : showAverage // ignore: cast_nullable_to_non_nullable
              as bool,
      checkoutPercentage: checkoutPercentage == freezed
          ? _value.checkoutPercentage
          : checkoutPercentage // ignore: cast_nullable_to_non_nullable
              as bool,
      smartKeyBoardActivated: smartKeyBoardActivated == freezed
          ? _value.smartKeyBoardActivated
          : smartKeyBoardActivated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AdvancedSettings implements _AdvancedSettings {
  const _$_AdvancedSettings(
      {required this.playerId,
      required this.showAverage,
      required this.checkoutPercentage,
      required this.smartKeyBoardActivated});

  @override
  final UniqueId playerId;
  @override
  final bool showAverage;
  @override
  final bool checkoutPercentage;
  @override
  final bool smartKeyBoardActivated;

  @override
  String toString() {
    return 'AdvancedSettings(playerId: $playerId, showAverage: $showAverage, checkoutPercentage: $checkoutPercentage, smartKeyBoardActivated: $smartKeyBoardActivated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdvancedSettings &&
            (identical(other.playerId, playerId) ||
                other.playerId == playerId) &&
            (identical(other.showAverage, showAverage) ||
                other.showAverage == showAverage) &&
            (identical(other.checkoutPercentage, checkoutPercentage) ||
                other.checkoutPercentage == checkoutPercentage) &&
            (identical(other.smartKeyBoardActivated, smartKeyBoardActivated) ||
                other.smartKeyBoardActivated == smartKeyBoardActivated));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playerId, showAverage,
      checkoutPercentage, smartKeyBoardActivated);

  @JsonKey(ignore: true)
  @override
  _$AdvancedSettingsCopyWith<_AdvancedSettings> get copyWith =>
      __$AdvancedSettingsCopyWithImpl<_AdvancedSettings>(this, _$identity);
}

abstract class _AdvancedSettings implements AdvancedSettings {
  const factory _AdvancedSettings(
      {required UniqueId playerId,
      required bool showAverage,
      required bool checkoutPercentage,
      required bool smartKeyBoardActivated}) = _$_AdvancedSettings;

  @override
  UniqueId get playerId;
  @override
  bool get showAverage;
  @override
  bool get checkoutPercentage;
  @override
  bool get smartKeyBoardActivated;
  @override
  @JsonKey(ignore: true)
  _$AdvancedSettingsCopyWith<_AdvancedSettings> get copyWith =>
      throw _privateConstructorUsedError;
}
