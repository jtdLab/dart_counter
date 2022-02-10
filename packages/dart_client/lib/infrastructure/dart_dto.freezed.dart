// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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

  _DartDto call({required String type, required int value}) {
    return _DartDto(
      type: type,
      value: value,
    );
  }

  DartDto fromJson(Map<String, Object?> json) {
    return DartDto.fromJson(json);
  }
}

/// @nodoc
const $DartDto = _$DartDtoTearOff();

/// @nodoc
mixin _$DartDto {
  String get type => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DartDtoCopyWith<DartDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DartDtoCopyWith<$Res> {
  factory $DartDtoCopyWith(DartDto value, $Res Function(DartDto) then) =
      _$DartDtoCopyWithImpl<$Res>;
  $Res call({String type, int value});
}

/// @nodoc
class _$DartDtoCopyWithImpl<$Res> implements $DartDtoCopyWith<$Res> {
  _$DartDtoCopyWithImpl(this._value, this._then);

  final DartDto _value;
  // ignore: unused_field
  final $Res Function(DartDto) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$DartDtoCopyWith<$Res> implements $DartDtoCopyWith<$Res> {
  factory _$DartDtoCopyWith(_DartDto value, $Res Function(_DartDto) then) =
      __$DartDtoCopyWithImpl<$Res>;
  @override
  $Res call({String type, int value});
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
    Object? type = freezed,
    Object? value = freezed,
  }) {
    return _then(_DartDto(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DartDto extends _DartDto {
  const _$_DartDto({required this.type, required this.value}) : super._();

  factory _$_DartDto.fromJson(Map<String, dynamic> json) =>
      _$$_DartDtoFromJson(json);

  @override
  final String type;
  @override
  final int value;

  @override
  String toString() {
    return 'DartDto(type: $type, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DartDto &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$DartDtoCopyWith<_DartDto> get copyWith =>
      __$DartDtoCopyWithImpl<_DartDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DartDtoToJson(this);
  }
}

abstract class _DartDto extends DartDto {
  const factory _DartDto({required String type, required int value}) =
      _$_DartDto;
  const _DartDto._() : super._();

  factory _DartDto.fromJson(Map<String, dynamic> json) = _$_DartDto.fromJson;

  @override
  String get type;
  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$DartDtoCopyWith<_DartDto> get copyWith =>
      throw _privateConstructorUsedError;
}
