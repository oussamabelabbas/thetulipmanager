import 'package:dartz/dartz.dart' hide Order;
import 'package:kt_dart/kt.dart';

import '../auth/value_objects.dart';
import '../core/firebase_failure.dart';
import '../core/firebase_success.dart';
import '../core/value_object.dart';
import 'order.dart';
import 'order_task.dart';

abstract class IOrderRepository {
  Stream<Either<FirebaseFailure, KtList<Order>>> watchOrders({
    required bool isDone,
    required bool isArchived,
  });
  Future<Either<FirebaseFailure, Order>> fetchOrderFromId({required UniqueId orderId});
  Stream<Either<FirebaseFailure, Order>> watchOrderFromId({required UniqueId orderId});
  Future<Either<FirebaseFailure, FirebaseSuccess>> addOrder({
    required String orderTitle,
    required Name clientName,
    required PhoneNumber clientPhoneNumber,
    required String orderDescription,
    required DateTime deliveryDate,
    required Price price,
    required KtList<OrderTask> tasks,
  });
  Future<Either<FirebaseFailure, FirebaseSuccess>> updateOrder({
    required UniqueId orderId,
    required String orderTitle,
    required Name clientName,
    required PhoneNumber clientPhoneNumber,
    required String orderDescription,
    required DateTime deliveryDate,
    required Price price,
    required KtList<OrderTask> tasks,
  });
  Future<Either<FirebaseFailure, FirebaseSuccess>> toggleTaskState({
    required UniqueId orderId,
    required List<OrderTask> tasks,
  });
  Future<Either<FirebaseFailure, FirebaseSuccess>> toggleOrderDone({required UniqueId orderId});
  Future<Either<FirebaseFailure, FirebaseSuccess>> toggleOrderArchived({required UniqueId orderId});
  Future<Either<FirebaseFailure, FirebaseSuccess>> deleteOrder({required UniqueId orderId});
}
