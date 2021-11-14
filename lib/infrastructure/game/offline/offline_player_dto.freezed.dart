// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'offline_player_dto.dart';

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
      @AbstractLegsOrSetsConverter()
          required List<AbstractLegsOrSetsDto> legsOrSets}) {
    return _OfflinePlayerDto(
      id: id,
      name: name,
      legsOrSets: legsOrSets,
    );
  }

  OfflinePlayerDto fromJson(Map<String, Object?> json) {
    return OfflinePlayerDto.fromJson(json);
  }
}

/// @nodoc
const $OfflinePlayerDto = _$OfflinePlayerDtoTearOff();

/// @nodoc
mixin _$OfflinePlayerDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @AbstractLegsOrSetsConverter()
  List<AbstractLegsOrSetsDto> get legsOrSets =>
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
      @AbstractLegsOrSetsConverter() List<AbstractLegsOrSetsDto> legsOrSets});
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
              as List<AbstractLegsOrSetsDto>,
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
      @AbstractLegsOrSetsConverter() List<AbstractLegsOrSetsDto> legsOrSets});
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
              as List<AbstractLegsOrSetsDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements<AbstractOfflinePlayerDto>()
class _$_OfflinePlayerDto extends _OfflinePlayerDto {
  const _$_OfflinePlayerDto(
      {required this.id,
      required this.name,
      @AbstractLegsOrSetsConverter() required this.legsOrSets})
      : super._();

  factory _$_OfflinePlayerDto.fromJson(Map<String, dynamic> json) =>
      _$$_OfflinePlayerDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @AbstractLegsOrSetsConverter()
  final List<AbstractLegsOrSetsDto> legsOrSets;

  @override
  String toString() {
    return 'OfflinePlayerDto(id: $id, name: $name, legsOrSets: $legsOrSets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OfflinePlayerDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other.legsOrSets, legsOrSets));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(legsOrSets));

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
          @AbstractLegsOrSetsConverter()
              required List<AbstractLegsOrSetsDto> legsOrSets}) =
      _$_OfflinePlayerDto;
  const _OfflinePlayerDto._() : super._();

  factory _OfflinePlayerDto.fromJson(Map<String, dynamic> json) =
      _$_OfflinePlayerDto.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @AbstractLegsOrSetsConverter()
  List<AbstractLegsOrSetsDto> get legsOrSets;
  @override
  @JsonKey(ignore: true)
  _$OfflinePlayerDtoCopyWith<_OfflinePlayerDto> get copyWith =>
      throw _privateConstructorUsedError;
}
