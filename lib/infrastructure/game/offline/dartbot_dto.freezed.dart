// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
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
      @AbstractLegsOrSetsConverter()
          required List<AbstractLegsOrSetsDto> legsOrSets,
      required int targetAverage}) {
    return _DartBotDto(
      id: id,
      legsOrSets: legsOrSets,
      targetAverage: targetAverage,
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
  @AbstractLegsOrSetsConverter()
  List<AbstractLegsOrSetsDto> get legsOrSets =>
      throw _privateConstructorUsedError;
  int get targetAverage => throw _privateConstructorUsedError;

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
      @AbstractLegsOrSetsConverter() List<AbstractLegsOrSetsDto> legsOrSets,
      int targetAverage});
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
    Object? legsOrSets = freezed,
    Object? targetAverage = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      legsOrSets: legsOrSets == freezed
          ? _value.legsOrSets
          : legsOrSets // ignore: cast_nullable_to_non_nullable
              as List<AbstractLegsOrSetsDto>,
      targetAverage: targetAverage == freezed
          ? _value.targetAverage
          : targetAverage // ignore: cast_nullable_to_non_nullable
              as int,
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
      @AbstractLegsOrSetsConverter() List<AbstractLegsOrSetsDto> legsOrSets,
      int targetAverage});
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
    Object? legsOrSets = freezed,
    Object? targetAverage = freezed,
  }) {
    return _then(_DartBotDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      legsOrSets: legsOrSets == freezed
          ? _value.legsOrSets
          : legsOrSets // ignore: cast_nullable_to_non_nullable
              as List<AbstractLegsOrSetsDto>,
      targetAverage: targetAverage == freezed
          ? _value.targetAverage
          : targetAverage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements<AbstractPlayerDto>()
class _$_DartBotDto extends _DartBotDto {
  const _$_DartBotDto(
      {required this.id,
      @AbstractLegsOrSetsConverter() required this.legsOrSets,
      required this.targetAverage})
      : super._();

  factory _$_DartBotDto.fromJson(Map<String, dynamic> json) =>
      _$$_DartBotDtoFromJson(json);

  @override
  final String id;
  @override
  @AbstractLegsOrSetsConverter()
  final List<AbstractLegsOrSetsDto> legsOrSets;
  @override
  final int targetAverage;

  @override
  String toString() {
    return 'DartBotDto(id: $id, legsOrSets: $legsOrSets, targetAverage: $targetAverage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DartBotDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.legsOrSets, legsOrSets) &&
            const DeepCollectionEquality()
                .equals(other.targetAverage, targetAverage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(legsOrSets),
      const DeepCollectionEquality().hash(targetAverage));

  @JsonKey(ignore: true)
  @override
  _$DartBotDtoCopyWith<_DartBotDto> get copyWith =>
      __$DartBotDtoCopyWithImpl<_DartBotDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DartBotDtoToJson(this);
  }
}

abstract class _DartBotDto extends DartBotDto implements AbstractPlayerDto {
  const factory _DartBotDto(
      {required String id,
      @AbstractLegsOrSetsConverter()
          required List<AbstractLegsOrSetsDto> legsOrSets,
      required int targetAverage}) = _$_DartBotDto;
  const _DartBotDto._() : super._();

  factory _DartBotDto.fromJson(Map<String, dynamic> json) =
      _$_DartBotDto.fromJson;

  @override
  String get id;
  @override
  @AbstractLegsOrSetsConverter()
  List<AbstractLegsOrSetsDto> get legsOrSets;
  @override
  int get targetAverage;
  @override
  @JsonKey(ignore: true)
  _$DartBotDtoCopyWith<_DartBotDto> get copyWith =>
      throw _privateConstructorUsedError;
}
