// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'set_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SetDto _$SetDtoFromJson(Map<String, dynamic> json) {
  return _SetDto.fromJson(json);
}

/// @nodoc
class _$SetDtoTearOff {
  const _$SetDtoTearOff();

  _SetDto call(
      {@JsonKey(ignore: true) String? id, required List<LegDto> legs}) {
    return _SetDto(
      id: id,
      legs: legs,
    );
  }

  SetDto fromJson(Map<String, Object> json) {
    return SetDto.fromJson(json);
  }
}

/// @nodoc
const $SetDto = _$SetDtoTearOff();

/// @nodoc
mixin _$SetDto {
  @JsonKey(ignore: true)
  String? get id =>
      throw _privateConstructorUsedError; // TODO ignore and nullable fix
  List<LegDto> get legs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetDtoCopyWith<SetDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetDtoCopyWith<$Res> {
  factory $SetDtoCopyWith(SetDto value, $Res Function(SetDto) then) =
      _$SetDtoCopyWithImpl<$Res>;
  $Res call({@JsonKey(ignore: true) String? id, List<LegDto> legs});
}

/// @nodoc
class _$SetDtoCopyWithImpl<$Res> implements $SetDtoCopyWith<$Res> {
  _$SetDtoCopyWithImpl(this._value, this._then);

  final SetDto _value;
  // ignore: unused_field
  final $Res Function(SetDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? legs = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      legs: legs == freezed
          ? _value.legs
          : legs // ignore: cast_nullable_to_non_nullable
              as List<LegDto>,
    ));
  }
}

/// @nodoc
abstract class _$SetDtoCopyWith<$Res> implements $SetDtoCopyWith<$Res> {
  factory _$SetDtoCopyWith(_SetDto value, $Res Function(_SetDto) then) =
      __$SetDtoCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(ignore: true) String? id, List<LegDto> legs});
}

/// @nodoc
class __$SetDtoCopyWithImpl<$Res> extends _$SetDtoCopyWithImpl<$Res>
    implements _$SetDtoCopyWith<$Res> {
  __$SetDtoCopyWithImpl(_SetDto _value, $Res Function(_SetDto) _then)
      : super(_value, (v) => _then(v as _SetDto));

  @override
  _SetDto get _value => super._value as _SetDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? legs = freezed,
  }) {
    return _then(_SetDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      legs: legs == freezed
          ? _value.legs
          : legs // ignore: cast_nullable_to_non_nullable
              as List<LegDto>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SetDto extends _SetDto {
  const _$_SetDto({@JsonKey(ignore: true) this.id, required this.legs})
      : super._();

  factory _$_SetDto.fromJson(Map<String, dynamic> json) =>
      _$_$_SetDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override // TODO ignore and nullable fix
  final List<LegDto> legs;

  @override
  String toString() {
    return 'SetDto(id: $id, legs: $legs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.legs, legs) ||
                const DeepCollectionEquality().equals(other.legs, legs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(legs);

  @JsonKey(ignore: true)
  @override
  _$SetDtoCopyWith<_SetDto> get copyWith =>
      __$SetDtoCopyWithImpl<_SetDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SetDtoToJson(this);
  }
}

abstract class _SetDto extends SetDto {
  const factory _SetDto(
      {@JsonKey(ignore: true) String? id,
      required List<LegDto> legs}) = _$_SetDto;
  const _SetDto._() : super._();

  factory _SetDto.fromJson(Map<String, dynamic> json) = _$_SetDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @override // TODO ignore and nullable fix
  List<LegDto> get legs => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SetDtoCopyWith<_SetDto> get copyWith => throw _privateConstructorUsedError;
}
