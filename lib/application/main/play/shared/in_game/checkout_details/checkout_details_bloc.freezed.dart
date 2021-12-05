// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'checkout_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CheckoutDetailsEventTearOff {
  const _$CheckoutDetailsEventTearOff();

  _SelectedDartsThrownUpdated selectedDartsThrownUpdated(
      {required int newSelectedDartsThrown}) {
    return _SelectedDartsThrownUpdated(
      newSelectedDartsThrown: newSelectedDartsThrown,
    );
  }

  _SelectedDartsOnDoubleUpdated selectedDartsOnDoubleUpdated(
      {required int newSelectedDartsOnDouble}) {
    return _SelectedDartsOnDoubleUpdated(
      newSelectedDartsOnDouble: newSelectedDartsOnDouble,
    );
  }

  _ConfirmPressed confirmPressed() {
    return const _ConfirmPressed();
  }
}

/// @nodoc
const $CheckoutDetailsEvent = _$CheckoutDetailsEventTearOff();

/// @nodoc
mixin _$CheckoutDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int newSelectedDartsThrown)
        selectedDartsThrownUpdated,
    required TResult Function(int newSelectedDartsOnDouble)
        selectedDartsOnDoubleUpdated,
    required TResult Function() confirmPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int newSelectedDartsThrown)? selectedDartsThrownUpdated,
    TResult Function(int newSelectedDartsOnDouble)?
        selectedDartsOnDoubleUpdated,
    TResult Function()? confirmPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int newSelectedDartsThrown)? selectedDartsThrownUpdated,
    TResult Function(int newSelectedDartsOnDouble)?
        selectedDartsOnDoubleUpdated,
    TResult Function()? confirmPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectedDartsThrownUpdated value)
        selectedDartsThrownUpdated,
    required TResult Function(_SelectedDartsOnDoubleUpdated value)
        selectedDartsOnDoubleUpdated,
    required TResult Function(_ConfirmPressed value) confirmPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SelectedDartsThrownUpdated value)?
        selectedDartsThrownUpdated,
    TResult Function(_SelectedDartsOnDoubleUpdated value)?
        selectedDartsOnDoubleUpdated,
    TResult Function(_ConfirmPressed value)? confirmPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectedDartsThrownUpdated value)?
        selectedDartsThrownUpdated,
    TResult Function(_SelectedDartsOnDoubleUpdated value)?
        selectedDartsOnDoubleUpdated,
    TResult Function(_ConfirmPressed value)? confirmPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutDetailsEventCopyWith<$Res> {
  factory $CheckoutDetailsEventCopyWith(CheckoutDetailsEvent value,
          $Res Function(CheckoutDetailsEvent) then) =
      _$CheckoutDetailsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CheckoutDetailsEventCopyWithImpl<$Res>
    implements $CheckoutDetailsEventCopyWith<$Res> {
  _$CheckoutDetailsEventCopyWithImpl(this._value, this._then);

  final CheckoutDetailsEvent _value;
  // ignore: unused_field
  final $Res Function(CheckoutDetailsEvent) _then;
}

/// @nodoc
abstract class _$SelectedDartsThrownUpdatedCopyWith<$Res> {
  factory _$SelectedDartsThrownUpdatedCopyWith(
          _SelectedDartsThrownUpdated value,
          $Res Function(_SelectedDartsThrownUpdated) then) =
      __$SelectedDartsThrownUpdatedCopyWithImpl<$Res>;
  $Res call({int newSelectedDartsThrown});
}

/// @nodoc
class __$SelectedDartsThrownUpdatedCopyWithImpl<$Res>
    extends _$CheckoutDetailsEventCopyWithImpl<$Res>
    implements _$SelectedDartsThrownUpdatedCopyWith<$Res> {
  __$SelectedDartsThrownUpdatedCopyWithImpl(_SelectedDartsThrownUpdated _value,
      $Res Function(_SelectedDartsThrownUpdated) _then)
      : super(_value, (v) => _then(v as _SelectedDartsThrownUpdated));

  @override
  _SelectedDartsThrownUpdated get _value =>
      super._value as _SelectedDartsThrownUpdated;

  @override
  $Res call({
    Object? newSelectedDartsThrown = freezed,
  }) {
    return _then(_SelectedDartsThrownUpdated(
      newSelectedDartsThrown: newSelectedDartsThrown == freezed
          ? _value.newSelectedDartsThrown
          : newSelectedDartsThrown // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SelectedDartsThrownUpdated implements _SelectedDartsThrownUpdated {
  const _$_SelectedDartsThrownUpdated({required this.newSelectedDartsThrown});

  @override
  final int newSelectedDartsThrown;

  @override
  String toString() {
    return 'CheckoutDetailsEvent.selectedDartsThrownUpdated(newSelectedDartsThrown: $newSelectedDartsThrown)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SelectedDartsThrownUpdated &&
            (identical(other.newSelectedDartsThrown, newSelectedDartsThrown) ||
                other.newSelectedDartsThrown == newSelectedDartsThrown));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newSelectedDartsThrown);

  @JsonKey(ignore: true)
  @override
  _$SelectedDartsThrownUpdatedCopyWith<_SelectedDartsThrownUpdated>
      get copyWith => __$SelectedDartsThrownUpdatedCopyWithImpl<
          _SelectedDartsThrownUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int newSelectedDartsThrown)
        selectedDartsThrownUpdated,
    required TResult Function(int newSelectedDartsOnDouble)
        selectedDartsOnDoubleUpdated,
    required TResult Function() confirmPressed,
  }) {
    return selectedDartsThrownUpdated(newSelectedDartsThrown);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int newSelectedDartsThrown)? selectedDartsThrownUpdated,
    TResult Function(int newSelectedDartsOnDouble)?
        selectedDartsOnDoubleUpdated,
    TResult Function()? confirmPressed,
  }) {
    return selectedDartsThrownUpdated?.call(newSelectedDartsThrown);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int newSelectedDartsThrown)? selectedDartsThrownUpdated,
    TResult Function(int newSelectedDartsOnDouble)?
        selectedDartsOnDoubleUpdated,
    TResult Function()? confirmPressed,
    required TResult orElse(),
  }) {
    if (selectedDartsThrownUpdated != null) {
      return selectedDartsThrownUpdated(newSelectedDartsThrown);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectedDartsThrownUpdated value)
        selectedDartsThrownUpdated,
    required TResult Function(_SelectedDartsOnDoubleUpdated value)
        selectedDartsOnDoubleUpdated,
    required TResult Function(_ConfirmPressed value) confirmPressed,
  }) {
    return selectedDartsThrownUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SelectedDartsThrownUpdated value)?
        selectedDartsThrownUpdated,
    TResult Function(_SelectedDartsOnDoubleUpdated value)?
        selectedDartsOnDoubleUpdated,
    TResult Function(_ConfirmPressed value)? confirmPressed,
  }) {
    return selectedDartsThrownUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectedDartsThrownUpdated value)?
        selectedDartsThrownUpdated,
    TResult Function(_SelectedDartsOnDoubleUpdated value)?
        selectedDartsOnDoubleUpdated,
    TResult Function(_ConfirmPressed value)? confirmPressed,
    required TResult orElse(),
  }) {
    if (selectedDartsThrownUpdated != null) {
      return selectedDartsThrownUpdated(this);
    }
    return orElse();
  }
}

