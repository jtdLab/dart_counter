// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'dart_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DartDto _$DartDtoFromJson(Map<String, dynamic> json) {
  return _DartDto.fromJson(json);
}

/// @nodoc
class _$DartDtoTearOff {
  const _$DartDtoTearOff();

  _DartDto call({required int points}) {
    return _DartDto(
      points: points,
    );
  }

  DartDto fromJson(Map<String, Object> json) {
    return DartDto.fromJson(json);
  }
}

/// @nodoc
const $DartDto = _$DartDtoTearOff();

/// @nodoc
mixin _$DartDto {
  int get points => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DartDtoCopyWith<DartDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DartDtoCopyWith<$Res> {
  factory $DartDtoCopyWith(DartDto value, $Res Function(DartDto) then) =
      _$DartDtoCopyWithImpl<$Res>;
  $Res call({int points});
}

/// @nodoc
class _$DartDtoCopyWithImpl<$Res> implements $DartDtoCopyWith<$Res> {
  _$DartDtoCopyWithImpl(this._value, this._then);

  final DartDto _value;
  // ignore: unused_field
  final $Res Function(DartDto) _then;

  @override
  $Res call({
    Object? points = freezed,
  }) {
    return _then(_value.copyWith(
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$DartDtoCopyWith<$Res> implements $DartDtoCopyWith<$Res> {
  factory _$DartDtoCopyWith(_DartDto value, $Res Function(_DartDto) then) =
      __$DartDtoCopyWithImpl<$Res>;
  @override
  $Res call({int points});
}

/// @nodoc
class __$DartDtoCopyWithImpl<$Res> extends _$DartDtoCopyWithImpl<$Res>
    implements _$DartDtoCopyWith<$Res> {
  __$DartDtoCopyWithImpl(_DartDto _value, $Res Function(_DartDto) _then)
      : super(_value, (v) => _then(v as _DartDto));

  @override
  _DartDto get _value => super._value as _DartDto;

  @override
  $Res call({
    Object? points = freezed,
  }) {
    return _then(_DartDto(
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DartDto extends _DartDto {
  const _$_DartDto({required this.points}) : super._();

  factory _$_DartDto.fromJson(Map<String, dynamic> json) =>
      _$_$_DartDtoFromJson(json);

  @override
  final int points;

  @override
  String toString() {
    return 'DartDto(points: $points)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DartDto &&
            (identical(other.points, points) ||
                const DeepCollectionEquality().equals(other.points, points)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(points);

  @JsonKey(ignore: true)
  @override
  _$DartDtoCopyWith<_DartDto> get copyWith =>
      __$DartDtoCopyWithImpl<_DartDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DartDtoToJson(this);
  }
}

abstract class _DartDto extends DartDto {
  const factory _DartDto({required int points}) = _$_DartDto;
  const _DartDto._() : super._();

  factory _DartDto.fromJson(Map<String, dynamic> json) = _$_DartDto.fromJson;

  @override
  int get points => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DartDtoCopyWith<_DartDto> get copyWith =>
      throw _privateConstructorUsedError;
}
