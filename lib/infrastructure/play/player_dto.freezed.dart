// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'player_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OfflinePlayerDto _$OfflinePlayerDtoFromJson(Map<String, dynamic> json) {
  return _OfflinePlayerDto.fromJson(json);
}

/// @nodoc
class _$OfflinePlayerDtoTearOff {
  const _$OfflinePlayerDtoTearOff();

  _OfflinePlayerDto call(
      {required String id,
      required String name,
      @LegsOrSetsConverter()
          required Either<List<LegDto>, List<SetDto>> legsOrSets}) {
    return _OfflinePlayerDto(
      id: id,
      name: name,
      legsOrSets: legsOrSets,
    );
  }

  OfflinePlayerDto fromJson(Map<String, Object> json) {
    return OfflinePlayerDto.fromJson(json);
  }
}

/// @nodoc
const $OfflinePlayerDto = _$OfflinePlayerDtoTearOff();

/// @nodoc
mixin _$OfflinePlayerDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @LegsOrSetsConverter()
  Either<List<LegDto>, List<SetDto>> get legsOrSets =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfflinePlayerDtoCopyWith<OfflinePlayerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfflinePlayerDtoCopyWith<$Res> {
  factory $OfflinePlayerDtoCopyWith(
          OfflinePlayerDto value, $Res Function(OfflinePlayerDto) then) =
      _$OfflinePlayerDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      @LegsOrSetsConverter() Either<List<LegDto>, List<SetDto>> legsOrSets});
}

/// @nodoc
class _$OfflinePlayerDtoCopyWithImpl<$Res>
    implements $OfflinePlayerDtoCopyWith<$Res> {
  _$OfflinePlayerDtoCopyWithImpl(this._value, this._then);

  final OfflinePlayerDto _value;
  // ignore: unused_field
  final $Res Function(OfflinePlayerDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? legsOrSets = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      legsOrSets: legsOrSets == freezed
          ? _value.legsOrSets
          : legsOrSets // ignore: cast_nullable_to_non_nullable
              as Either<List<LegDto>, List<SetDto>>,
    ));
  }
}

/// @nodoc
abstract class _$OfflinePlayerDtoCopyWith<$Res>
    implements $OfflinePlayerDtoCopyWith<$Res> {
  factory _$OfflinePlayerDtoCopyWith(
          _OfflinePlayerDto value, $Res Function(_OfflinePlayerDto) then) =
      __$OfflinePlayerDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      @LegsOrSetsConverter() Either<List<LegDto>, List<SetDto>> legsOrSets});
}

/// @nodoc
class __$OfflinePlayerDtoCopyWithImpl<$Res>
    extends _$OfflinePlayerDtoCopyWithImpl<$Res>
    implements _$OfflinePlayerDtoCopyWith<$Res> {
  __$OfflinePlayerDtoCopyWithImpl(
      _OfflinePlayerDto _value, $Res Function(_OfflinePlayerDto) _then)
      : super(_value, (v) => _then(v as _OfflinePlayerDto));

  @override
  _OfflinePlayerDto get _value => super._value as _OfflinePlayerDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? legsOrSets = freezed,
  }) {
    return _then(_OfflinePlayerDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      legsOrSets: legsOrSets == freezed
          ? _value.legsOrSets
          : legsOrSets // ignore: cast_nullable_to_non_nullable
              as Either<List<LegDto>, List<SetDto>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements(AbstractOfflinePlayerDto)
class _$_OfflinePlayerDto extends _OfflinePlayerDto {
  const _$_OfflinePlayerDto(
      {required this.id,
      required this.name,
      @LegsOrSetsConverter() required this.legsOrSets})
      : super._();

  factory _$_OfflinePlayerDto.fromJson(Map<String, dynamic> json) =>
      _$$_OfflinePlayerDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @LegsOrSetsConverter()
  final Either<List<LegDto>, List<SetDto>> legsOrSets;

  @override
  String toString() {
    return 'OfflinePlayerDto(id: $id, name: $name, legsOrSets: $legsOrSets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OfflinePlayerDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.legsOrSets, legsOrSets) ||
                const DeepCollectionEquality()
                    .equals(other.legsOrSets, legsOrSets)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(legsOrSets);

  @JsonKey(ignore: true)
  @override
  _$OfflinePlayerDtoCopyWith<_OfflinePlayerDto> get copyWith =>
      __$OfflinePlayerDtoCopyWithImpl<_OfflinePlayerDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OfflinePlayerDtoToJson(this);
  }
}

abstract class _OfflinePlayerDto extends OfflinePlayerDto
    implements AbstractOfflinePlayerDto {
  const factory _OfflinePlayerDto(
          {required String id,
          required String name,
          @LegsOrSetsConverter()
              required Either<List<LegDto>, List<SetDto>> legsOrSets}) =
      _$_OfflinePlayerDto;
  const _OfflinePlayerDto._() : super._();

  factory _OfflinePlayerDto.fromJson(Map<String, dynamic> json) =
      _$_OfflinePlayerDto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @LegsOrSetsConverter()
  Either<List<LegDto>, List<SetDto>> get legsOrSets =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OfflinePlayerDtoCopyWith<_OfflinePlayerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

DartBotDto _$DartBotDtoFromJson(Map<String, dynamic> json) {
  return _DartBotDto.fromJson(json);
}

/// @nodoc
class _$DartBotDtoTearOff {
  const _$DartBotDtoTearOff();

  _DartBotDto call(
      {required String id,
      required String name,
      @LegsOrSetsConverter()
          required Either<List<LegDto>, List<SetDto>> legsOrSets}) {
    return _DartBotDto(
      id: id,
      name: name,
      legsOrSets: legsOrSets,
    );
  }

  DartBotDto fromJson(Map<String, Object> json) {
    return DartBotDto.fromJson(json);
  }
}

/// @nodoc
const $DartBotDto = _$DartBotDtoTearOff();

/// @nodoc
mixin _$DartBotDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @LegsOrSetsConverter()
  Either<List<LegDto>, List<SetDto>> get legsOrSets =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DartBotDtoCopyWith<DartBotDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DartBotDtoCopyWith<$Res> {
  factory $DartBotDtoCopyWith(
          DartBotDto value, $Res Function(DartBotDto) then) =
      _$DartBotDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      @LegsOrSetsConverter() Either<List<LegDto>, List<SetDto>> legsOrSets});
}

/// @nodoc
class _$DartBotDtoCopyWithImpl<$Res> implements $DartBotDtoCopyWith<$Res> {
  _$DartBotDtoCopyWithImpl(this._value, this._then);

  final DartBotDto _value;
  // ignore: unused_field
  final $Res Function(DartBotDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? legsOrSets = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      legsOrSets: legsOrSets == freezed
          ? _value.legsOrSets
          : legsOrSets // ignore: cast_nullable_to_non_nullable
              as Either<List<LegDto>, List<SetDto>>,
    ));
  }
}