abstract class _SelectedDartsThrownUpdated implements CheckoutDetailsEvent {
  const factory _SelectedDartsThrownUpdated(
      {required int newSelectedDartsThrown}) = _$_SelectedDartsThrownUpdated;

  int get newSelectedDartsThrown;
  @JsonKey(ignore: true)
  _$SelectedDartsThrownUpdatedCopyWith<_SelectedDartsThrownUpdated>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SelectedDartsOnDoubleUpdatedCopyWith<$Res> {
  factory _$SelectedDartsOnDoubleUpdatedCopyWith(
          _SelectedDartsOnDoubleUpdated value,
          $Res Function(_SelectedDartsOnDoubleUpdated) then) =
      __$SelectedDartsOnDoubleUpdatedCopyWithImpl<$Res>;
  $Res call({int newSelectedDartsOnDouble});
}

/// @nodoc
class __$SelectedDartsOnDoubleUpdatedCopyWithImpl<$Res>
    extends _$CheckoutDetailsEventCopyWithImpl<$Res>
    implements _$SelectedDartsOnDoubleUpdatedCopyWith<$Res> {
  __$SelectedDartsOnDoubleUpdatedCopyWithImpl(
      _SelectedDartsOnDoubleUpdated _value,
      $Res Function(_SelectedDartsOnDoubleUpdated) _then)
      : super(_value, (v) => _then(v as _SelectedDartsOnDoubleUpdated));

  @override
  _SelectedDartsOnDoubleUpdated get _value =>
      super._value as _SelectedDartsOnDoubleUpdated;

  @override
  $Res call({
    Object? newSelectedDartsOnDouble = freezed,
  }) {
    return _then(_SelectedDartsOnDoubleUpdated(
      newSelectedDartsOnDouble: newSelectedDartsOnDouble == freezed
          ? _value.newSelectedDartsOnDouble
          : newSelectedDartsOnDouble // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SelectedDartsOnDoubleUpdated implements _SelectedDartsOnDoubleUpdated {
  const _$_SelectedDartsOnDoubleUpdated(
      {required this.newSelectedDartsOnDouble});

  @override
  final int newSelectedDartsOnDouble;

  @override
  String toString() {
    return 'CheckoutDetailsEvent.selectedDartsOnDoubleUpdated(newSelectedDartsOnDouble: $newSelectedDartsOnDouble)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SelectedDartsOnDoubleUpdated &&
            (identical(
                    other.newSelectedDartsOnDouble, newSelectedDartsOnDouble) ||
                other.newSelectedDartsOnDouble == newSelectedDartsOnDouble));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newSelectedDartsOnDouble);

  @JsonKey(ignore: true)
  @override
  _$SelectedDartsOnDoubleUpdatedCopyWith<_SelectedDartsOnDoubleUpdated>
      get copyWith => __$SelectedDartsOnDoubleUpdatedCopyWithImpl<
          _SelectedDartsOnDoubleUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int newSelectedDartsThrown)
        selectedDartsThrownUpdated,
    required TResult Function(int newSelectedDartsOnDouble)
        selectedDartsOnDoubleUpdated,
    required TResult Function() confirmPressed,
  }) {
    return selectedDartsOnDoubleUpdated(newSelectedDartsOnDouble);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int newSelectedDartsThrown)? selectedDartsThrownUpdated,
    TResult Function(int newSelectedDartsOnDouble)?
        selectedDartsOnDoubleUpdated,
    TResult Function()? confirmPressed,
  }) {
    return selectedDartsOnDoubleUpdated?.call(newSelectedDartsOnDouble);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int newSelectedDartsThrown)? selectedDartsThrownUpdated,
    TResult Function(int newSelectedDartsOnDouble)?
        selectedDartsOnDoubleUpdated,
    TResult Function()? confirmPressed,
    required TResult orElse(),
  }) {
    if (selectedDartsOnDoubleUpdated != null) {
      return selectedDartsOnDoubleUpdated(newSelectedDartsOnDouble);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectedDartsThrownUpdated value)
        selectedDartsThrownUpdated,
    required TResult Function(_SelectedDartsOnDoubleUpdated value)
        selectedDartsOnDoubleUpdated,
    required TResult Function(_ConfirmPressed value) confirmPressed,
  }) {
    return selectedDartsOnDoubleUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SelectedDartsThrownUpdated value)?
        selectedDartsThrownUpdated,
    TResult Function(_SelectedDartsOnDoubleUpdated value)?
        selectedDartsOnDoubleUpdated,
    TResult Function(_ConfirmPressed value)? confirmPressed,
  }) {
    return selectedDartsOnDoubleUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectedDartsThrownUpdated value)?
        selectedDartsThrownUpdated,
    TResult Function(_SelectedDartsOnDoubleUpdated value)?
        selectedDartsOnDoubleUpdated,
    TResult Function(_ConfirmPressed value)? confirmPressed,
    required TResult orElse(),
  }) {
    if (selectedDartsOnDoubleUpdated != null) {
      return selectedDartsOnDoubleUpdated(this);
    }
    return orElse();
  }
}

