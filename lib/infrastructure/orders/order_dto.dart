import 'package:cloud_firestore/cloud_firestore.dart';
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
    @JsonKey(ignore: true) String? id,
    required String orderTitle,
    required ClientDto client,
    required String orderDescription,
    required int millisecondsSinceEpochOrderDate,
    required int millisecondsSinceEpochDeliveryDate,
    required double price,
    required List<OrderTaskDto> tasks,
    required bool isDone,
    required bool isArchived,
  }) = _OrderDto;

  factory OrderDto.fromDomain(Order order) => OrderDto(
        orderTitle: order.orderTitle,
        client: ClientDto.fromDomain(order.client),
        orderDescription: order.orderDescription,
        millisecondsSinceEpochOrderDate: order.orderDate.millisecondsSinceEpoch,
        millisecondsSinceEpochDeliveryDate: order.deliveryDate.millisecondsSinceEpoch,
        price: double.parse(order.price.getOrCrash()),
        tasks: order.tasks.map((orderTask) => OrderTaskDto.fromDomain(orderTask)).asList(),
        isDone: order.isDone,
        isArchived: order.isArchived,
      );
  Order toDomain() => Order(
        id: UniqueId.fromUniqueString(id!),
        orderTitle: orderTitle,
        client: client.toDomain(),
        orderDescription: orderDescription,
        orderDate: DateTime.fromMillisecondsSinceEpoch(millisecondsSinceEpochOrderDate),
        deliveryDate: DateTime.fromMillisecondsSinceEpoch(millisecondsSinceEpochDeliveryDate),
        price: Price(price.toString()),
        tasks: tasks.map((orderTask) => orderTask.toDomain()).toImmutableList(),
        isDone: isDone,
        isArchived: isArchived,
      );

  const OrderDto._();

  factory OrderDto.fromJson(Map<String, dynamic> json) => _$OrderDtoFromJson(json);

  factory OrderDto.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> snapshot) =>
      OrderDto.fromJson(snapshot.data()!).copyWith(id: snapshot.id);
}