/// @nodoc
abstract class _$DartBotDtoCopyWith<$Res> implements $DartBotDtoCopyWith<$Res> {
  factory _$DartBotDtoCopyWith(
          _DartBotDto value, $Res Function(_DartBotDto) then) =
      __$DartBotDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      @LegsOrSetsConverter() Either<List<LegDto>, List<SetDto>> legsOrSets});
}

/// @nodoc
class __$DartBotDtoCopyWithImpl<$Res> extends _$DartBotDtoCopyWithImpl<$Res>
    implements _$DartBotDtoCopyWith<$Res> {
  __$DartBotDtoCopyWithImpl(
      _DartBotDto _value, $Res Function(_DartBotDto) _then)
      : super(_value, (v) => _then(v as _DartBotDto));

  @override
  _DartBotDto get _value => super._value as _DartBotDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? legsOrSets = freezed,
  }) {
    return _then(_DartBotDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      legsOrSets: legsOrSets == freezed
          ? _value.legsOrSets
          : legsOrSets // ignore: cast_nullable_to_non_nullable
              as Either<List<LegDto>, List<SetDto>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements(AbstractOfflinePlayerDto)
class _$_DartBotDto extends _DartBotDto {
  const _$_DartBotDto(
      {required this.id,
      required this.name,
      @LegsOrSetsConverter() required this.legsOrSets})
      : super._();

  factory _$_DartBotDto.fromJson(Map<String, dynamic> json) =>
      _$$_DartBotDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @LegsOrSetsConverter()
  final Either<List<LegDto>, List<SetDto>> legsOrSets;

  @override
  String toString() {
    return 'DartBotDto(id: $id, name: $name, legsOrSets: $legsOrSets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DartBotDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.legsOrSets, legsOrSets) ||
                const DeepCollectionEquality()
                    .equals(other.legsOrSets, legsOrSets)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(legsOrSets);

  @JsonKey(ignore: true)
  @override
  _$DartBotDtoCopyWith<_DartBotDto> get copyWith =>
      __$DartBotDtoCopyWithImpl<_DartBotDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DartBotDtoToJson(this);
  }
}

abstract class _DartBotDto extends DartBotDto
    implements AbstractOfflinePlayerDto {
  const factory _DartBotDto(
          {required String id,
          required String name,
          @LegsOrSetsConverter()
              required Either<List<LegDto>, List<SetDto>> legsOrSets}) =
      _$_DartBotDto;
  const _DartBotDto._() : super._();

  factory _DartBotDto.fromJson(Map<String, dynamic> json) =
      _$_DartBotDto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @LegsOrSetsConverter()
  Either<List<LegDto>, List<SetDto>> get legsOrSets =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DartBotDtoCopyWith<_DartBotDto> get copyWith =>
      throw _privateConstructorUsedError;
}

OnlinePlayerDto _$OnlinePlayerDtoFromJson(Map<String, dynamic> json) {
  return _OnlinePlayerDto.fromJson(json);
}

/// @nodoc
class _$OnlinePlayerDtoTearOff {
  const _$OnlinePlayerDtoTearOff();

  _OnlinePlayerDto call(
      {required String id,
      required String name,
      @LegsOrSetsConverter()
          required Either<List<LegDto>, List<SetDto>> legsOrSets}) {
    return _OnlinePlayerDto(
      id: id,
      name: name,
      legsOrSets: legsOrSets,
    );
  }

  OnlinePlayerDto fromJson(Map<String, Object> json) {
    return OnlinePlayerDto.fromJson(json);
  }
}

/// @nodoc
const $OnlinePlayerDto = _$OnlinePlayerDtoTearOff();

/// @nodoc
mixin _$OnlinePlayerDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @LegsOrSetsConverter()
  Either<List<LegDto>, List<SetDto>> get legsOrSets =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnlinePlayerDtoCopyWith<OnlinePlayerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnlinePlayerDtoCopyWith<$Res> {
  factory $OnlinePlayerDtoCopyWith(
          OnlinePlayerDto value, $Res Function(OnlinePlayerDto) then) =
      _$OnlinePlayerDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      @LegsOrSetsConverter() Either<List<LegDto>, List<SetDto>> legsOrSets});
}

