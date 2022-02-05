// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'in_game_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InGameEventTearOff {
  const _$InGameEventTearOff();

  ShowCheckoutDetailsChanged showCheckoutDetailsChanged(
      {required bool newShowCheckoutDetails}) {
    return ShowCheckoutDetailsChanged(
      newShowCheckoutDetails: newShowCheckoutDetails,
    );
  }

  Canceled canceled() {
    return const Canceled();
  }
}

/// @nodoc
const $InGameEvent = _$InGameEventTearOff();

/// @nodoc
mixin _$InGameEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool newShowCheckoutDetails)
        showCheckoutDetailsChanged,
    required TResult Function() canceled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool newShowCheckoutDetails)? showCheckoutDetailsChanged,
    TResult Function()? canceled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool newShowCheckoutDetails)? showCheckoutDetailsChanged,
    TResult Function()? canceled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowCheckoutDetailsChanged value)
        showCheckoutDetailsChanged,
    required TResult Function(Canceled value) canceled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowCheckoutDetailsChanged value)?
        showCheckoutDetailsChanged,
    TResult Function(Canceled value)? canceled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowCheckoutDetailsChanged value)?
        showCheckoutDetailsChanged,
    TResult Function(Canceled value)? canceled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InGameEventCopyWith<$Res> {
  factory $InGameEventCopyWith(
          InGameEvent value, $Res Function(InGameEvent) then) =
      _$InGameEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InGameEventCopyWithImpl<$Res> implements $InGameEventCopyWith<$Res> {
  _$InGameEventCopyWithImpl(this._value, this._then);

  final InGameEvent _value;
  // ignore: unused_field
  final $Res Function(InGameEvent) _then;
}

/// @nodoc
abstract class $ShowCheckoutDetailsChangedCopyWith<$Res> {
  factory $ShowCheckoutDetailsChangedCopyWith(ShowCheckoutDetailsChanged value,
          $Res Function(ShowCheckoutDetailsChanged) then) =
      _$ShowCheckoutDetailsChangedCopyWithImpl<$Res>;
  $Res call({bool newShowCheckoutDetails});
}

/// @nodoc
class _$ShowCheckoutDetailsChangedCopyWithImpl<$Res>
    extends _$InGameEventCopyWithImpl<$Res>
    implements $ShowCheckoutDetailsChangedCopyWith<$Res> {
  _$ShowCheckoutDetailsChangedCopyWithImpl(ShowCheckoutDetailsChanged _value,
      $Res Function(ShowCheckoutDetailsChanged) _then)
      : super(_value, (v) => _then(v as ShowCheckoutDetailsChanged));

  @override
  ShowCheckoutDetailsChanged get _value =>
      super._value as ShowCheckoutDetailsChanged;

  @override
  $Res call({
    Object? newShowCheckoutDetails = freezed,
  }) {
    return _then(ShowCheckoutDetailsChanged(
      newShowCheckoutDetails: newShowCheckoutDetails == freezed
          ? _value.newShowCheckoutDetails
          : newShowCheckoutDetails // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ShowCheckoutDetailsChanged implements ShowCheckoutDetailsChanged {
  const _$ShowCheckoutDetailsChanged({required this.newShowCheckoutDetails});

  @override
  final bool newShowCheckoutDetails;

  @override
  String toString() {
    return 'InGameEvent.showCheckoutDetailsChanged(newShowCheckoutDetails: $newShowCheckoutDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShowCheckoutDetailsChanged &&
            const DeepCollectionEquality()
                .equals(other.newShowCheckoutDetails, newShowCheckoutDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(newShowCheckoutDetails));

  @JsonKey(ignore: true)
  @override
  $ShowCheckoutDetailsChangedCopyWith<ShowCheckoutDetailsChanged>
      get copyWith =>
          _$ShowCheckoutDetailsChangedCopyWithImpl<ShowCheckoutDetailsChanged>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool newShowCheckoutDetails)
        showCheckoutDetailsChanged,
    required TResult Function() canceled,
  }) {
    return showCheckoutDetailsChanged(newShowCheckoutDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool newShowCheckoutDetails)? showCheckoutDetailsChanged,
    TResult Function()? canceled,
  }) {
    return showCheckoutDetailsChanged?.call(newShowCheckoutDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool newShowCheckoutDetails)? showCheckoutDetailsChanged,
    TResult Function()? canceled,
    required TResult orElse(),
  }) {
    if (showCheckoutDetailsChanged != null) {
      return showCheckoutDetailsChanged(newShowCheckoutDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowCheckoutDetailsChanged value)
        showCheckoutDetailsChanged,
    required TResult Function(Canceled value) canceled,
  }) {
    return showCheckoutDetailsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowCheckoutDetailsChanged value)?
        showCheckoutDetailsChanged,
    TResult Function(Canceled value)? canceled,
  }) {
    return showCheckoutDetailsChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowCheckoutDetailsChanged value)?
        showCheckoutDetailsChanged,
    TResult Function(Canceled value)? canceled,
    required TResult orElse(),
  }) {
    if (showCheckoutDetailsChanged != null) {
      return showCheckoutDetailsChanged(this);
    }
    return orElse();
  }
}

abstract class ShowCheckoutDetailsChanged implements InGameEvent {
  const factory ShowCheckoutDetailsChanged(
      {required bool newShowCheckoutDetails}) = _$ShowCheckoutDetailsChanged;

  bool get newShowCheckoutDetails;
  @JsonKey(ignore: true)
  $ShowCheckoutDetailsChangedCopyWith<ShowCheckoutDetailsChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CanceledCopyWith<$Res> {
  factory $CanceledCopyWith(Canceled value, $Res Function(Canceled) then) =
      _$CanceledCopyWithImpl<$Res>;
}

/// @nodoc
class _$CanceledCopyWithImpl<$Res> extends _$InGameEventCopyWithImpl<$Res>
    implements $CanceledCopyWith<$Res> {
  _$CanceledCopyWithImpl(Canceled _value, $Res Function(Canceled) _then)
      : super(_value, (v) => _then(v as Canceled));

  @override
  Canceled get _value => super._value as Canceled;
}

/// @nodoc

class _$Canceled implements Canceled {
  const _$Canceled();

  @override
  String toString() {
    return 'InGameEvent.canceled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Canceled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool newShowCheckoutDetails)
        showCheckoutDetailsChanged,
    required TResult Function() canceled,
  }) {
    return canceled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool newShowCheckoutDetails)? showCheckoutDetailsChanged,
    TResult Function()? canceled,
  }) {
    return canceled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool newShowCheckoutDetails)? showCheckoutDetailsChanged,
    TResult Function()? canceled,
    required TResult orElse(),
  }) {
    if (canceled != null) {
      return canceled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowCheckoutDetailsChanged value)
        showCheckoutDetailsChanged,
    required TResult Function(Canceled value) canceled,
  }) {
    return canceled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowCheckoutDetailsChanged value)?
        showCheckoutDetailsChanged,
    TResult Function(Canceled value)? canceled,
  }) {
    return canceled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowCheckoutDetailsChanged value)?
        showCheckoutDetailsChanged,
    TResult Function(Canceled value)? canceled,
    required TResult orElse(),
  }) {
    if (canceled != null) {
      return canceled(this);
    }
    return orElse();
  }
}

abstract class Canceled implements InGameEvent {
  const factory Canceled() = _$Canceled;
}
