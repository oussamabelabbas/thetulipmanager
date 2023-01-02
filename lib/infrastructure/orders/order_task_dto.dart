import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/value_object.dart';
import '../../domain/orders/order_task.dart';
import 'product_dto.dart';

part 'order_task_dto.freezed.dart';
part 'order_task_dto.g.dart';

@freezed
abstract class OrderTaskDto implements _$OrderTaskDto {
  const factory OrderTaskDto({
    required String taskId,
    required String productId,
    required ProductDto product,
    required String taskDescription,
    required int isTaskDone,
  }) = _OrderTaskDto;

  factory OrderTaskDto.fromDomain(OrderTask orderTask) => OrderTaskDto(
        taskId: orderTask.taskId.getOrCrash(),
        productId: orderTask.product.productId!.getOrCrash(),
        product: ProductDto.fromDomain(orderTask.product),
        taskDescription: orderTask.taskDescription,
        isTaskDone: orderTask.isTaskDone ? 1 : 0,
      );
  OrderTask toDomain() => OrderTask(
        taskId: UniqueId.fromUniqueString(taskId),
        product: product.copyWith(productId: productId).toDomain(),
        taskDescription: taskDescription,
        isTaskDone: isTaskDone == 1,
      );

  const OrderTaskDto._();

  factory OrderTaskDto.fromJson(Map<String, dynamic> json) => _$OrderTaskDtoFromJson(json);
}
