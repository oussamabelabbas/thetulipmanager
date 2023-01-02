// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  @JsonKey(ignore: true)
  String? get clientId => throw _privateConstructorUsedError;
  String get clientName => throw _privateConstructorUsedError;
  String get clientAddress => throw _privateConstructorUsedError;
  int get clientWilayaCode => throw _privateConstructorUsedError;
  String get clientPhoneNumber => throw _privateConstructorUsedError;

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
  $Res call(
      {@JsonKey(ignore: true) String? clientId,
      String clientName,
      String clientAddress,
      int clientWilayaCode,
      String clientPhoneNumber});
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
    Object? clientId = freezed,
    Object? clientName = null,
    Object? clientAddress = null,
    Object? clientWilayaCode = null,
    Object? clientPhoneNumber = null,
  }) {
    return _then(_value.copyWith(
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String?,
      clientName: null == clientName
          ? _value.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as String,
      clientAddress: null == clientAddress
          ? _value.clientAddress
          : clientAddress // ignore: cast_nullable_to_non_nullable
              as String,
      clientWilayaCode: null == clientWilayaCode
          ? _value.clientWilayaCode
          : clientWilayaCode // ignore: cast_nullable_to_non_nullable
              as int,
      clientPhoneNumber: null == clientPhoneNumber
          ? _value.clientPhoneNumber
          : clientPhoneNumber // ignore: cast_nullable_to_non_nullable
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
  $Res call(
      {@JsonKey(ignore: true) String? clientId,
      String clientName,
      String clientAddress,
      int clientWilayaCode,
      String clientPhoneNumber});
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
    Object? clientId = freezed,
    Object? clientName = null,
    Object? clientAddress = null,
    Object? clientWilayaCode = null,
    Object? clientPhoneNumber = null,
  }) {
    return _then(_$_ClientDto(
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String?,
      clientName: null == clientName
          ? _value.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as String,
      clientAddress: null == clientAddress
          ? _value.clientAddress
          : clientAddress // ignore: cast_nullable_to_non_nullable
              as String,
      clientWilayaCode: null == clientWilayaCode
          ? _value.clientWilayaCode
          : clientWilayaCode // ignore: cast_nullable_to_non_nullable
              as int,
      clientPhoneNumber: null == clientPhoneNumber
          ? _value.clientPhoneNumber
          : clientPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClientDto extends _ClientDto {
  const _$_ClientDto(
      {@JsonKey(ignore: true) this.clientId,
      required this.clientName,
      required this.clientAddress,
      required this.clientWilayaCode,
      required this.clientPhoneNumber})
      : super._();

  factory _$_ClientDto.fromJson(Map<String, dynamic> json) =>
      _$$_ClientDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? clientId;
  @override
  final String clientName;
  @override
  final String clientAddress;
  @override
  final int clientWilayaCode;
  @override
  final String clientPhoneNumber;

  @override
  String toString() {
    return 'ClientDto(clientId: $clientId, clientName: $clientName, clientAddress: $clientAddress, clientWilayaCode: $clientWilayaCode, clientPhoneNumber: $clientPhoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClientDto &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.clientName, clientName) ||
                other.clientName == clientName) &&
            (identical(other.clientAddress, clientAddress) ||
                other.clientAddress == clientAddress) &&
            (identical(other.clientWilayaCode, clientWilayaCode) ||
                other.clientWilayaCode == clientWilayaCode) &&
            (identical(other.clientPhoneNumber, clientPhoneNumber) ||
                other.clientPhoneNumber == clientPhoneNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, clientId, clientName,
      clientAddress, clientWilayaCode, clientPhoneNumber);

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
      {@JsonKey(ignore: true) final String? clientId,
      required final String clientName,
      required final String clientAddress,
      required final int clientWilayaCode,
      required final String clientPhoneNumber}) = _$_ClientDto;
  const _ClientDto._() : super._();

  factory _ClientDto.fromJson(Map<String, dynamic> json) =
      _$_ClientDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get clientId;
  @override
  String get clientName;
  @override
  String get clientAddress;
  @override
  int get clientWilayaCode;
  @override
  String get clientPhoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$_ClientDtoCopyWith<_$_ClientDto> get copyWith =>
      throw _privateConstructorUsedError;
}
