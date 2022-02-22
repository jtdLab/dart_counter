// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'online_player_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OnlinePlayerDto _$OnlinePlayerDtoFromJson(Map<String, dynamic> json) {
  return _OnlinePlayerDto.fromJson(json);
}

/// @nodoc
class _$OnlinePlayerDtoTearOff {
  const _$OnlinePlayerDtoTearOff();

  _OnlinePlayerDto call(
      {required String id,
      required String name,
      String? photoUrl,
      @AbstractLegsOrSetsConverter()
          required List<AbstractLegsOrSetsDto> legsOrSets}) {
    return _OnlinePlayerDto(
      id: id,
      name: name,
      photoUrl: photoUrl,
      legsOrSets: legsOrSets,
    );
  }

  OnlinePlayerDto fromJson(Map<String, Object?> json) {
    return OnlinePlayerDto.fromJson(json);
  }
}

/// @nodoc
const $OnlinePlayerDto = _$OnlinePlayerDtoTearOff();

/// @nodoc
mixin _$OnlinePlayerDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  @AbstractLegsOrSetsConverter()
  List<AbstractLegsOrSetsDto> get legsOrSets =>
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
      String? photoUrl,
      @AbstractLegsOrSetsConverter() List<AbstractLegsOrSetsDto> legsOrSets});
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
    Object? photoUrl = freezed,
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
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      legsOrSets: legsOrSets == freezed
          ? _value.legsOrSets
          : legsOrSets // ignore: cast_nullable_to_non_nullable
              as List<AbstractLegsOrSetsDto>,
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
      String? photoUrl,
      @AbstractLegsOrSetsConverter() List<AbstractLegsOrSetsDto> legsOrSets});
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
    Object? photoUrl = freezed,
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
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      legsOrSets: legsOrSets == freezed
          ? _value.legsOrSets
          : legsOrSets // ignore: cast_nullable_to_non_nullable
              as List<AbstractLegsOrSetsDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements<AbstractPlayerDto>()
class _$_OnlinePlayerDto extends _OnlinePlayerDto {
  const _$_OnlinePlayerDto(
      {required this.id,
      required this.name,
      this.photoUrl,
      @AbstractLegsOrSetsConverter() required this.legsOrSets})
      : super._();

  factory _$_OnlinePlayerDto.fromJson(Map<String, dynamic> json) =>
      _$$_OnlinePlayerDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? photoUrl;
  @override
  @AbstractLegsOrSetsConverter()
  final List<AbstractLegsOrSetsDto> legsOrSets;

  @override
  String toString() {
    return 'OnlinePlayerDto(id: $id, name: $name, photoUrl: $photoUrl, legsOrSets: $legsOrSets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnlinePlayerDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.photoUrl, photoUrl) &&
            const DeepCollectionEquality()
                .equals(other.legsOrSets, legsOrSets));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(photoUrl),
      const DeepCollectionEquality().hash(legsOrSets));

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
          String? photoUrl,
          @AbstractLegsOrSetsConverter()
              required List<AbstractLegsOrSetsDto> legsOrSets}) =
      _$_OnlinePlayerDto;
  const _OnlinePlayerDto._() : super._();

  factory _OnlinePlayerDto.fromJson(Map<String, dynamic> json) =
      _$_OnlinePlayerDto.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get photoUrl;
  @override
  @AbstractLegsOrSetsConverter()
  List<AbstractLegsOrSetsDto> get legsOrSets;
  @override
  @JsonKey(ignore: true)
  _$OnlinePlayerDtoCopyWith<_OnlinePlayerDto> get copyWith =>
      throw _privateConstructorUsedError;
}
