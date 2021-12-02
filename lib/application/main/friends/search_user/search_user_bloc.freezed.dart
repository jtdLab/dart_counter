// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchUserEventTearOff {
  const _$SearchUserEventTearOff();

  SearchStringChanged searchStringChanged({required String newSearchString}) {
    return SearchStringChanged(
      newSearchString: newSearchString,
    );
  }

  ClearSearchStringPressed clearSearchStringPressed() {
    return const ClearSearchStringPressed();
  }
}

/// @nodoc
const $SearchUserEvent = _$SearchUserEventTearOff();

/// @nodoc
mixin _$SearchUserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newSearchString) searchStringChanged,
    required TResult Function() clearSearchStringPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newSearchString)? searchStringChanged,
    TResult Function()? clearSearchStringPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newSearchString)? searchStringChanged,
    TResult Function()? clearSearchStringPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchStringChanged value) searchStringChanged,
    required TResult Function(ClearSearchStringPressed value)
        clearSearchStringPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchStringChanged value)? searchStringChanged,
    TResult Function(ClearSearchStringPressed value)? clearSearchStringPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchStringChanged value)? searchStringChanged,
    TResult Function(ClearSearchStringPressed value)? clearSearchStringPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchUserEventCopyWith<$Res> {
  factory $SearchUserEventCopyWith(
          SearchUserEvent value, $Res Function(SearchUserEvent) then) =
      _$SearchUserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchUserEventCopyWithImpl<$Res>
    implements $SearchUserEventCopyWith<$Res> {
  _$SearchUserEventCopyWithImpl(this._value, this._then);

  final SearchUserEvent _value;
  // ignore: unused_field
  final $Res Function(SearchUserEvent) _then;
}

/// @nodoc
abstract class $SearchStringChangedCopyWith<$Res> {
  factory $SearchStringChangedCopyWith(
          SearchStringChanged value, $Res Function(SearchStringChanged) then) =
      _$SearchStringChangedCopyWithImpl<$Res>;
  $Res call({String newSearchString});
}

/// @nodoc
class _$SearchStringChangedCopyWithImpl<$Res>
    extends _$SearchUserEventCopyWithImpl<$Res>
    implements $SearchStringChangedCopyWith<$Res> {
  _$SearchStringChangedCopyWithImpl(
      SearchStringChanged _value, $Res Function(SearchStringChanged) _then)
      : super(_value, (v) => _then(v as SearchStringChanged));

  @override
  SearchStringChanged get _value => super._value as SearchStringChanged;

  @override
  $Res call({
    Object? newSearchString = freezed,
  }) {
    return _then(SearchStringChanged(
      newSearchString: newSearchString == freezed
          ? _value.newSearchString
          : newSearchString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchStringChanged implements SearchStringChanged {
  const _$SearchStringChanged({required this.newSearchString});

  @override
  final String newSearchString;

  @override
  String toString() {
    return 'SearchUserEvent.searchStringChanged(newSearchString: $newSearchString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchStringChanged &&
            (identical(other.newSearchString, newSearchString) ||
                other.newSearchString == newSearchString));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newSearchString);

  @JsonKey(ignore: true)
  @override
  $SearchStringChangedCopyWith<SearchStringChanged> get copyWith =>
      _$SearchStringChangedCopyWithImpl<SearchStringChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newSearchString) searchStringChanged,
    required TResult Function() clearSearchStringPressed,
  }) {
    return searchStringChanged(newSearchString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newSearchString)? searchStringChanged,
    TResult Function()? clearSearchStringPressed,
  }) {
    return searchStringChanged?.call(newSearchString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newSearchString)? searchStringChanged,
    TResult Function()? clearSearchStringPressed,
    required TResult orElse(),
  }) {
    if (searchStringChanged != null) {
      return searchStringChanged(newSearchString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchStringChanged value) searchStringChanged,
    required TResult Function(ClearSearchStringPressed value)
        clearSearchStringPressed,
  }) {
    return searchStringChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchStringChanged value)? searchStringChanged,
    TResult Function(ClearSearchStringPressed value)? clearSearchStringPressed,
  }) {
    return searchStringChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchStringChanged value)? searchStringChanged,
    TResult Function(ClearSearchStringPressed value)? clearSearchStringPressed,
    required TResult orElse(),
  }) {
    if (searchStringChanged != null) {
      return searchStringChanged(this);
    }
    return orElse();
  }
}

abstract class SearchStringChanged implements SearchUserEvent {
  const factory SearchStringChanged({required String newSearchString}) =
      _$SearchStringChanged;

