// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'leg_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LegDto _$LegDtoFromJson(Map<String, dynamic> json) {
  return _LegDto.fromJson(json);
}

/// @nodoc
class _$LegDtoTearOff {
  const _$LegDtoTearOff();

  _LegDto call(
      {@JsonKey(ignore: true) String? id, required List<ThrowDto> throws}) {
    return _LegDto(
      id: id,
      throws: throws,
    );
  }

  LegDto fromJson(Map<String, Object> json) {
    return LegDto.fromJson(json);
  }
}

/// @nodoc
const $LegDto = _$LegDtoTearOff();

/// @nodoc
mixin _$LegDto {
  @JsonKey(ignore: true)
  String? get id =>
      throw _privateConstructorUsedError; // TODO ignore and nullable fix
  List<ThrowDto> get throws => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LegDtoCopyWith<LegDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LegDtoCopyWith<$Res> {
  factory $LegDtoCopyWith(LegDto value, $Res Function(LegDto) then) =
      _$LegDtoCopyWithImpl<$Res>;
  $Res call({@JsonKey(ignore: true) String? id, List<ThrowDto> throws});
}

/// @nodoc
class _$LegDtoCopyWithImpl<$Res> implements $LegDtoCopyWith<$Res> {
  _$LegDtoCopyWithImpl(this._value, this._then);

  final LegDto _value;
  // ignore: unused_field
  final $Res Function(LegDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? throws = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      throws: throws == freezed
          ? _value.throws
          : throws // ignore: cast_nullable_to_non_nullable
              as List<ThrowDto>,
    ));
  }
}

/// @nodoc
abstract class _$LegDtoCopyWith<$Res> implements $LegDtoCopyWith<$Res> {
  factory _$LegDtoCopyWith(_LegDto value, $Res Function(_LegDto) then) =
      __$LegDtoCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(ignore: true) String? id, List<ThrowDto> throws});
}

/// @nodoc
class __$LegDtoCopyWithImpl<$Res> extends _$LegDtoCopyWithImpl<$Res>
    implements _$LegDtoCopyWith<$Res> {
  __$LegDtoCopyWithImpl(_LegDto _value, $Res Function(_LegDto) _then)
      : super(_value, (v) => _then(v as _LegDto));

  @override
  _LegDto get _value => super._value as _LegDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? throws = freezed,
  }) {
    return _then(_LegDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      throws: throws == freezed
          ? _value.throws
          : throws // ignore: cast_nullable_to_non_nullable
              as List<ThrowDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LegDto extends _LegDto {
  const _$_LegDto({@JsonKey(ignore: true) this.id, required this.throws})
      : super._();

  factory _$_LegDto.fromJson(Map<String, dynamic> json) =>
      _$_$_LegDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override // TODO ignore and nullable fix
  final List<ThrowDto> throws;

  @override
  String toString() {
    return 'LegDto(id: $id, throws: $throws)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LegDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.throws, throws) ||
                const DeepCollectionEquality().equals(other.throws, throws)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(throws);

  @JsonKey(ignore: true)
  @override
  _$LegDtoCopyWith<_LegDto> get copyWith =>
      __$LegDtoCopyWithImpl<_LegDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LegDtoToJson(this);
  }
}

abstract class _LegDto extends LegDto {
  const factory _LegDto(
      {@JsonKey(ignore: true) String? id,
      required List<ThrowDto> throws}) = _$_LegDto;
  const _LegDto._() : super._();

  factory _LegDto.fromJson(Map<String, dynamic> json) = _$_LegDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @override // TODO ignore and nullable fix
  List<ThrowDto> get throws => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LegDtoCopyWith<_LegDto> get copyWith => throw _privateConstructorUsedError;
}
