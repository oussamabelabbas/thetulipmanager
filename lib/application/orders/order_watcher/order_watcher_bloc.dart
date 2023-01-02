import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart' hide Order;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart' hide Order;

import '../../../domain/core/firebase_failure.dart';
import '../../../domain/core/value_object.dart';
import '../../../domain/orders/i_order_repository.dart';
import '../../../domain/orders/order.dart';

part 'order_watcher_event.dart';
part 'order_watcher_state.dart';
part 'order_watcher_bloc.freezed.dart';

@injectable
class OrderWatcherBloc extends Bloc<OrderWatcherEvent, OrderWatcherState> {
  final IOrderRepository _orderRepository;
  OrderWatcherBloc(this._orderRepository) : super(const OrderWatcherState.initial()) {
    on<WatchOrderStarted>(_onWatchOrderStarted);
    on<OrderReceived>(_onOrderReceived);
  }

  StreamSubscription<Either<FirebaseFailure, Order>>? _orderSubscription;

  void _onWatchOrderStarted(WatchOrderStarted event, Emitter<OrderWatcherState> emit) async {
    emit(const OrderWatcherState.inProgress());

    await _orderSubscription?.cancel();

    _orderSubscription = _orderRepository
        .watchOrderFromId(orderId: event.orderId)
        .listen((failureOrOrder) => add(OrderReceived(failureOrOrder: failureOrOrder)));
  }

  void _onOrderReceived(OrderReceived event, Emitter<OrderWatcherState> emit) async {
    emit(event.failureOrOrder.fold(
      (failure) => OrderWatcherState.fetchFailed(failure: failure),
      (order) => OrderWatcherState.fetchsucceded(order: order),
    ));
  }

  @override
  Future<void> close() async {
    await _orderSubscription?.cancel();
    return super.close();
  }
}
