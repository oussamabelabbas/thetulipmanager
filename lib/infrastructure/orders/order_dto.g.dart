// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderDto _$$_OrderDtoFromJson(Map<String, dynamic> json) => _$_OrderDto(
      orderTitle: json['orderTitle'] as String,
      client: ClientDto.fromJson(json['client'] as Map<String, dynamic>),
      orderDescription: json['orderDescription'] as String,
      millisecondsSinceEpochOrderDate:
          json['millisecondsSinceEpochOrderDate'] as int,
      millisecondsSinceEpochDeliveryDate:
          json['millisecondsSinceEpochDeliveryDate'] as int,
      price: (json['price'] as num).toDouble(),
      tasks: (json['tasks'] as List<dynamic>)
          .map((e) => OrderTaskDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      isDone: json['isDone'] as bool,
      isArchived: json['isArchived'] as bool,
    );

Map<String, dynamic> _$$_OrderDtoToJson(_$_OrderDto instance) =>
    <String, dynamic>{
      'orderTitle': instance.orderTitle,
      'client': instance.client.toJson(),
      'orderDescription': instance.orderDescription,
      'millisecondsSinceEpochOrderDate':
          instance.millisecondsSinceEpochOrderDate,
      'millisecondsSinceEpochDeliveryDate':
          instance.millisecondsSinceEpochDeliveryDate,
      'price': instance.price,
      'tasks': instance.tasks.map((e) => e.toJson()).toList(),
      'isDone': instance.isDone,
      'isArchived': instance.isArchived,
    };