/// @nodoc
class _$OnlinePlayerDtoCopyWithImpl<$Res>
    implements $OnlinePlayerDtoCopyWith<$Res> {
  _$OnlinePlayerDtoCopyWithImpl(this._value, this._then);

  final OnlinePlayerDto _value;
  // ignore: unused_field
  final $Res Function(OnlinePlayerDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? legsOrSets = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      legsOrSets: legsOrSets == freezed
          ? _value.legsOrSets
          : legsOrSets // ignore: cast_nullable_to_non_nullable
              as Either<List<LegDto>, List<SetDto>>,
    ));
  }
}

/// @nodoc
abstract class _$OnlinePlayerDtoCopyWith<$Res>
    implements $OnlinePlayerDtoCopyWith<$Res> {
  factory _$OnlinePlayerDtoCopyWith(
          _OnlinePlayerDto value, $Res Function(_OnlinePlayerDto) then) =
      __$OnlinePlayerDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      @LegsOrSetsConverter() Either<List<LegDto>, List<SetDto>> legsOrSets});
}

/// @nodoc
class __$OnlinePlayerDtoCopyWithImpl<$Res>
    extends _$OnlinePlayerDtoCopyWithImpl<$Res>
    implements _$OnlinePlayerDtoCopyWith<$Res> {
  __$OnlinePlayerDtoCopyWithImpl(
      _OnlinePlayerDto _value, $Res Function(_OnlinePlayerDto) _then)
      : super(_value, (v) => _then(v as _OnlinePlayerDto));

  @override
  _OnlinePlayerDto get _value => super._value as _OnlinePlayerDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? legsOrSets = freezed,
  }) {
    return _then(_OnlinePlayerDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      legsOrSets: legsOrSets == freezed
          ? _value.legsOrSets
          : legsOrSets // ignore: cast_nullable_to_non_nullable
              as Either<List<LegDto>, List<SetDto>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements(AbstractPlayerDto)
class _$_OnlinePlayerDto extends _OnlinePlayerDto {
  const _$_OnlinePlayerDto(
      {required this.id,
      required this.name,
      @LegsOrSetsConverter() required this.legsOrSets})
      : super._();

  factory _$_OnlinePlayerDto.fromJson(Map<String, dynamic> json) =>
      _$$_OnlinePlayerDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @LegsOrSetsConverter()
  final Either<List<LegDto>, List<SetDto>> legsOrSets;

  @override
  String toString() {
    return 'OnlinePlayerDto(id: $id, name: $name, legsOrSets: $legsOrSets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnlinePlayerDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.legsOrSets, legsOrSets) ||
                const DeepCollectionEquality()
                    .equals(other.legsOrSets, legsOrSets)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(legsOrSets);

  @JsonKey(ignore: true)
  @override
  _$OnlinePlayerDtoCopyWith<_OnlinePlayerDto> get copyWith =>
      __$OnlinePlayerDtoCopyWithImpl<_OnlinePlayerDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OnlinePlayerDtoToJson(this);
  }
}

abstract class _OnlinePlayerDto extends OnlinePlayerDto
    implements AbstractPlayerDto {
  const factory _OnlinePlayerDto(
          {required String id,
          required String name,
          @LegsOrSetsConverter()
              required Either<List<LegDto>, List<SetDto>> legsOrSets}) =
      _$_OnlinePlayerDto;
  const _OnlinePlayerDto._() : super._();

  factory _OnlinePlayerDto.fromJson(Map<String, dynamic> json) =
      _$_OnlinePlayerDto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @LegsOrSetsConverter()
  Either<List<LegDto>, List<SetDto>> get legsOrSets =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OnlinePlayerDtoCopyWith<_OnlinePlayerDto> get copyWith =>
      throw _privateConstructorUsedError;
}