abstract class _SelectedDartsOnDoubleUpdated implements CheckoutDetailsEvent {
  const factory _SelectedDartsOnDoubleUpdated(
          {required int newSelectedDartsOnDouble}) =
      _$_SelectedDartsOnDoubleUpdated;

  int get newSelectedDartsOnDouble;
  @JsonKey(ignore: true)
  _$SelectedDartsOnDoubleUpdatedCopyWith<_SelectedDartsOnDoubleUpdated>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ConfirmPressedCopyWith<$Res> {
  factory _$ConfirmPressedCopyWith(
          _ConfirmPressed value, $Res Function(_ConfirmPressed) then) =
      __$ConfirmPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ConfirmPressedCopyWithImpl<$Res>
    extends _$CheckoutDetailsEventCopyWithImpl<$Res>
    implements _$ConfirmPressedCopyWith<$Res> {
  __$ConfirmPressedCopyWithImpl(
      _ConfirmPressed _value, $Res Function(_ConfirmPressed) _then)
      : super(_value, (v) => _then(v as _ConfirmPressed));

  @override
  _ConfirmPressed get _value => super._value as _ConfirmPressed;
}

/// @nodoc

class _$_ConfirmPressed implements _ConfirmPressed {
  const _$_ConfirmPressed();

  @override
  String toString() {
    return 'CheckoutDetailsEvent.confirmPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ConfirmPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int newSelectedDartsThrown)
        selectedDartsThrownUpdated,
    required TResult Function(int newSelectedDartsOnDouble)
        selectedDartsOnDoubleUpdated,
    required TResult Function() confirmPressed,
  }) {
    return confirmPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int newSelectedDartsThrown)? selectedDartsThrownUpdated,
    TResult Function(int newSelectedDartsOnDouble)?
        selectedDartsOnDoubleUpdated,
    TResult Function()? confirmPressed,
  }) {
    return confirmPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int newSelectedDartsThrown)? selectedDartsThrownUpdated,
    TResult Function(int newSelectedDartsOnDouble)?
        selectedDartsOnDoubleUpdated,
    TResult Function()? confirmPressed,
    required TResult orElse(),
  }) {
    if (confirmPressed != null) {
      return confirmPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectedDartsThrownUpdated value)
        selectedDartsThrownUpdated,
    required TResult Function(_SelectedDartsOnDoubleUpdated value)
        selectedDartsOnDoubleUpdated,
    required TResult Function(_ConfirmPressed value) confirmPressed,
  }) {
    return confirmPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SelectedDartsThrownUpdated value)?
        selectedDartsThrownUpdated,
    TResult Function(_SelectedDartsOnDoubleUpdated value)?
        selectedDartsOnDoubleUpdated,
    TResult Function(_ConfirmPressed value)? confirmPressed,
  }) {
    return confirmPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectedDartsThrownUpdated value)?
        selectedDartsThrownUpdated,
    TResult Function(_SelectedDartsOnDoubleUpdated value)?
        selectedDartsOnDoubleUpdated,
    TResult Function(_ConfirmPressed value)? confirmPressed,
    required TResult orElse(),
  }) {
    if (confirmPressed != null) {
      return confirmPressed(this);
    }
    return orElse();
  }
}

