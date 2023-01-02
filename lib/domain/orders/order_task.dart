import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/value_object.dart';
import 'product.dart';

part 'order_task.freezed.dart';

@freezed
class OrderTask with _$OrderTask {
  const factory OrderTask({
    required UniqueId taskId,
    required Product product,
    required String taskDescription,
    required bool isTaskDone,
  }) = _OrderTask;

  factory OrderTask.empty() => OrderTask(
        taskId: UniqueId(),
        product: Product.empty(),
        taskDescription: '',
        isTaskDone: false,
      );
}
