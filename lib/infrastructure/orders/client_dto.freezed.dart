// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'client_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClientDto _$ClientDtoFromJson(Map<String, dynamic> json) {
  return _ClientDto.fromJson(json);
}

/// @nodoc
mixin _$ClientDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientDtoCopyWith<ClientDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientDtoCopyWith<$Res> {
  factory $ClientDtoCopyWith(ClientDto value, $Res Function(ClientDto) then) =
      _$ClientDtoCopyWithImpl<$Res, ClientDto>;
  @useResult
  $Res call({String id, String name, String phoneNumber});
}

/// @nodoc
class _$ClientDtoCopyWithImpl<$Res, $Val extends ClientDto>
    implements $ClientDtoCopyWith<$Res> {
  _$ClientDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phoneNumber = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClientDtoCopyWith<$Res> implements $ClientDtoCopyWith<$Res> {
  factory _$$_ClientDtoCopyWith(
          _$_ClientDto value, $Res Function(_$_ClientDto) then) =
      __$$_ClientDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String phoneNumber});
}

/// @nodoc
class __$$_ClientDtoCopyWithImpl<$Res>
    extends _$ClientDtoCopyWithImpl<$Res, _$_ClientDto>
    implements _$$_ClientDtoCopyWith<$Res> {
  __$$_ClientDtoCopyWithImpl(
      _$_ClientDto _value, $Res Function(_$_ClientDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phoneNumber = null,
  }) {
    return _then(_$_ClientDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClientDto extends _ClientDto {
  const _$_ClientDto(
      {required this.id, required this.name, required this.phoneNumber})
      : super._();

  factory _$_ClientDto.fromJson(Map<String, dynamic> json) =>
      _$$_ClientDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'ClientDto(id: $id, name: $name, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClientDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClientDtoCopyWith<_$_ClientDto> get copyWith =>
      __$$_ClientDtoCopyWithImpl<_$_ClientDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClientDtoToJson(
      this,
    );
  }
}

abstract class _ClientDto extends ClientDto {
  const factory _ClientDto(
      {required final String id,
      required final String name,
      required final String phoneNumber}) = _$_ClientDto;
  const _ClientDto._() : super._();

  factory _ClientDto.fromJson(Map<String, dynamic> json) =
      _$_ClientDto.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$_ClientDtoCopyWith<_$_ClientDto> get copyWith =>
      throw _privateConstructorUsedError;
}