abstract class _ConfirmPressed implements CheckoutDetailsEvent {
  const factory _ConfirmPressed() = _$_ConfirmPressed;
}

/// @nodoc
class _$CheckoutDetailsStateTearOff {
  const _$CheckoutDetailsStateTearOff();

  CheckoutDetailsInitial initial(
      {required int minDartsThrown,
      required int maxDartsThrown,
      required int minDartsOnDouble,
      required int maxDartsOnDouble,
      required int selectedDartsThrown,
      required int selectedDartsOnDouble}) {
    return CheckoutDetailsInitial(
      minDartsThrown: minDartsThrown,
      maxDartsThrown: maxDartsThrown,
      minDartsOnDouble: minDartsOnDouble,
      maxDartsOnDouble: maxDartsOnDouble,
      selectedDartsThrown: selectedDartsThrown,
      selectedDartsOnDouble: selectedDartsOnDouble,
    );
  }
}

/// @nodoc
const $CheckoutDetailsState = _$CheckoutDetailsStateTearOff();

/// @nodoc
mixin _$CheckoutDetailsState {
  int get minDartsThrown => throw _privateConstructorUsedError;
  int get maxDartsThrown => throw _privateConstructorUsedError;
  int get minDartsOnDouble => throw _privateConstructorUsedError;
  int get maxDartsOnDouble => throw _privateConstructorUsedError;
  int get selectedDartsThrown => throw _privateConstructorUsedError;
  int get selectedDartsOnDouble => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int minDartsThrown,
            int maxDartsThrown,
            int minDartsOnDouble,
            int maxDartsOnDouble,
            int selectedDartsThrown,
            int selectedDartsOnDouble)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            int minDartsThrown,
            int maxDartsThrown,
            int minDartsOnDouble,
            int maxDartsOnDouble,
            int selectedDartsThrown,
            int selectedDartsOnDouble)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int minDartsThrown,
            int maxDartsThrown,
            int minDartsOnDouble,
            int maxDartsOnDouble,
            int selectedDartsThrown,
            int selectedDartsOnDouble)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckoutDetailsInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CheckoutDetailsInitial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckoutDetailsInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckoutDetailsStateCopyWith<CheckoutDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutDetailsStateCopyWith<$Res> {
  factory $CheckoutDetailsStateCopyWith(CheckoutDetailsState value,
          $Res Function(CheckoutDetailsState) then) =
      _$CheckoutDetailsStateCopyWithImpl<$Res>;
  $Res call(
      {int minDartsThrown,
      int maxDartsThrown,
      int minDartsOnDouble,
      int maxDartsOnDouble,
      int selectedDartsThrown,
      int selectedDartsOnDouble});
}