  String get newSearchString;
  @JsonKey(ignore: true)
  $SearchStringChangedCopyWith<SearchStringChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClearSearchStringPressedCopyWith<$Res> {
  factory $ClearSearchStringPressedCopyWith(ClearSearchStringPressed value,
          $Res Function(ClearSearchStringPressed) then) =
      _$ClearSearchStringPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ClearSearchStringPressedCopyWithImpl<$Res>
    extends _$SearchUserEventCopyWithImpl<$Res>
    implements $ClearSearchStringPressedCopyWith<$Res> {
  _$ClearSearchStringPressedCopyWithImpl(ClearSearchStringPressed _value,
      $Res Function(ClearSearchStringPressed) _then)
      : super(_value, (v) => _then(v as ClearSearchStringPressed));

  @override
  ClearSearchStringPressed get _value =>
      super._value as ClearSearchStringPressed;
}

/// @nodoc

class _$ClearSearchStringPressed implements ClearSearchStringPressed {
  const _$ClearSearchStringPressed();

  @override
  String toString() {
    return 'SearchUserEvent.clearSearchStringPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ClearSearchStringPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newSearchString) searchStringChanged,
    required TResult Function() clearSearchStringPressed,
  }) {
    return clearSearchStringPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newSearchString)? searchStringChanged,
    TResult Function()? clearSearchStringPressed,
  }) {
    return clearSearchStringPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newSearchString)? searchStringChanged,
    TResult Function()? clearSearchStringPressed,
    required TResult orElse(),
  }) {
    if (clearSearchStringPressed != null) {
      return clearSearchStringPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchStringChanged value) searchStringChanged,
    required TResult Function(ClearSearchStringPressed value)
        clearSearchStringPressed,
  }) {
    return clearSearchStringPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchStringChanged value)? searchStringChanged,
    TResult Function(ClearSearchStringPressed value)? clearSearchStringPressed,
  }) {
    return clearSearchStringPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchStringChanged value)? searchStringChanged,
    TResult Function(ClearSearchStringPressed value)? clearSearchStringPressed,
    required TResult orElse(),
  }) {
    if (clearSearchStringPressed != null) {
      return clearSearchStringPressed(this);
    }
    return orElse();
  }
}

abstract class ClearSearchStringPressed implements SearchUserEvent {
  const factory ClearSearchStringPressed() = _$ClearSearchStringPressed;
}

/// @nodoc
class _$SearchUserStateTearOff {
  const _$SearchUserStateTearOff();

  _SearchUserState call({required KtList<UserSnapshot> searchResults}) {
    return _SearchUserState(
      searchResults: searchResults,
    );
  }
}

/// @nodoc
const $SearchUserState = _$SearchUserStateTearOff();

/// @nodoc
mixin _$SearchUserState {
  KtList<UserSnapshot> get searchResults => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchUserStateCopyWith<SearchUserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchUserStateCopyWith<$Res> {
  factory $SearchUserStateCopyWith(
          SearchUserState value, $Res Function(SearchUserState) then) =
      _$SearchUserStateCopyWithImpl<$Res>;
  $Res call({KtList<UserSnapshot> searchResults});
}

/// @nodoc
class _$SearchUserStateCopyWithImpl<$Res>
    implements $SearchUserStateCopyWith<$Res> {
  _$SearchUserStateCopyWithImpl(this._value, this._then);

  final SearchUserState _value;
  // ignore: unused_field
  final $Res Function(SearchUserState) _then;

  @override
  $Res call({
    Object? searchResults = freezed,
  }) {
    return _then(_value.copyWith(
      searchResults: searchResults == freezed
          ? _value.searchResults
          : searchResults // ignore: cast_nullable_to_non_nullable
              as KtList<UserSnapshot>,
    ));
  }
}

/// @nodoc
abstract class _$SearchUserStateCopyWith<$Res>
    implements $SearchUserStateCopyWith<$Res> {
  factory _$SearchUserStateCopyWith(
          _SearchUserState value, $Res Function(_SearchUserState) then) =
      __$SearchUserStateCopyWithImpl<$Res>;
  @override
  $Res call({KtList<UserSnapshot> searchResults});
}

/// @nodoc
class __$SearchUserStateCopyWithImpl<$Res>
    extends _$SearchUserStateCopyWithImpl<$Res>
    implements _$SearchUserStateCopyWith<$Res> {
  __$SearchUserStateCopyWithImpl(
      _SearchUserState _value, $Res Function(_SearchUserState) _then)
      : super(_value, (v) => _then(v as _SearchUserState));

  @override
  _SearchUserState get _value => super._value as _SearchUserState;

  @override
  $Res call({
    Object? searchResults = freezed,
  }) {
    return _then(_SearchUserState(
      searchResults: searchResults == freezed
          ? _value.searchResults
          : searchResults // ignore: cast_nullable_to_non_nullable
              as KtList<UserSnapshot>,
    ));
  }
}

/// @nodoc

class _$_SearchUserState implements _SearchUserState {
  const _$_SearchUserState({required this.searchResults});

  @override
  final KtList<UserSnapshot> searchResults;

  @override
  String toString() {
    return 'SearchUserState(searchResults: $searchResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchUserState &&
            (identical(other.searchResults, searchResults) ||
                other.searchResults == searchResults));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchResults);

  @JsonKey(ignore: true)
  @override
  _$SearchUserStateCopyWith<_SearchUserState> get copyWith =>
      __$SearchUserStateCopyWithImpl<_SearchUserState>(this, _$identity);
}

abstract class _SearchUserState implements SearchUserState {
  const factory _SearchUserState(
      {required KtList<UserSnapshot> searchResults}) = _$_SearchUserState;

  @override
  KtList<UserSnapshot> get searchResults;
  @override
  @JsonKey(ignore: true)
  _$SearchUserStateCopyWith<_SearchUserState> get copyWith =>
      throw _privateConstructorUsedError;
}
