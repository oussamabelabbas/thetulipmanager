import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/value_object.dart';
import '../../domain/orders/order_task.dart';

part 'order_task_dto.freezed.dart';
part 'order_task_dto.g.dart';

@freezed
abstract class OrderTaskDto implements _$OrderTaskDto {
  const factory OrderTaskDto({
    required String taskId,
    required String description,
    required bool isDone,
  }) = _OrderTaskDto;

  factory OrderTaskDto.fromDomain(OrderTask orderTask) => OrderTaskDto(
        taskId: orderTask.taskId.getOrCrash(),
        description: orderTask.description,
        isDone: orderTask.isDone,
      );
  OrderTask toDomain() => OrderTask(
        taskId: UniqueId.fromUniqueString(taskId),
        description: description,
        isDone: isDone,
      );

  const OrderTaskDto._();

  factory OrderTaskDto.fromJson(Map<String, dynamic> json) => _$OrderTaskDtoFromJson(json);
}
