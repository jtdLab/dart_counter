// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'detailed_key_board_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DetailedKeyBoardEventTearOff {
  const _$DetailedKeyBoardEventTearOff();

  DartPressed dartPressed({required int value}) {
    return DartPressed(
      value: value,
    );
  }

  DartDetailPressed dartDetailPressed({required DartType type}) {
    return DartDetailPressed(
      type: type,
    );
  }
}

/// @nodoc
const $DetailedKeyBoardEvent = _$DetailedKeyBoardEventTearOff();

/// @nodoc
mixin _$DetailedKeyBoardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) dartPressed,
    required TResult Function(DartType type) dartDetailPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? dartPressed,
    TResult Function(DartType type)? dartDetailPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DartPressed value) dartPressed,
    required TResult Function(DartDetailPressed value) dartDetailPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DartPressed value)? dartPressed,
    TResult Function(DartDetailPressed value)? dartDetailPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedKeyBoardEventCopyWith<$Res> {
  factory $DetailedKeyBoardEventCopyWith(DetailedKeyBoardEvent value,
          $Res Function(DetailedKeyBoardEvent) then) =
      _$DetailedKeyBoardEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DetailedKeyBoardEventCopyWithImpl<$Res>
    implements $DetailedKeyBoardEventCopyWith<$Res> {
  _$DetailedKeyBoardEventCopyWithImpl(this._value, this._then);

  final DetailedKeyBoardEvent _value;
  // ignore: unused_field
  final $Res Function(DetailedKeyBoardEvent) _then;
}

/// @nodoc
abstract class $DartPressedCopyWith<$Res> {
  factory $DartPressedCopyWith(
          DartPressed value, $Res Function(DartPressed) then) =
      _$DartPressedCopyWithImpl<$Res>;
  $Res call({int value});
}

/// @nodoc
class _$DartPressedCopyWithImpl<$Res>
    extends _$DetailedKeyBoardEventCopyWithImpl<$Res>
    implements $DartPressedCopyWith<$Res> {
  _$DartPressedCopyWithImpl(
      DartPressed _value, $Res Function(DartPressed) _then)
      : super(_value, (v) => _then(v as DartPressed));

  @override
  DartPressed get _value => super._value as DartPressed;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(DartPressed(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DartPressed implements DartPressed {
  const _$DartPressed({required this.value});

  @override
  final int value;

  @override
  String toString() {
    return 'DetailedKeyBoardEvent.dartPressed(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DartPressed &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  $DartPressedCopyWith<DartPressed> get copyWith =>
      _$DartPressedCopyWithImpl<DartPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) dartPressed,
    required TResult Function(DartType type) dartDetailPressed,
  }) {
    return dartPressed(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? dartPressed,
    TResult Function(DartType type)? dartDetailPressed,
    required TResult orElse(),
  }) {
    if (dartPressed != null) {
      return dartPressed(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DartPressed value) dartPressed,
    required TResult Function(DartDetailPressed value) dartDetailPressed,
  }) {
    return dartPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DartPressed value)? dartPressed,
    TResult Function(DartDetailPressed value)? dartDetailPressed,
    required TResult orElse(),
  }) {
    if (dartPressed != null) {
      return dartPressed(this);
    }
    return orElse();
  }
}

abstract class DartPressed implements DetailedKeyBoardEvent {
  const factory DartPressed({required int value}) = _$DartPressed;

  int get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DartPressedCopyWith<DartPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DartDetailPressedCopyWith<$Res> {
  factory $DartDetailPressedCopyWith(
          DartDetailPressed value, $Res Function(DartDetailPressed) then) =
      _$DartDetailPressedCopyWithImpl<$Res>;
  $Res call({DartType type});
}

/// @nodoc
class _$DartDetailPressedCopyWithImpl<$Res>
    extends _$DetailedKeyBoardEventCopyWithImpl<$Res>
    implements $DartDetailPressedCopyWith<$Res> {
  _$DartDetailPressedCopyWithImpl(
      DartDetailPressed _value, $Res Function(DartDetailPressed) _then)
      : super(_value, (v) => _then(v as DartDetailPressed));

  @override
  DartDetailPressed get _value => super._value as DartDetailPressed;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(DartDetailPressed(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DartType,
    ));
  }
}

/// @nodoc

class _$DartDetailPressed implements DartDetailPressed {
  const _$DartDetailPressed({required this.type});

  @override
  final DartType type;

  @override
  String toString() {
    return 'DetailedKeyBoardEvent.dartDetailPressed(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DartDetailPressed &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  $DartDetailPressedCopyWith<DartDetailPressed> get copyWith =>
      _$DartDetailPressedCopyWithImpl<DartDetailPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) dartPressed,
    required TResult Function(DartType type) dartDetailPressed,
  }) {
    return dartDetailPressed(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? dartPressed,
    TResult Function(DartType type)? dartDetailPressed,
    required TResult orElse(),
  }) {
    if (dartDetailPressed != null) {
      return dartDetailPressed(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DartPressed value) dartPressed,
    required TResult Function(DartDetailPressed value) dartDetailPressed,
  }) {
    return dartDetailPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DartPressed value)? dartPressed,
    TResult Function(DartDetailPressed value)? dartDetailPressed,
    required TResult orElse(),
  }) {
    if (dartDetailPressed != null) {
      return dartDetailPressed(this);
    }
    return orElse();
  }
}

