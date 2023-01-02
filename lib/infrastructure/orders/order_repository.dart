import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart' hide Order;
import 'package:dartz/dartz.dart' hide Order;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/auth/i_auth_facade.dart';
import '../../domain/auth/value_objects.dart';
import '../../domain/core/errors.dart';
import '../../domain/core/exceptions.dart';
import '../../domain/core/firebase_failure.dart';
import '../../domain/core/firebase_success.dart';
import '../../domain/core/value_object.dart';
import '../../domain/orders/client.dart';
import '../../domain/orders/i_order_repository.dart';
import '../../domain/orders/order.dart';
import '../../domain/orders/order_task.dart';
import '../../domain/orders/product.dart';
import '../../injectable.dart';
import '../core/extensions.dart';
import 'client_dto.dart';
import 'order_dto.dart';
import 'order_task_dto.dart';
import 'product_dto.dart';

@LazySingleton(as: IOrderRepository)
class OrderRepository extends IOrderRepository {
  final FirebaseFirestore firebaseFirestore;
  final FirebaseStorage firebaseStorage;

  OrderRepository(
    this.firebaseFirestore,
    this.firebaseStorage,
  );

  @override
  Future<Either<FirebaseFailure, Option<Client>>> fetchClientFromPhoneNumber({
    required PhoneNumber clientPhoneNumber,
  }) async {
    try {
      User user = getIt<IAuthFacade>().getSignedInUser().getOrElse(() => throw NotAuthenticatedError());
      String phoneNumberString = clientPhoneNumber.getOrCrash();
      QuerySnapshot<Map<String, dynamic>> querySnapshot = await firebaseFirestore
          .userClientsCollection(user.uid)
          .where('clientPhoneNumber', isEqualTo: phoneNumberString)
          .get();
      if (querySnapshot.docs.isEmpty) return right(none());
      if (querySnapshot.docs.length > 1) return throw TooManyClientsException();
      return right(some(ClientDto.fromSnapshot(querySnapshot.docs.first).toDomain()));
    } on TooManyClientsException catch (_) {
      return left(FirebaseFailure.tooManyClients());
    } catch (e) {
      return left(FirebaseFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, Client>> createClient({
    required Name clientName,
    required PhoneNumber clientPhoneNumber,
    required Wilaya clientWilaya,
    required String clientAddress,
  }) async {
    try {
      User user = getIt<IAuthFacade>().getSignedInUser().getOrElse(() => throw NotAuthenticatedError());

      Either<FirebaseFailure, Option<Client>> failureOrClientOption =
          await fetchClientFromPhoneNumber(clientPhoneNumber: clientPhoneNumber);

      if (failureOrClientOption.isLeft()) return left(FirebaseFailure.serverError());
      failureOrClientOption.fold(
        (l) => null,
        (clientOption) => clientOption.fold(
          () => null,
          (client) => throw ClientAlreadyExistsError(),
        ),
      );

      Client client = Client(
        clientPhoneNumber: clientPhoneNumber,
        clientName: clientName,
        clientWilaya: clientWilaya,
        clientAddress: clientAddress,
      );

      DocumentReference clientRef =
          await firebaseFirestore.userClientsCollection(user.uid).add(ClientDto.fromDomain(client).toJson());

      return right(client.copyWith(clientId: UniqueId.fromUniqueString(clientRef.id)));
    } catch (e) {
      return left(FirebaseFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, Product>> createProduct({
    required String productName,
    required File productImageFile,
  }) async {
    try {
      User user = getIt<IAuthFacade>().getSignedInUser().getOrElse(() => throw NotAuthenticatedError());
      String productId = productName.replaceAll(' ', '').toUpperCase();

      Reference ref = firebaseStorage.ref().child('users/${user.uid}/products/$productId/$productId');
      await ref.putFile(productImageFile);
      String imagePath = await ref.getDownloadURL();

      Product product = Product(
        productName: productName,
        productImagePath: imagePath,
      );

      DocumentReference documentReference = await firebaseFirestore.userProductsCollection(user.uid).add(
            ProductDto.fromDomain(product).toJson(),
          );

      return right(product.copyWith(productId: UniqueId.fromUniqueString(documentReference.id)));
    } catch (e) {
      print(e);
      return left(FirebaseFailure(message: e.toString()));
    }
  }

  @override
  Stream<Either<FirebaseFailure, KtList<Product>>> watchProducts() async* {
    User user = getIt<IAuthFacade>().getSignedInUser().getOrElse(() => throw NotAuthenticatedError());

    yield* firebaseFirestore
        .userProductsCollection(user.uid)
        .orderBy('productName')
        .snapshots()
        .map(
          (snapshot) => right<FirebaseFailure, KtList<Product>>(
            snapshot.docs.map((doc) => ProductDto.fromSnapshot(doc).toDomain()).toImmutableList(),
          ),
        )
        .onErrorReturnWith(
          (error, stackTrace) => left(FirebaseFailure.serverError()),
        );
  }

  @override
  Stream<Either<FirebaseFailure, KtList<Order>>> watchOrders({
    required OrderState watchedState,
  }) async* {
    User user = getIt<IAuthFacade>().getSignedInUser().getOrElse(() => throw NotAuthenticatedError());

    yield* firebaseFirestore
        .userOrdersCollection(user.uid)
        .where('orderStateName', isEqualTo: watchedState.name)
        .orderBy('millisecondsSinceEpochOrderDeliveryDate', descending: false)
        .snapshots()
        .map(
          (snapshot) => right<FirebaseFailure, KtList<Order>>(
            snapshot.docs.map<Order>((doc) => OrderDto.fromSnapshot(doc).toDomain()).toImmutableList(),
          ),
        )
        .onErrorReturnWith(
      (error, stackTrace) {
        print(error);
        return left(FirebaseFailure(message: error.toString()));
      },
    );
  }

  @override
  Stream<Either<FirebaseFailure, KtList<Client>>> watchClients() async* {
    User user = getIt<IAuthFacade>().getSignedInUser().getOrElse(() => throw NotAuthenticatedError());

    yield* firebaseFirestore
        .userClientsCollection(user.uid)
        .snapshots()
        .map(
          (snapshot) => right<FirebaseFailure, KtList<Client>>(
            snapshot.docs.map<Client>((doc) => ClientDto.fromSnapshot(doc).toDomain()).toImmutableList(),
          ),
        )
        .onErrorReturnWith(
      (error, stackTrace) {
        print(error);
        return left(FirebaseFailure(message: error.toString()));
      },
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
        OrderDto.fromSnapshot(await firebaseFirestore.userOrderFromId(user.uid, orderId.getOrCrash()).get()).toDomain(),
      );
    } catch (e) {
      return left(FirebaseFailure.serverError());
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
      return left(FirebaseFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, FirebaseSuccess>> toggleOrderState({
    required UniqueId orderId,
    required OrderState orderState,
  }) async {
    try {
      User user = getIt<IAuthFacade>().getSignedInUser().getOrElse(() => throw NotAuthenticatedError());
      Order order = OrderDto.fromSnapshot(
        await firebaseFirestore.userOrderFromId(user.uid, orderId.getOrCrash()).get(),
      ).toDomain();
      switch (orderState) {
        case OrderState.delivered:
          if (!order.orderTasks.fold(true, (p, t) => p && t.isTaskDone)) {
            return left(const FirebaseFailure(message: 'Order tasks are not completed'));
          }
          break;
        case OrderState.archived:
          if (order.orderState != OrderState.delivered) {
            return left(const FirebaseFailure(message: 'Order tasks are not completed'));
          }
          break;
        default:
      }

      await firebaseFirestore.userOrderFromId(user.uid, orderId.getOrCrash()).update(
            OrderDto.fromDomain(order.copyWith(orderState: orderState)).toJson(),
          );
      return right(FirebaseSuccess.markedAsDone(id: orderId.getOrCrash()));
    } catch (e) {
      return left(FirebaseFailure(message: e.toString()));
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
      return left(FirebaseFailure(message: e.toString()));
    }
  }

  @override
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
  }) async {
    try {
      User user = getIt<IAuthFacade>().getSignedInUser().getOrElse(() => throw NotAuthenticatedError());

      Client? client = oldClientOption.fold(
        () => null,
        id,
      );

      if (client == null) {
        Either<FirebaseFailure, Client> failureOrClient = await createClient(
          clientName: clientName,
          clientPhoneNumber: clientPhoneNumber,
          clientWilaya: clientWilaya,
          clientAddress: clientAddress,
        );

        client = failureOrClient.fold(
          (failure) => throw 'Server Error',
          id,
        );
      }

      if (client == null) throw 'fatall error';

      await firebaseFirestore.userOrdersCollection(user.uid).add(
            OrderDto.fromDomain(
              Order(
                client: client,
                orderDate: orderDate,
                orderDeliveryDate: orderDeliveryDate,
                orderPrice: orderPrice,
                orderTasks: orderTasks,
                orderState: OrderState.active,
              ),
            ).toJson(),
          );

      return right(const FirebaseSuccess.orderCreated());
    } catch (e) {
      print(e);
      return left(FirebaseFailure(message: e.toString()));
    }
  }

  @override
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
  }) async {
    try {
      User user = getIt<IAuthFacade>().getSignedInUser().getOrElse(() => throw NotAuthenticatedError());

      Client? client = oldClientOption.fold(
        () => null,
        id,
      );

      if (client == null) {
        Either<FirebaseFailure, Client> failureOrClient = await createClient(
          clientName: clientName,
          clientPhoneNumber: clientPhoneNumber,
          clientWilaya: clientWilaya,
          clientAddress: clientAddress,
        );

        client = failureOrClient.fold(
          (failure) => throw 'Server Error',
          id,
        );
      }

      if (client == null) throw 'fatall error';

      await firebaseFirestore.userOrdersCollection(user.uid).doc(orderId.getOrCrash()).update(
            OrderDto.fromDomain(
              Order(
                client: client,
                orderDate: orderDate,
                orderDeliveryDate: orderDeliveryDate,
                orderPrice: orderPrice,
                orderTasks: orderTasks,
                orderState: OrderState.active,
              ),
            ).toJson(),
          );

      return right(const FirebaseSuccess.orderCreated());
    } catch (e) {
      print(e);
      return left(FirebaseFailure(message: e.toString()));
    }
  }
}
