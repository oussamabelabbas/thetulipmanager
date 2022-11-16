import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:dartz/dartz.dart' hide Order;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/auth/i_auth_facade.dart';
import '../../domain/auth/value_objects.dart';
import '../../domain/core/errors.dart';
import '../../domain/core/firebase_failure.dart';
import '../../domain/core/firebase_success.dart';
import '../../domain/core/value_object.dart';
import '../../domain/orders/client.dart';
import '../../domain/orders/i_order_repository.dart';
import '../../domain/orders/order.dart';
import '../../domain/orders/order_task.dart';
import '../../injectable.dart';
import '../core/extensions.dart';
import 'order_dto.dart';
import 'order_task_dto.dart';

@LazySingleton(as: IOrderRepository)
class OrderRepository extends IOrderRepository {
  final FirebaseFirestore firebaseFirestore;

  OrderRepository(
    this.firebaseFirestore,
  );

  @override
  Stream<Either<FirebaseFailure, KtList<Order>>> watchOrders({
    required bool isDone,
    required bool isArchived,
  }) async* {
    User user = getIt<IAuthFacade>().getSignedInUser().getOrElse(() => throw NotAuthenticatedError());

    yield* firebaseFirestore
        .userOrdersCollection(user.uid)
        .where('isDone', isEqualTo: isDone)
        .where('isArchived', isEqualTo: isArchived)
        .snapshots()
        .map((snapshot) => right<FirebaseFailure, KtList<Order>>(
              snapshot.docs.map((doc) => OrderDto.fromSnapshot(doc).toDomain()).toImmutableList(),
            ))
        .onErrorReturnWith(
          (error, stackTrace) => left(FirebaseFailure.serverError()),
        );
  }

  @override
  Stream<Either<FirebaseFailure, Order>> watchOrderFromId({
    required UniqueId orderId,
  }) async* {
    User user = getIt<IAuthFacade>().getSignedInUser().getOrElse(() => throw NotAuthenticatedError());

    yield* firebaseFirestore
        .userOrderFromId(user.uid, orderId.getOrCrash())
        .snapshots()
        .map((snapshot) => right<FirebaseFailure, Order>(OrderDto.fromSnapshot(snapshot).toDomain()))
        .onErrorReturnWith(
          (error, stackTrace) => left(FirebaseFailure.serverError()),
        );
  }

  @override
  Future<Either<FirebaseFailure, Order>> fetchOrderFromId({
    required UniqueId orderId,
  }) async {
    try {
      User user = getIt<IAuthFacade>().getSignedInUser().getOrElse(() => throw NotAuthenticatedError());

      return right(
        OrderDto.fromSnapshot(
          await firebaseFirestore.userOrderFromId(user.uid, orderId.getOrCrash()).get(),
        ).toDomain(),
      );
    } catch (e) {
      return left(FirebaseFailure.serverError());
    }
  }

