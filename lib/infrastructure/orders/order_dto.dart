import 'package:cloud_firestore/cloud_firestore.dart' show DocumentSnapshot;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import '../../domain/auth/value_objects.dart';
import '../../domain/core/value_object.dart';
import '../../domain/orders/order.dart';
import 'client_dto.dart';
import 'order_task_dto.dart';

part 'order_dto.freezed.dart';
part 'order_dto.g.dart';

@freezed
abstract class OrderDto implements _$OrderDto {
  const factory OrderDto({
    @JsonKey(ignore: true) String? orderId,
    required String clientId,
    required ClientDto client,
    required List<OrderTaskDto> tasks,
    required int millisecondsSinceEpochOrderDate,
    required int millisecondsSinceEpochOrderDeliveryDate,
    required double orderPrice,
    required String orderStateName,
    bool? isError,
  }) = _OrderDto;

  factory OrderDto.fromDomain(Order order) => OrderDto(
        orderId: order.orderId?.getOrCrash(),
        clientId: order.client.clientId!.getOrCrash(),
        client: ClientDto.fromDomain(order.client),
        tasks: order.orderTasks.map((task) => OrderTaskDto.fromDomain(task)).asList(),
        millisecondsSinceEpochOrderDate: order.orderDate.millisecondsSinceEpoch,
        millisecondsSinceEpochOrderDeliveryDate: order.orderDeliveryDate.millisecondsSinceEpoch,
        orderPrice: double.parse(order.orderPrice.getOrCrash()),
        orderStateName: order.orderState.name,
      );

  Order toDomain() => Order(
        orderId: UniqueId.fromUniqueString(orderId!),
        client: client.copyWith(clientId: clientId).toDomain(),
        orderTasks: tasks.map((task) => task.toDomain()).toImmutableList(),
        orderDate: DateTime.fromMillisecondsSinceEpoch(millisecondsSinceEpochOrderDate),
        orderDeliveryDate: DateTime.fromMillisecondsSinceEpoch(millisecondsSinceEpochOrderDeliveryDate),
        orderPrice: Price(orderPrice.toString()),
        orderState: OrderState.fromName(orderStateName),
      );

  const OrderDto._();

  factory OrderDto.fromJson(Map<String, dynamic> json) => _$OrderDtoFromJson(json);

  factory OrderDto.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> snapshot) =>
      OrderDto.fromJson(snapshot.data() ?? {}).copyWith(
        orderId: snapshot.id,
      );
}
