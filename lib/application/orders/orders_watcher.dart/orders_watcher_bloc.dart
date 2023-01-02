import 'dart:async';

import 'package:dartz/dartz.dart' hide Order;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:kt_dart/kt.dart';

import '../../../domain/core/firebase_failure.dart';
import '../../../domain/orders/i_order_repository.dart';
import '../../../domain/orders/order.dart';

part 'orders_watcher_bloc.freezed.dart';
part 'orders_watcher_event.dart';
part 'orders_watcher_state.dart';

@injectable
class OrdersWatcherBloc extends Bloc<OrdersWatcherEvent, OrdersWatcherState> {
  final IOrderRepository _orderRepository;
  OrdersWatcherBloc(this._orderRepository) : super(OrdersWatcherState.initial()) {
    on<WatchOrdersStarted>(_onWatchOrdersStarted);
    on<WatchedStateChanged>(_onWatchedStateChanged);
    on<OrdersReceived>(_onOrdersReceived);
  }

  StreamSubscription<Either<FirebaseFailure, KtList<Order>>>? _ordersSubscription;

  void _onWatchOrdersStarted(WatchOrdersStarted event, Emitter<OrdersWatcherState> emit) async {
    emit(state.copyWith(inProgress: true, failureOrOrdersOption: none()));

    await _ordersSubscription?.cancel();

    _ordersSubscription = _orderRepository
        .watchOrders(watchedState: state.watchedState)
        .listen((failureOrOrders) => add(OrdersReceived(failureOrOrders: failureOrOrders)));
  }

  void _onWatchedStateChanged(WatchedStateChanged event, Emitter<OrdersWatcherState> emit) async {
    emit(state.copyWith(watchedState: event.watchedState));

    add(const OrdersWatcherEvent.watchOrdersStarted());
  }

  void _onOrdersReceived(OrdersReceived event, Emitter<OrdersWatcherState> emit) async {
    emit(event.failureOrOrders.fold(
      (failure) => state.copyWith(failureOrOrdersOption: some(left(failure))),
      (orders) => state.copyWith(failureOrOrdersOption: some(right(orders))),
    ));
    emit(state.copyWith(inProgress: false));
  }

  @override
  Future<void> close() async {
    await _ordersSubscription?.cancel();
    return super.close();
  }
}
