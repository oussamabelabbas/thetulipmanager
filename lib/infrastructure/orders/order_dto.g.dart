// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderDto _$$_OrderDtoFromJson(Map<String, dynamic> json) => _$_OrderDto(
      clientId: json['clientId'] as String,
      client: ClientDto.fromJson(json['client'] as Map<String, dynamic>),
      tasks: (json['tasks'] as List<dynamic>)
          .map((e) => OrderTaskDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      millisecondsSinceEpochOrderDate:
          json['millisecondsSinceEpochOrderDate'] as int,
      millisecondsSinceEpochOrderDeliveryDate:
          json['millisecondsSinceEpochOrderDeliveryDate'] as int,
      orderPrice: (json['orderPrice'] as num).toDouble(),
      orderStateName: json['orderStateName'] as String,
      isError: json['isError'] as bool?,
    );

Map<String, dynamic> _$$_OrderDtoToJson(_$_OrderDto instance) =>
    <String, dynamic>{
      'clientId': instance.clientId,
      'client': instance.client.toJson(),
      'tasks': instance.tasks.map((e) => e.toJson()).toList(),
      'millisecondsSinceEpochOrderDate':
          instance.millisecondsSinceEpochOrderDate,
      'millisecondsSinceEpochOrderDeliveryDate':
          instance.millisecondsSinceEpochOrderDeliveryDate,
      'orderPrice': instance.orderPrice,
      'orderStateName': instance.orderStateName,
      'isError': instance.isError,
    };