/// @nodoc
class _$CheckoutDetailsStateCopyWithImpl<$Res>
    implements $CheckoutDetailsStateCopyWith<$Res> {
  _$CheckoutDetailsStateCopyWithImpl(this._value, this._then);

  final CheckoutDetailsState _value;
  // ignore: unused_field
  final $Res Function(CheckoutDetailsState) _then;

  @override
  $Res call({
    Object? minDartsThrown = freezed,
    Object? maxDartsThrown = freezed,
    Object? minDartsOnDouble = freezed,
    Object? maxDartsOnDouble = freezed,
    Object? selectedDartsThrown = freezed,
    Object? selectedDartsOnDouble = freezed,
  }) {
    return _then(_value.copyWith(
      minDartsThrown: minDartsThrown == freezed
          ? _value.minDartsThrown
          : minDartsThrown // ignore: cast_nullable_to_non_nullable
              as int,
      maxDartsThrown: maxDartsThrown == freezed
          ? _value.maxDartsThrown
          : maxDartsThrown // ignore: cast_nullable_to_non_nullable
              as int,
      minDartsOnDouble: minDartsOnDouble == freezed
          ? _value.minDartsOnDouble
          : minDartsOnDouble // ignore: cast_nullable_to_non_nullable
              as int,
      maxDartsOnDouble: maxDartsOnDouble == freezed
          ? _value.maxDartsOnDouble
          : maxDartsOnDouble // ignore: cast_nullable_to_non_nullable
              as int,
      selectedDartsThrown: selectedDartsThrown == freezed
          ? _value.selectedDartsThrown
          : selectedDartsThrown // ignore: cast_nullable_to_non_nullable
              as int,
      selectedDartsOnDouble: selectedDartsOnDouble == freezed
          ? _value.selectedDartsOnDouble
          : selectedDartsOnDouble // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $CheckoutDetailsInitialCopyWith<$Res>
    implements $CheckoutDetailsStateCopyWith<$Res> {
  factory $CheckoutDetailsInitialCopyWith(CheckoutDetailsInitial value,
          $Res Function(CheckoutDetailsInitial) then) =
      _$CheckoutDetailsInitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {int minDartsThrown,
      int maxDartsThrown,
      int minDartsOnDouble,
      int maxDartsOnDouble,
      int selectedDartsThrown,
      int selectedDartsOnDouble});
}

/// @nodoc
class _$CheckoutDetailsInitialCopyWithImpl<$Res>
    extends _$CheckoutDetailsStateCopyWithImpl<$Res>
    implements $CheckoutDetailsInitialCopyWith<$Res> {
  _$CheckoutDetailsInitialCopyWithImpl(CheckoutDetailsInitial _value,
      $Res Function(CheckoutDetailsInitial) _then)
      : super(_value, (v) => _then(v as CheckoutDetailsInitial));

  @override
  CheckoutDetailsInitial get _value => super._value as CheckoutDetailsInitial;

  @override
  $Res call({
    Object? minDartsThrown = freezed,
    Object? maxDartsThrown = freezed,
    Object? minDartsOnDouble = freezed,
    Object? maxDartsOnDouble = freezed,
    Object? selectedDartsThrown = freezed,
    Object? selectedDartsOnDouble = freezed,
  }) {
    return _then(CheckoutDetailsInitial(
      minDartsThrown: minDartsThrown == freezed
          ? _value.minDartsThrown
          : minDartsThrown // ignore: cast_nullable_to_non_nullable
              as int,
      maxDartsThrown: maxDartsThrown == freezed
          ? _value.maxDartsThrown
          : maxDartsThrown // ignore: cast_nullable_to_non_nullable
              as int,
      minDartsOnDouble: minDartsOnDouble == freezed
          ? _value.minDartsOnDouble
          : minDartsOnDouble // ignore: cast_nullable_to_non_nullable
              as int,
      maxDartsOnDouble: maxDartsOnDouble == freezed
          ? _value.maxDartsOnDouble
          : maxDartsOnDouble // ignore: cast_nullable_to_non_nullable
              as int,
      selectedDartsThrown: selectedDartsThrown == freezed
          ? _value.selectedDartsThrown
          : selectedDartsThrown // ignore: cast_nullable_to_non_nullable
              as int,
      selectedDartsOnDouble: selectedDartsOnDouble == freezed
          ? _value.selectedDartsOnDouble
          : selectedDartsOnDouble // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CheckoutDetailsInitial implements CheckoutDetailsInitial {
  const _$CheckoutDetailsInitial(
      {required this.minDartsThrown,
      required this.maxDartsThrown,
      required this.minDartsOnDouble,
      required this.maxDartsOnDouble,
      required this.selectedDartsThrown,
      required this.selectedDartsOnDouble});

  @override
  final int minDartsThrown;
  @override
  final int maxDartsThrown;
  @override
  final int minDartsOnDouble;
  @override
  final int maxDartsOnDouble;
  @override
  final int selectedDartsThrown;
  @override
  final int selectedDartsOnDouble;

  @override
  String toString() {
    return 'CheckoutDetailsState.initial(minDartsThrown: $minDartsThrown, maxDartsThrown: $maxDartsThrown, minDartsOnDouble: $minDartsOnDouble, maxDartsOnDouble: $maxDartsOnDouble, selectedDartsThrown: $selectedDartsThrown, selectedDartsOnDouble: $selectedDartsOnDouble)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CheckoutDetailsInitial &&
            (identical(other.minDartsThrown, minDartsThrown) ||
                other.minDartsThrown == minDartsThrown) &&
            (identical(other.maxDartsThrown, maxDartsThrown) ||
                other.maxDartsThrown == maxDartsThrown) &&
            (identical(other.minDartsOnDouble, minDartsOnDouble) ||
                other.minDartsOnDouble == minDartsOnDouble) &&
            (identical(other.maxDartsOnDouble, maxDartsOnDouble) ||
                other.maxDartsOnDouble == maxDartsOnDouble) &&
            (identical(other.selectedDartsThrown, selectedDartsThrown) ||
                other.selectedDartsThrown == selectedDartsThrown) &&
            (identical(other.selectedDartsOnDouble, selectedDartsOnDouble) ||
                other.selectedDartsOnDouble == selectedDartsOnDouble));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      minDartsThrown,
      maxDartsThrown,
      minDartsOnDouble,
      maxDartsOnDouble,
      selectedDartsThrown,
      selectedDartsOnDouble);

  @JsonKey(ignore: true)
  @override
  $CheckoutDetailsInitialCopyWith<CheckoutDetailsInitial> get copyWith =>
      _$CheckoutDetailsInitialCopyWithImpl<CheckoutDetailsInitial>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int minDartsThrown,
            int maxDartsThrown,
            int minDartsOnDouble,
            int maxDartsOnDouble,
            int selectedDartsThrown,
            int selectedDartsOnDouble)
        initial,
  }) {
    return initial(minDartsThrown, maxDartsThrown, minDartsOnDouble,
        maxDartsOnDouble, selectedDartsThrown, selectedDartsOnDouble);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            int minDartsThrown,
            int maxDartsThrown,
            int minDartsOnDouble,
            int maxDartsOnDouble,
            int selectedDartsThrown,
            int selectedDartsOnDouble)?
        initial,
  }) {
    return initial?.call(minDartsThrown, maxDartsThrown, minDartsOnDouble,
        maxDartsOnDouble, selectedDartsThrown, selectedDartsOnDouble);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int minDartsThrown,
            int maxDartsThrown,
            int minDartsOnDouble,
            int maxDartsOnDouble,
            int selectedDartsThrown,
            int selectedDartsOnDouble)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(minDartsThrown, maxDartsThrown, minDartsOnDouble,
          maxDartsOnDouble, selectedDartsThrown, selectedDartsOnDouble);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckoutDetailsInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CheckoutDetailsInitial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckoutDetailsInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CheckoutDetailsInitial implements CheckoutDetailsState {
  const factory CheckoutDetailsInitial(
      {required int minDartsThrown,
      required int maxDartsThrown,
      required int minDartsOnDouble,
      required int maxDartsOnDouble,
      required int selectedDartsThrown,
      required int selectedDartsOnDouble}) = _$CheckoutDetailsInitial;

  @override
  int get minDartsThrown;
  @override
  int get maxDartsThrown;
  @override
  int get minDartsOnDouble;
  @override
  int get maxDartsOnDouble;
  @override
  int get selectedDartsThrown;
  @override
  int get selectedDartsOnDouble;
  @override
  @JsonKey(ignore: true)
  $CheckoutDetailsInitialCopyWith<CheckoutDetailsInitial> get copyWith =>
      throw _privateConstructorUsedError;
}