  @override
  Future<Either<FirebaseFailure, FirebaseSuccess>> addOrder({
    required String orderTitle,
    required Name clientName,
    required PhoneNumber clientPhoneNumber,
    required String orderDescription,
    required DateTime deliveryDate,
    required Price price,
    required KtList<OrderTask> tasks,
  }) async {
    try {
      User user = getIt<IAuthFacade>().getSignedInUser().getOrElse(() => throw NotAuthenticatedError());

      await firebaseFirestore.userOrdersCollection(user.uid).add(
            OrderDto.fromDomain(
              Order(
                orderTitle: orderTitle,
                client: Client(
                  id: UniqueId(),
                  name: clientName,
                  phoneNumber: clientPhoneNumber,
                ),
                orderDescription: orderDescription,
                orderDate: DateTime.now(),
                deliveryDate: deliveryDate,
                price: price,
                tasks: tasks,
                isDone: false,
                isArchived: false,
              ),
            ).toJson(),
          );

      return right(const FirebaseSuccess.orderCreated());
    } catch (e) {
      return left(FirebaseFailure.firebaseException(text: e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, FirebaseSuccess>> updateOrder({
    required UniqueId orderId,
    required String orderTitle,
    required Name clientName,
    required PhoneNumber clientPhoneNumber,
    required String orderDescription,
    required DateTime deliveryDate,
    required Price price,
    required KtList<OrderTask> tasks,
  }) async {
    try {
      User user = getIt<IAuthFacade>().getSignedInUser().getOrElse(() => throw NotAuthenticatedError());

      await firebaseFirestore.userOrderFromId(user.uid, orderId.getOrCrash()).update(
            OrderDto.fromDomain(
              Order(
                orderTitle: orderTitle,
                client: Client(
                  id: UniqueId(),
                  name: clientName,
                  phoneNumber: clientPhoneNumber,
                ),
                orderDescription: orderDescription,
                orderDate: DateTime.now(),
                deliveryDate: deliveryDate,
                price: price,
                tasks: tasks,
                isDone: false,
                isArchived: false,
              ),
            ).toJson(),
          );

      return right(const FirebaseSuccess.orderCreated());
    } catch (e) {
      return left(FirebaseFailure.firebaseException(text: e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, FirebaseSuccess>> toggleTaskState({
    required UniqueId orderId,
    required List<OrderTask> tasks,
  }) async {
    try {
      User user = getIt<IAuthFacade>().getSignedInUser().getOrElse(() => throw NotAuthenticatedError());

      await firebaseFirestore.userOrderFromId(user.uid, orderId.getOrCrash()).update({
        'tasks': tasks.map((task) => OrderTaskDto.fromDomain(task).toJson()).toList(),
      });
      return right(const FirebaseSuccess.taskStateUpdated());
    } catch (e) {
      return left(FirebaseFailure.firebaseException(text: e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, FirebaseSuccess>> toggleOrderDone({
    required UniqueId orderId,
  }) async {
    try {
      User user = getIt<IAuthFacade>().getSignedInUser().getOrElse(() => throw NotAuthenticatedError());
      Order order = OrderDto.fromSnapshot(
        await firebaseFirestore.userOrderFromId(user.uid, orderId.getOrCrash()).get(),
      ).toDomain();

      if (!order.tasks.fold(true, (p, t) => p && t.isDone)) {
        return left(const FirebaseFailure(message: 'Order tasks are not completed'));
      }
      await firebaseFirestore.userOrderFromId(user.uid, orderId.getOrCrash()).update({
        'isDone': !order.isDone,
      });
      return right(FirebaseSuccess.markedAsDone(id: orderId.getOrCrash()));
    } catch (e) {
      return left(FirebaseFailure.firebaseException(text: e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, FirebaseSuccess>> toggleOrderArchived({
    required UniqueId orderId,
  }) async {
    try {
      User user = getIt<IAuthFacade>().getSignedInUser().getOrElse(() => throw NotAuthenticatedError());
      Order order = OrderDto.fromSnapshot(
        await firebaseFirestore.userOrderFromId(user.uid, orderId.getOrCrash()).get(),
      ).toDomain();

      if (!order.isDone) {
        return left(const FirebaseFailure(message: 'Order is not done yet'));
      }
      await firebaseFirestore.userOrderFromId(user.uid, orderId.getOrCrash()).update({
        'isArchived': !order.isArchived,
      });
      return right(FirebaseSuccess.markedAsArchived(id: orderId.getOrCrash()));
    } catch (e) {
      return left(FirebaseFailure.firebaseException(text: e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, FirebaseSuccess>> deleteOrder({
    required UniqueId orderId,
  }) async {
    try {
      User user = getIt<IAuthFacade>().getSignedInUser().getOrElse(() => throw NotAuthenticatedError());

      await firebaseFirestore.userOrderFromId(user.uid, orderId.getOrCrash()).delete();
      return right(FirebaseSuccess.orderDeleted(id: orderId.getOrCrash()));
    } catch (e) {
      return left(FirebaseFailure.firebaseException(text: e.toString()));
    }
  }
}
