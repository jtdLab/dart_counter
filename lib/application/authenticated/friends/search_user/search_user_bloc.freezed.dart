// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
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

  _SearchStringChanged searchStringChanged({required String newSearchString}) {
    return _SearchStringChanged(
      newSearchString: newSearchString,
    );
  }

  _ClearPressed clearPressed() {
    return const _ClearPressed();
  }
}

/// @nodoc
const $SearchUserEvent = _$SearchUserEventTearOff();

/// @nodoc
mixin _$SearchUserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newSearchString) searchStringChanged,
    required TResult Function() clearPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newSearchString)? searchStringChanged,
    TResult Function()? clearPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newSearchString)? searchStringChanged,
    TResult Function()? clearPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchStringChanged value) searchStringChanged,
    required TResult Function(_ClearPressed value) clearPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchStringChanged value)? searchStringChanged,
    TResult Function(_ClearPressed value)? clearPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStringChanged value)? searchStringChanged,
    TResult Function(_ClearPressed value)? clearPressed,
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
abstract class _$SearchStringChangedCopyWith<$Res> {
  factory _$SearchStringChangedCopyWith(_SearchStringChanged value,
          $Res Function(_SearchStringChanged) then) =
      __$SearchStringChangedCopyWithImpl<$Res>;
  $Res call({String newSearchString});
}

/// @nodoc
class __$SearchStringChangedCopyWithImpl<$Res>
    extends _$SearchUserEventCopyWithImpl<$Res>
    implements _$SearchStringChangedCopyWith<$Res> {
  __$SearchStringChangedCopyWithImpl(
      _SearchStringChanged _value, $Res Function(_SearchStringChanged) _then)
      : super(_value, (v) => _then(v as _SearchStringChanged));

  @override
  _SearchStringChanged get _value => super._value as _SearchStringChanged;

  @override
  $Res call({
    Object? newSearchString = freezed,
  }) {
    return _then(_SearchStringChanged(
      newSearchString: newSearchString == freezed
          ? _value.newSearchString
          : newSearchString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchStringChanged implements _SearchStringChanged {
  const _$_SearchStringChanged({required this.newSearchString});

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
            other is _SearchStringChanged &&
            const DeepCollectionEquality()
                .equals(other.newSearchString, newSearchString));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(newSearchString));

  @JsonKey(ignore: true)
  @override
  _$SearchStringChangedCopyWith<_SearchStringChanged> get copyWith =>
      __$SearchStringChangedCopyWithImpl<_SearchStringChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newSearchString) searchStringChanged,
    required TResult Function() clearPressed,
  }) {
    return searchStringChanged(newSearchString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newSearchString)? searchStringChanged,
    TResult Function()? clearPressed,
  }) {
    return searchStringChanged?.call(newSearchString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newSearchString)? searchStringChanged,
    TResult Function()? clearPressed,
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
    required TResult Function(_SearchStringChanged value) searchStringChanged,
    required TResult Function(_ClearPressed value) clearPressed,
  }) {
    return searchStringChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchStringChanged value)? searchStringChanged,
    TResult Function(_ClearPressed value)? clearPressed,
  }) {
    return searchStringChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStringChanged value)? searchStringChanged,
    TResult Function(_ClearPressed value)? clearPressed,
    required TResult orElse(),
  }) {
    if (searchStringChanged != null) {
      return searchStringChanged(this);
    }
    return orElse();
  }
}

abstract class _SearchStringChanged implements SearchUserEvent {
  const factory _SearchStringChanged({required String newSearchString}) =
      _$_SearchStringChanged;

