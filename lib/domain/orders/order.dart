import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import '../auth/value_objects.dart';
import '../core/value_object.dart';
import 'client.dart';
import 'order_task.dart';

part 'order.freezed.dart';

@freezed
class Order with _$Order {
  const factory Order({
    UniqueId? id,
    required String orderTitle,
    required Client client,
    required String orderDescription,
    required DateTime orderDate,
    required DateTime deliveryDate,
    required Price price,
    required KtList<OrderTask> tasks,
    required bool isDone,
    required bool isArchived,
  }) = _Order;
}