abstract class DartDetailPressed implements DetailedKeyBoardEvent {
  const factory DartDetailPressed({required DartType type}) =
      _$DartDetailPressed;

  DartType get type => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DartDetailPressedCopyWith<DartDetailPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$DetailedKeyBoardStateTearOff {
  const _$DetailedKeyBoardStateTearOff();

  _DetailedKeyBoardState call(
      {int? focusedValue, required KtList<Dart> darts}) {
    return _DetailedKeyBoardState(
      focusedValue: focusedValue,
      darts: darts,
    );
  }
}

/// @nodoc
const $DetailedKeyBoardState = _$DetailedKeyBoardStateTearOff();

/// @nodoc
mixin _$DetailedKeyBoardState {
  int? get focusedValue => throw _privateConstructorUsedError;
  KtList<Dart> get darts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailedKeyBoardStateCopyWith<DetailedKeyBoardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedKeyBoardStateCopyWith<$Res> {
  factory $DetailedKeyBoardStateCopyWith(DetailedKeyBoardState value,
          $Res Function(DetailedKeyBoardState) then) =
      _$DetailedKeyBoardStateCopyWithImpl<$Res>;
  $Res call({int? focusedValue, KtList<Dart> darts});
}

/// @nodoc
class _$DetailedKeyBoardStateCopyWithImpl<$Res>
    implements $DetailedKeyBoardStateCopyWith<$Res> {
  _$DetailedKeyBoardStateCopyWithImpl(this._value, this._then);

  final DetailedKeyBoardState _value;
  // ignore: unused_field
  final $Res Function(DetailedKeyBoardState) _then;

  @override
  $Res call({
    Object? focusedValue = freezed,
    Object? darts = freezed,
  }) {
    return _then(_value.copyWith(
      focusedValue: focusedValue == freezed
          ? _value.focusedValue
          : focusedValue // ignore: cast_nullable_to_non_nullable
              as int?,
      darts: darts == freezed
          ? _value.darts
          : darts // ignore: cast_nullable_to_non_nullable
              as KtList<Dart>,
    ));
  }
}

/// @nodoc
abstract class _$DetailedKeyBoardStateCopyWith<$Res>
    implements $DetailedKeyBoardStateCopyWith<$Res> {
  factory _$DetailedKeyBoardStateCopyWith(_DetailedKeyBoardState value,
          $Res Function(_DetailedKeyBoardState) then) =
      __$DetailedKeyBoardStateCopyWithImpl<$Res>;
  @override
  $Res call({int? focusedValue, KtList<Dart> darts});
}

/// @nodoc
class __$DetailedKeyBoardStateCopyWithImpl<$Res>
    extends _$DetailedKeyBoardStateCopyWithImpl<$Res>
    implements _$DetailedKeyBoardStateCopyWith<$Res> {
  __$DetailedKeyBoardStateCopyWithImpl(_DetailedKeyBoardState _value,
      $Res Function(_DetailedKeyBoardState) _then)
      : super(_value, (v) => _then(v as _DetailedKeyBoardState));

  @override
  _DetailedKeyBoardState get _value => super._value as _DetailedKeyBoardState;

  @override
  $Res call({
    Object? focusedValue = freezed,
    Object? darts = freezed,
  }) {
    return _then(_DetailedKeyBoardState(
      focusedValue: focusedValue == freezed
          ? _value.focusedValue
          : focusedValue // ignore: cast_nullable_to_non_nullable
              as int?,
      darts: darts == freezed
          ? _value.darts
          : darts // ignore: cast_nullable_to_non_nullable
              as KtList<Dart>,
    ));
  }
}

/// @nodoc

class _$_DetailedKeyBoardState implements _DetailedKeyBoardState {
  const _$_DetailedKeyBoardState({this.focusedValue, required this.darts});

  @override
  final int? focusedValue;
  @override
  final KtList<Dart> darts;

  @override
  String toString() {
    return 'DetailedKeyBoardState(focusedValue: $focusedValue, darts: $darts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DetailedKeyBoardState &&
            (identical(other.focusedValue, focusedValue) ||
                const DeepCollectionEquality()
                    .equals(other.focusedValue, focusedValue)) &&
            (identical(other.darts, darts) ||
                const DeepCollectionEquality().equals(other.darts, darts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(focusedValue) ^
      const DeepCollectionEquality().hash(darts);

  @JsonKey(ignore: true)
  @override
  _$DetailedKeyBoardStateCopyWith<_DetailedKeyBoardState> get copyWith =>
      __$DetailedKeyBoardStateCopyWithImpl<_DetailedKeyBoardState>(
          this, _$identity);
}

abstract class _DetailedKeyBoardState implements DetailedKeyBoardState {
  const factory _DetailedKeyBoardState(
      {int? focusedValue,
      required KtList<Dart> darts}) = _$_DetailedKeyBoardState;

  @override
  int? get focusedValue => throw _privateConstructorUsedError;
  @override
  KtList<Dart> get darts => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DetailedKeyBoardStateCopyWith<_DetailedKeyBoardState> get copyWith =>
      throw _privateConstructorUsedError;
}
