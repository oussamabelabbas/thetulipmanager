// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClientDto _$$_ClientDtoFromJson(Map<String, dynamic> json) => _$_ClientDto(
      clientName: json['clientName'] as String,
      clientAddress: json['clientAddress'] as String,
      clientWilayaCode: json['clientWilayaCode'] as int,
      clientPhoneNumber: json['clientPhoneNumber'] as String,
    );

Map<String, dynamic> _$$_ClientDtoToJson(_$_ClientDto instance) =>
    <String, dynamic>{
      'clientName': instance.clientName,
      'clientAddress': instance.clientAddress,
      'clientWilayaCode': instance.clientWilayaCode,
      'clientPhoneNumber': instance.clientPhoneNumber,
    };
