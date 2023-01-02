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
    UniqueId? orderId,
    required Client client,
    required KtList<OrderTask> orderTasks,
    required DateTime orderDate,
    required DateTime orderDeliveryDate,
    required Price orderPrice,
    required OrderState orderState,
  }) = _Order;
}

enum OrderState {
  active('Active'),
  delivered('Delivered'),
  archived('Archived');

  const OrderState(this.stateName);

  factory OrderState.fromName(String name) =>
      OrderState.values.firstWhere((state) => state.name == name, orElse: () => OrderState.active);

  final String stateName;
}
