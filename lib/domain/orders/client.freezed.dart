// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Client {
  UniqueId? get clientId => throw _privateConstructorUsedError;
  PhoneNumber get clientPhoneNumber => throw _privateConstructorUsedError;
  Name get clientName => throw _privateConstructorUsedError;
  Wilaya get clientWilaya => throw _privateConstructorUsedError;
  String get clientAddress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClientCopyWith<Client> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientCopyWith<$Res> {
  factory $ClientCopyWith(Client value, $Res Function(Client) then) =
      _$ClientCopyWithImpl<$Res, Client>;
  @useResult
  $Res call(
      {UniqueId? clientId,
      PhoneNumber clientPhoneNumber,
      Name clientName,
      Wilaya clientWilaya,
      String clientAddress});
}

/// @nodoc
class _$ClientCopyWithImpl<$Res, $Val extends Client>
    implements $ClientCopyWith<$Res> {
  _$ClientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = freezed,
    Object? clientPhoneNumber = null,
    Object? clientName = null,
    Object? clientWilaya = null,
    Object? clientAddress = null,
  }) {
    return _then(_value.copyWith(
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      clientPhoneNumber: null == clientPhoneNumber
          ? _value.clientPhoneNumber
          : clientPhoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      clientName: null == clientName
          ? _value.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as Name,
      clientWilaya: null == clientWilaya
          ? _value.clientWilaya
          : clientWilaya // ignore: cast_nullable_to_non_nullable
              as Wilaya,
      clientAddress: null == clientAddress
          ? _value.clientAddress
          : clientAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClientCopyWith<$Res> implements $ClientCopyWith<$Res> {
  factory _$$_ClientCopyWith(_$_Client value, $Res Function(_$_Client) then) =
      __$$_ClientCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId? clientId,
      PhoneNumber clientPhoneNumber,
      Name clientName,
      Wilaya clientWilaya,
      String clientAddress});
}

/// @nodoc
class __$$_ClientCopyWithImpl<$Res>
    extends _$ClientCopyWithImpl<$Res, _$_Client>
    implements _$$_ClientCopyWith<$Res> {
  __$$_ClientCopyWithImpl(_$_Client _value, $Res Function(_$_Client) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = freezed,
    Object? clientPhoneNumber = null,
    Object? clientName = null,
    Object? clientWilaya = null,
    Object? clientAddress = null,
  }) {
    return _then(_$_Client(
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      clientPhoneNumber: null == clientPhoneNumber
          ? _value.clientPhoneNumber
          : clientPhoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      clientName: null == clientName
          ? _value.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as Name,
      clientWilaya: null == clientWilaya
          ? _value.clientWilaya
          : clientWilaya // ignore: cast_nullable_to_non_nullable
              as Wilaya,
      clientAddress: null == clientAddress
          ? _value.clientAddress
          : clientAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Client implements _Client {
  const _$_Client(
      {this.clientId,
      required this.clientPhoneNumber,
      required this.clientName,
      required this.clientWilaya,
      required this.clientAddress});

  @override
  final UniqueId? clientId;
  @override
  final PhoneNumber clientPhoneNumber;
  @override
  final Name clientName;
  @override
  final Wilaya clientWilaya;
  @override
  final String clientAddress;

  @override
  String toString() {
    return 'Client(clientId: $clientId, clientPhoneNumber: $clientPhoneNumber, clientName: $clientName, clientWilaya: $clientWilaya, clientAddress: $clientAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Client &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.clientPhoneNumber, clientPhoneNumber) ||
                other.clientPhoneNumber == clientPhoneNumber) &&
            (identical(other.clientName, clientName) ||
                other.clientName == clientName) &&
            (identical(other.clientWilaya, clientWilaya) ||
                other.clientWilaya == clientWilaya) &&
            (identical(other.clientAddress, clientAddress) ||
                other.clientAddress == clientAddress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clientId, clientPhoneNumber,
      clientName, clientWilaya, clientAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClientCopyWith<_$_Client> get copyWith =>
      __$$_ClientCopyWithImpl<_$_Client>(this, _$identity);
}

abstract class _Client implements Client {
  const factory _Client(
      {final UniqueId? clientId,
      required final PhoneNumber clientPhoneNumber,
      required final Name clientName,
      required final Wilaya clientWilaya,
      required final String clientAddress}) = _$_Client;

  @override
  UniqueId? get clientId;
  @override
  PhoneNumber get clientPhoneNumber;
  @override
  Name get clientName;
  @override
  Wilaya get clientWilaya;
  @override
  String get clientAddress;
  @override
  @JsonKey(ignore: true)
  _$$_ClientCopyWith<_$_Client> get copyWith =>
      throw _privateConstructorUsedError;
}
