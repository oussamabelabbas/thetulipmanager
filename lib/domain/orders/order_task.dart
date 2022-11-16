import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/value_object.dart';

part 'order_task.freezed.dart';

@freezed
class OrderTask with _$OrderTask {
  const factory OrderTask({
    required UniqueId taskId,
    required String description,
    required bool isDone,
  }) = _OrderTask;

  factory OrderTask.empty() => OrderTask(taskId: UniqueId(), description: '', isDone: false);
}