  String get newSearchString;
  @JsonKey(ignore: true)
  _$SearchStringChangedCopyWith<_SearchStringChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ClearPressedCopyWith<$Res> {
  factory _$ClearPressedCopyWith(
          _ClearPressed value, $Res Function(_ClearPressed) then) =
      __$ClearPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ClearPressedCopyWithImpl<$Res>
    extends _$SearchUserEventCopyWithImpl<$Res>
    implements _$ClearPressedCopyWith<$Res> {
  __$ClearPressedCopyWithImpl(
      _ClearPressed _value, $Res Function(_ClearPressed) _then)
      : super(_value, (v) => _then(v as _ClearPressed));

  @override
  _ClearPressed get _value => super._value as _ClearPressed;
}

/// @nodoc

class _$_ClearPressed implements _ClearPressed {
  const _$_ClearPressed();

  @override
  String toString() {
    return 'SearchUserEvent.clearPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ClearPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newSearchString) searchStringChanged,
    required TResult Function() clearPressed,
  }) {
    return clearPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newSearchString)? searchStringChanged,
    TResult Function()? clearPressed,
  }) {
    return clearPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newSearchString)? searchStringChanged,
    TResult Function()? clearPressed,
    required TResult orElse(),
  }) {
    if (clearPressed != null) {
      return clearPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchStringChanged value) searchStringChanged,
    required TResult Function(_ClearPressed value) clearPressed,
  }) {
    return clearPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchStringChanged value)? searchStringChanged,
    TResult Function(_ClearPressed value)? clearPressed,
  }) {
    return clearPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStringChanged value)? searchStringChanged,
    TResult Function(_ClearPressed value)? clearPressed,
    required TResult orElse(),
  }) {
    if (clearPressed != null) {
      return clearPressed(this);
    }
    return orElse();
  }
}

abstract class _ClearPressed implements SearchUserEvent {
  const factory _ClearPressed() = _$_ClearPressed;
}

/// @nodoc
class _$SearchUserStateTearOff {
  const _$SearchUserStateTearOff();

  SearchUserInitial initial() {
    return const SearchUserInitial();
  }

  SearchUserLoadInProgress loadInProgress() {
    return const SearchUserLoadInProgress();
  }

  SearchUserLoadSuccess loadSuccess(
      {required KtList<UserSnapshot> searchResults}) {
    return SearchUserLoadSuccess(
      searchResults: searchResults,
    );
  }

  SearchUserLoadFailure loadFailure() {
    return const SearchUserLoadFailure();
  }
}

/// @nodoc
const $SearchUserState = _$SearchUserStateTearOff();

