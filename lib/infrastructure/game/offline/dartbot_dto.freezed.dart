// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dartbot_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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

  DartBotDto fromJson(Map<String, Object?> json) {
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
@Implements<AbstractOfflinePlayerDto>()
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
        (other.runtimeType == runtimeType &&
            other is _DartBotDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.legsOrSets, legsOrSets) ||
                other.legsOrSets == legsOrSets));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, legsOrSets);

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
  String get id;
  @override
  String get name;
  @override
  @LegsOrSetsConverter()
  Either<List<LegDto>, List<SetDto>> get legsOrSets;
  @override
  @JsonKey(ignore: true)
  _$DartBotDtoCopyWith<_DartBotDto> get copyWith =>
      throw _privateConstructorUsedError;
}
