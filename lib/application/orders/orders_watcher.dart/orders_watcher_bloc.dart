import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart' hide Order;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import '../../../domain/core/firebase_failure.dart';
import '../../../domain/orders/i_order_repository.dart';
import '../../../domain/orders/order.dart';

part 'orders_watcher_event.dart';
part 'orders_watcher_state.dart';
part 'orders_watcher_bloc.freezed.dart';

@injectable
class OrdersWatcherBloc extends Bloc<OrdersWatcherEvent, OrdersWatcherState> {
  final IOrderRepository _orderRepository;
  OrdersWatcherBloc(this._orderRepository) : super(const OrdersWatcherState.initial()) {
    on<WatchActiveStarted>(_onWatchActiveStarted);
    on<WatchDoneStarted>(_onWatchDoneStarted);
    on<WatchArchivedStarted>(_onWatchArchivedStarted);
    on<OrdersReceived>(_onOrdersReceived);
  }

  StreamSubscription<Either<FirebaseFailure, KtList<Order>>>? _ordersSubscription;

  void _onWatchActiveStarted(WatchActiveStarted event, Emitter<OrdersWatcherState> emit) async {
    emit(const OrdersWatcherState.inProgress());

    await _ordersSubscription?.cancel();

    _ordersSubscription = _orderRepository
        .watchOrders(isDone: false, isArchived: false)
        .listen((failureOrOrders) => add(OrdersReceived(failureOrOrders: failureOrOrders)));
  }

  void _onWatchDoneStarted(WatchDoneStarted event, Emitter<OrdersWatcherState> emit) async {
    emit(const OrdersWatcherState.inProgress());

    await _ordersSubscription?.cancel();

    _ordersSubscription = _orderRepository
        .watchOrders(isDone: true, isArchived: false)
        .listen((failureOrOrders) => add(OrdersReceived(failureOrOrders: failureOrOrders)));
  }

  void _onWatchArchivedStarted(WatchArchivedStarted event, Emitter<OrdersWatcherState> emit) async {
    emit(const OrdersWatcherState.inProgress());

    await _ordersSubscription?.cancel();

    _ordersSubscription = _orderRepository
        .watchOrders(isDone: true, isArchived: true)
        .listen((failureOrOrders) => add(OrdersReceived(failureOrOrders: failureOrOrders)));
  }

  void _onOrdersReceived(OrdersReceived event, Emitter<OrdersWatcherState> emit) async {
    emit(event.failureOrOrders.fold(
      (failure) => OrdersWatcherState.fetchFailed(failure: failure),
      (orders) => OrdersWatcherState.fetchsucceded(orders: orders),
    ));
  }

  @override
  Future<void> close() async {
    await _ordersSubscription?.cancel();
    return super.close();
  }
}