/// @nodoc
mixin _$SearchUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<UserSnapshot> searchResults) loadSuccess,
    required TResult Function() loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<UserSnapshot> searchResults)? loadSuccess,
    TResult Function()? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<UserSnapshot> searchResults)? loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchUserInitial value) initial,
    required TResult Function(SearchUserLoadInProgress value) loadInProgress,
    required TResult Function(SearchUserLoadSuccess value) loadSuccess,
    required TResult Function(SearchUserLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchUserInitial value)? initial,
    TResult Function(SearchUserLoadInProgress value)? loadInProgress,
    TResult Function(SearchUserLoadSuccess value)? loadSuccess,
    TResult Function(SearchUserLoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchUserInitial value)? initial,
    TResult Function(SearchUserLoadInProgress value)? loadInProgress,
    TResult Function(SearchUserLoadSuccess value)? loadSuccess,
    TResult Function(SearchUserLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchUserStateCopyWith<$Res> {
  factory $SearchUserStateCopyWith(
          SearchUserState value, $Res Function(SearchUserState) then) =
      _$SearchUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchUserStateCopyWithImpl<$Res>
    implements $SearchUserStateCopyWith<$Res> {
  _$SearchUserStateCopyWithImpl(this._value, this._then);

  final SearchUserState _value;
  // ignore: unused_field
  final $Res Function(SearchUserState) _then;
}

/// @nodoc
abstract class $SearchUserInitialCopyWith<$Res> {
  factory $SearchUserInitialCopyWith(
          SearchUserInitial value, $Res Function(SearchUserInitial) then) =
      _$SearchUserInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchUserInitialCopyWithImpl<$Res>
    extends _$SearchUserStateCopyWithImpl<$Res>
    implements $SearchUserInitialCopyWith<$Res> {
  _$SearchUserInitialCopyWithImpl(
      SearchUserInitial _value, $Res Function(SearchUserInitial) _then)
      : super(_value, (v) => _then(v as SearchUserInitial));

  @override
  SearchUserInitial get _value => super._value as SearchUserInitial;
}

/// @nodoc

class _$SearchUserInitial implements SearchUserInitial {
  const _$SearchUserInitial();

  @override
  String toString() {
    return 'SearchUserState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SearchUserInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<UserSnapshot> searchResults) loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<UserSnapshot> searchResults)? loadSuccess,
    TResult Function()? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<UserSnapshot> searchResults)? loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchUserInitial value) initial,
    required TResult Function(SearchUserLoadInProgress value) loadInProgress,
    required TResult Function(SearchUserLoadSuccess value) loadSuccess,
    required TResult Function(SearchUserLoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchUserInitial value)? initial,
    TResult Function(SearchUserLoadInProgress value)? loadInProgress,
    TResult Function(SearchUserLoadSuccess value)? loadSuccess,
    TResult Function(SearchUserLoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchUserInitial value)? initial,
    TResult Function(SearchUserLoadInProgress value)? loadInProgress,
    TResult Function(SearchUserLoadSuccess value)? loadSuccess,
    TResult Function(SearchUserLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SearchUserInitial implements SearchUserState {
  const factory SearchUserInitial() = _$SearchUserInitial;
}

/// @nodoc
abstract class $SearchUserLoadInProgressCopyWith<$Res> {
  factory $SearchUserLoadInProgressCopyWith(SearchUserLoadInProgress value,
          $Res Function(SearchUserLoadInProgress) then) =
      _$SearchUserLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchUserLoadInProgressCopyWithImpl<$Res>
    extends _$SearchUserStateCopyWithImpl<$Res>
    implements $SearchUserLoadInProgressCopyWith<$Res> {
  _$SearchUserLoadInProgressCopyWithImpl(SearchUserLoadInProgress _value,
      $Res Function(SearchUserLoadInProgress) _then)
      : super(_value, (v) => _then(v as SearchUserLoadInProgress));

  @override
  SearchUserLoadInProgress get _value =>
      super._value as SearchUserLoadInProgress;
}

/// @nodoc

class _$SearchUserLoadInProgress implements SearchUserLoadInProgress {
  const _$SearchUserLoadInProgress();

  @override
  String toString() {
    return 'SearchUserState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SearchUserLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<UserSnapshot> searchResults) loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<UserSnapshot> searchResults)? loadSuccess,
    TResult Function()? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<UserSnapshot> searchResults)? loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchUserInitial value) initial,
    required TResult Function(SearchUserLoadInProgress value) loadInProgress,
    required TResult Function(SearchUserLoadSuccess value) loadSuccess,
    required TResult Function(SearchUserLoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchUserInitial value)? initial,
    TResult Function(SearchUserLoadInProgress value)? loadInProgress,
    TResult Function(SearchUserLoadSuccess value)? loadSuccess,
    TResult Function(SearchUserLoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchUserInitial value)? initial,
    TResult Function(SearchUserLoadInProgress value)? loadInProgress,
    TResult Function(SearchUserLoadSuccess value)? loadSuccess,
    TResult Function(SearchUserLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class SearchUserLoadInProgress implements SearchUserState {
  const factory SearchUserLoadInProgress() = _$SearchUserLoadInProgress;
}

/// @nodoc
abstract class $SearchUserLoadSuccessCopyWith<$Res> {
  factory $SearchUserLoadSuccessCopyWith(SearchUserLoadSuccess value,
          $Res Function(SearchUserLoadSuccess) then) =
      _$SearchUserLoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<UserSnapshot> searchResults});
}

/// @nodoc
class _$SearchUserLoadSuccessCopyWithImpl<$Res>
    extends _$SearchUserStateCopyWithImpl<$Res>
    implements $SearchUserLoadSuccessCopyWith<$Res> {
  _$SearchUserLoadSuccessCopyWithImpl(
      SearchUserLoadSuccess _value, $Res Function(SearchUserLoadSuccess) _then)
      : super(_value, (v) => _then(v as SearchUserLoadSuccess));

  @override
  SearchUserLoadSuccess get _value => super._value as SearchUserLoadSuccess;

  @override
  $Res call({
    Object? searchResults = freezed,
  }) {
    return _then(SearchUserLoadSuccess(
      searchResults: searchResults == freezed
          ? _value.searchResults
          : searchResults // ignore: cast_nullable_to_non_nullable
              as KtList<UserSnapshot>,
    ));
  }
}

/// @nodoc

class _$SearchUserLoadSuccess implements SearchUserLoadSuccess {
  const _$SearchUserLoadSuccess({required this.searchResults});

  @override
  final KtList<UserSnapshot> searchResults;

  @override
  String toString() {
    return 'SearchUserState.loadSuccess(searchResults: $searchResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchUserLoadSuccess &&
            const DeepCollectionEquality()
                .equals(other.searchResults, searchResults));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(searchResults));

  @JsonKey(ignore: true)
  @override
  $SearchUserLoadSuccessCopyWith<SearchUserLoadSuccess> get copyWith =>
      _$SearchUserLoadSuccessCopyWithImpl<SearchUserLoadSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<UserSnapshot> searchResults) loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadSuccess(searchResults);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<UserSnapshot> searchResults)? loadSuccess,
    TResult Function()? loadFailure,
  }) {
    return loadSuccess?.call(searchResults);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<UserSnapshot> searchResults)? loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(searchResults);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchUserInitial value) initial,
    required TResult Function(SearchUserLoadInProgress value) loadInProgress,
    required TResult Function(SearchUserLoadSuccess value) loadSuccess,
    required TResult Function(SearchUserLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchUserInitial value)? initial,
    TResult Function(SearchUserLoadInProgress value)? loadInProgress,
    TResult Function(SearchUserLoadSuccess value)? loadSuccess,
    TResult Function(SearchUserLoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchUserInitial value)? initial,
    TResult Function(SearchUserLoadInProgress value)? loadInProgress,
    TResult Function(SearchUserLoadSuccess value)? loadSuccess,
    TResult Function(SearchUserLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class SearchUserLoadSuccess implements SearchUserState {
  const factory SearchUserLoadSuccess(
      {required KtList<UserSnapshot> searchResults}) = _$SearchUserLoadSuccess;

  KtList<UserSnapshot> get searchResults;
  @JsonKey(ignore: true)
  $SearchUserLoadSuccessCopyWith<SearchUserLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchUserLoadFailureCopyWith<$Res> {
  factory $SearchUserLoadFailureCopyWith(SearchUserLoadFailure value,
          $Res Function(SearchUserLoadFailure) then) =
      _$SearchUserLoadFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchUserLoadFailureCopyWithImpl<$Res>
    extends _$SearchUserStateCopyWithImpl<$Res>
    implements $SearchUserLoadFailureCopyWith<$Res> {
  _$SearchUserLoadFailureCopyWithImpl(
      SearchUserLoadFailure _value, $Res Function(SearchUserLoadFailure) _then)
      : super(_value, (v) => _then(v as SearchUserLoadFailure));

  @override
  SearchUserLoadFailure get _value => super._value as SearchUserLoadFailure;
}

/// @nodoc

class _$SearchUserLoadFailure implements SearchUserLoadFailure {
  const _$SearchUserLoadFailure();

  @override
  String toString() {
    return 'SearchUserState.loadFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SearchUserLoadFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<UserSnapshot> searchResults) loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<UserSnapshot> searchResults)? loadSuccess,
    TResult Function()? loadFailure,
  }) {
    return loadFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<UserSnapshot> searchResults)? loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchUserInitial value) initial,
    required TResult Function(SearchUserLoadInProgress value) loadInProgress,
    required TResult Function(SearchUserLoadSuccess value) loadSuccess,
    required TResult Function(SearchUserLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchUserInitial value)? initial,
    TResult Function(SearchUserLoadInProgress value)? loadInProgress,
    TResult Function(SearchUserLoadSuccess value)? loadSuccess,
    TResult Function(SearchUserLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchUserInitial value)? initial,
    TResult Function(SearchUserLoadInProgress value)? loadInProgress,
    TResult Function(SearchUserLoadSuccess value)? loadSuccess,
    TResult Function(SearchUserLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class SearchUserLoadFailure implements SearchUserState {
  const factory SearchUserLoadFailure() = _$SearchUserLoadFailure;
}
