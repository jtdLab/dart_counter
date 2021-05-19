// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  _InvalidEmail<T> invalidEmail<T>({required T failedValue}) {
    return _InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

  _ShortUsername<T> shortUsername<T>({required T failedValue}) {
    return _ShortUsername<T>(
      failedValue: failedValue,
    );
  }

  _ShortPassword<T> shortPassword<T>({required T failedValue}) {
    return _ShortPassword<T>(
      failedValue: failedValue,
    );
  }

  _ListTooLong<T> listTooLong<T>({required T failedValue, required int max}) {
    return _ListTooLong<T>(
      failedValue: failedValue,
      max: max,
    );
  }
}

/// @nodoc
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortUsername,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue, int max) listTooLong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortUsername,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue, int max)? listTooLong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_ShortUsername<T> value) shortUsername,
    required TResult Function(_ShortPassword<T> value) shortPassword,
    required TResult Function(_ListTooLong<T> value) listTooLong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_ShortUsername<T> value)? shortUsername,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    TResult Function(_ListTooLong<T> value)? listTooLong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
abstract class _$InvalidEmailCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$InvalidEmailCopyWith(
          _InvalidEmail<T> value, $Res Function(_InvalidEmail<T>) then) =
      __$InvalidEmailCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$InvalidEmailCopyWith<T, $Res> {
  __$InvalidEmailCopyWithImpl(
      _InvalidEmail<T> _value, $Res Function(_InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as _InvalidEmail<T>));

  @override
  _InvalidEmail<T> get _value => super._value as _InvalidEmail<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_InvalidEmail<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
class _$_InvalidEmail<T> implements _InvalidEmail<T> {
  const _$_InvalidEmail({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidEmail<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  _$InvalidEmailCopyWith<T, _InvalidEmail<T>> get copyWith =>
      __$InvalidEmailCopyWithImpl<T, _InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortUsername,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue, int max) listTooLong,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortUsername,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue, int max)? listTooLong,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_ShortUsername<T> value) shortUsername,
    required TResult Function(_ShortPassword<T> value) shortPassword,
    required TResult Function(_ListTooLong<T> value) listTooLong,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_ShortUsername<T> value)? shortUsername,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    TResult Function(_ListTooLong<T> value)? listTooLong,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class _InvalidEmail<T> implements ValueFailure<T> {
  const factory _InvalidEmail({required T failedValue}) = _$_InvalidEmail<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InvalidEmailCopyWith<T, _InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ShortUsernameCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$ShortUsernameCopyWith(
          _ShortUsername<T> value, $Res Function(_ShortUsername<T>) then) =
      __$ShortUsernameCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$ShortUsernameCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$ShortUsernameCopyWith<T, $Res> {
  __$ShortUsernameCopyWithImpl(
      _ShortUsername<T> _value, $Res Function(_ShortUsername<T>) _then)
      : super(_value, (v) => _then(v as _ShortUsername<T>));

  @override
  _ShortUsername<T> get _value => super._value as _ShortUsername<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_ShortUsername<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
class _$_ShortUsername<T> implements _ShortUsername<T> {
  const _$_ShortUsername({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortUsername(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShortUsername<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  _$ShortUsernameCopyWith<T, _ShortUsername<T>> get copyWith =>
      __$ShortUsernameCopyWithImpl<T, _ShortUsername<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortUsername,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue, int max) listTooLong,
  }) {
    return shortUsername(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortUsername,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue, int max)? listTooLong,
    required TResult orElse(),
  }) {
    if (shortUsername != null) {
      return shortUsername(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_ShortUsername<T> value) shortUsername,
    required TResult Function(_ShortPassword<T> value) shortPassword,
    required TResult Function(_ListTooLong<T> value) listTooLong,
  }) {
    return shortUsername(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_ShortUsername<T> value)? shortUsername,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    TResult Function(_ListTooLong<T> value)? listTooLong,
    required TResult orElse(),
  }) {
    if (shortUsername != null) {
      return shortUsername(this);
    }
    return orElse();
  }
}

abstract class _ShortUsername<T> implements ValueFailure<T> {
  const factory _ShortUsername({required T failedValue}) = _$_ShortUsername<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShortUsernameCopyWith<T, _ShortUsername<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ShortPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$ShortPasswordCopyWith(
          _ShortPassword<T> value, $Res Function(_ShortPassword<T>) then) =
      __$ShortPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$ShortPasswordCopyWith<T, $Res> {
  __$ShortPasswordCopyWithImpl(
      _ShortPassword<T> _value, $Res Function(_ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as _ShortPassword<T>));

  @override
  _ShortPassword<T> get _value => super._value as _ShortPassword<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_ShortPassword<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
class _$_ShortPassword<T> implements _ShortPassword<T> {
  const _$_ShortPassword({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShortPassword<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  _$ShortPasswordCopyWith<T, _ShortPassword<T>> get copyWith =>
      __$ShortPasswordCopyWithImpl<T, _ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortUsername,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue, int max) listTooLong,
  }) {
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortUsername,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue, int max)? listTooLong,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_ShortUsername<T> value) shortUsername,
    required TResult Function(_ShortPassword<T> value) shortPassword,
    required TResult Function(_ListTooLong<T> value) listTooLong,
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_ShortUsername<T> value)? shortUsername,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    TResult Function(_ListTooLong<T> value)? listTooLong,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class _ShortPassword<T> implements ValueFailure<T> {
  const factory _ShortPassword({required T failedValue}) = _$_ShortPassword<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShortPasswordCopyWith<T, _ShortPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ListTooLongCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$ListTooLongCopyWith(
          _ListTooLong<T> value, $Res Function(_ListTooLong<T>) then) =
      __$ListTooLongCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int max});
}

/// @nodoc
class __$ListTooLongCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$ListTooLongCopyWith<T, $Res> {
  __$ListTooLongCopyWithImpl(
      _ListTooLong<T> _value, $Res Function(_ListTooLong<T>) _then)
      : super(_value, (v) => _then(v as _ListTooLong<T>));

  @override
  _ListTooLong<T> get _value => super._value as _ListTooLong<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? max = freezed,
  }) {
    return _then(_ListTooLong<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$_ListTooLong<T> implements _ListTooLong<T> {
  const _$_ListTooLong({required this.failedValue, required this.max});

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.listTooLong(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListTooLong<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @JsonKey(ignore: true)
  @override
  _$ListTooLongCopyWith<T, _ListTooLong<T>> get copyWith =>
      __$ListTooLongCopyWithImpl<T, _ListTooLong<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortUsername,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue, int max) listTooLong,
  }) {
    return listTooLong(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortUsername,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue, int max)? listTooLong,
    required TResult orElse(),
  }) {
    if (listTooLong != null) {
      return listTooLong(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_ShortUsername<T> value) shortUsername,
    required TResult Function(_ShortPassword<T> value) shortPassword,
    required TResult Function(_ListTooLong<T> value) listTooLong,
  }) {
    return listTooLong(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_ShortUsername<T> value)? shortUsername,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    TResult Function(_ListTooLong<T> value)? listTooLong,
    required TResult orElse(),
  }) {
    if (listTooLong != null) {
      return listTooLong(this);
    }
    return orElse();
  }
}

abstract class _ListTooLong<T> implements ValueFailure<T> {
  const factory _ListTooLong({required T failedValue, required int max}) =
      _$_ListTooLong<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  int get max => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ListTooLongCopyWith<T, _ListTooLong<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
