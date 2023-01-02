import 'dart:io';

import 'package:dartz/dartz.dart' hide Order;
import 'package:kt_dart/kt.dart';

import '../auth/value_objects.dart';
import '../core/firebase_failure.dart';
import '../core/firebase_success.dart';
import '../core/value_object.dart';
import 'client.dart';
import 'order.dart';
import 'order_task.dart';
import 'product.dart';

abstract class IOrderRepository {
  Future<Either<FirebaseFailure, Option<Client>>> fetchClientFromPhoneNumber({
    required PhoneNumber clientPhoneNumber,
  });
  Future<Either<FirebaseFailure, Client>> createClient({
    required Name clientName,
    required PhoneNumber clientPhoneNumber,
    required Wilaya clientWilaya,
    required String clientAddress,
  });
  Future<Either<FirebaseFailure, Product>> createProduct({
    required String productName,
    required File productImageFile,
  });
  Stream<Either<FirebaseFailure, KtList<Order>>> watchOrders({
    required OrderState watchedState,
  });
  Stream<Either<FirebaseFailure, KtList<Client>>> watchClients();
  Future<Either<FirebaseFailure, FirebaseSuccess>> toggleOrderState({
    required UniqueId orderId,
    required OrderState orderState,
  });
  Future<Either<FirebaseFailure, FirebaseSuccess>> toggleTaskState({
    required UniqueId orderId,
    required List<OrderTask> tasks,
  });
  Stream<Either<FirebaseFailure, KtList<Product>>> watchProducts();
  Future<Either<FirebaseFailure, Order>> fetchOrderFromId({required UniqueId orderId});
  Stream<Either<FirebaseFailure, Order>> watchOrderFromId({required UniqueId orderId});
  Future<Either<FirebaseFailure, FirebaseSuccess>> deleteOrder({required UniqueId orderId});
  Future<Either<FirebaseFailure, FirebaseSuccess>> createOrder({
    required Name clientName,
    required Wilaya clientWilaya,
    required String clientAddress,
    required PhoneNumber clientPhoneNumber,
    required DateTime orderDate,
    required DateTime orderDeliveryDate,
    required Price orderPrice,
    required KtList<OrderTask> orderTasks,
    required Option<Client> oldClientOption,
  });
  Future<Either<FirebaseFailure, FirebaseSuccess>> updateOrder({
    required UniqueId orderId,
    required Name clientName,
    required Wilaya clientWilaya,
    required String clientAddress,
    required PhoneNumber clientPhoneNumber,
    required DateTime orderDate,
    required DateTime orderDeliveryDate,
    required Price orderPrice,
    required KtList<OrderTask> orderTasks,
    required Option<Client> oldClientOption,
  });
}
