// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_task_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderTaskDto _$$_OrderTaskDtoFromJson(Map<String, dynamic> json) =>
    _$_OrderTaskDto(
      taskId: json['taskId'] as String,
      productId: json['productId'] as String,
      product: ProductDto.fromJson(json['product'] as Map<String, dynamic>),
      taskDescription: json['taskDescription'] as String,
      isTaskDone: json['isTaskDone'] as int,
    );

Map<String, dynamic> _$$_OrderTaskDtoToJson(_$_OrderTaskDto instance) =>
    <String, dynamic>{
      'taskId': instance.taskId,
      'productId': instance.productId,
      'product': instance.product.toJson(),
      'taskDescription': instance.taskDescription,
      'isTaskDone': instance.isTaskDone,
    };
