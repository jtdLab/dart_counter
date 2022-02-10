// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'in_game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InGameStateTearOff {
  const _$InGameStateTearOff();

  InGameInitial initial({required bool showCheckoutDetails}) {
    return InGameInitial(
      showCheckoutDetails: showCheckoutDetails,
    );
  }
}

/// @nodoc
const $InGameState = _$InGameStateTearOff();

/// @nodoc
mixin _$InGameState {
  bool get showCheckoutDetails => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showCheckoutDetails) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool showCheckoutDetails)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showCheckoutDetails)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InGameInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InGameInitial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InGameInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InGameStateCopyWith<InGameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InGameStateCopyWith<$Res> {
  factory $InGameStateCopyWith(
          InGameState value, $Res Function(InGameState) then) =
      _$InGameStateCopyWithImpl<$Res>;
  $Res call({bool showCheckoutDetails});
}

/// @nodoc
class _$InGameStateCopyWithImpl<$Res> implements $InGameStateCopyWith<$Res> {
  _$InGameStateCopyWithImpl(this._value, this._then);

  final InGameState _value;
  // ignore: unused_field
  final $Res Function(InGameState) _then;

  @override
  $Res call({
    Object? showCheckoutDetails = freezed,
  }) {
    return _then(_value.copyWith(
      showCheckoutDetails: showCheckoutDetails == freezed
          ? _value.showCheckoutDetails
          : showCheckoutDetails // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class $InGameInitialCopyWith<$Res>
    implements $InGameStateCopyWith<$Res> {
  factory $InGameInitialCopyWith(
          InGameInitial value, $Res Function(InGameInitial) then) =
      _$InGameInitialCopyWithImpl<$Res>;
  @override
  $Res call({bool showCheckoutDetails});
}

/// @nodoc
class _$InGameInitialCopyWithImpl<$Res> extends _$InGameStateCopyWithImpl<$Res>
    implements $InGameInitialCopyWith<$Res> {
  _$InGameInitialCopyWithImpl(
      InGameInitial _value, $Res Function(InGameInitial) _then)
      : super(_value, (v) => _then(v as InGameInitial));

  @override
  InGameInitial get _value => super._value as InGameInitial;

  @override
  $Res call({
    Object? showCheckoutDetails = freezed,
  }) {
    return _then(InGameInitial(
      showCheckoutDetails: showCheckoutDetails == freezed
          ? _value.showCheckoutDetails
          : showCheckoutDetails // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InGameInitial implements InGameInitial {
  const _$InGameInitial({required this.showCheckoutDetails});

  @override
  final bool showCheckoutDetails;

  @override
  String toString() {
    return 'InGameState.initial(showCheckoutDetails: $showCheckoutDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InGameInitial &&
            const DeepCollectionEquality()
                .equals(other.showCheckoutDetails, showCheckoutDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(showCheckoutDetails));

  @JsonKey(ignore: true)
  @override
  $InGameInitialCopyWith<InGameInitial> get copyWith =>
      _$InGameInitialCopyWithImpl<InGameInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showCheckoutDetails) initial,
  }) {
    return initial(showCheckoutDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool showCheckoutDetails)? initial,
  }) {
    return initial?.call(showCheckoutDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showCheckoutDetails)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(showCheckoutDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InGameInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InGameInitial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InGameInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InGameInitial implements InGameState {
  const factory InGameInitial({required bool showCheckoutDetails}) =
      _$InGameInitial;

  @override
  bool get showCheckoutDetails;
  @override
  @JsonKey(ignore: true)
  $InGameInitialCopyWith<InGameInitial> get copyWith =>
      throw _privateConstructorUsedError;
}
