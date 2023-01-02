import 'package:dartz/dartz.dart' hide Order;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart' hide Order;

import '../../../domain/core/errors.dart';
import '../../../domain/core/firebase_failure.dart';
import '../../../domain/core/firebase_success.dart';
import '../../../domain/core/value_object.dart';
import '../../../domain/orders/i_order_repository.dart';
import '../../../domain/orders/order.dart';
import '../../../domain/orders/order_task.dart';

part 'orders_actor_bloc.freezed.dart';
part 'orders_actor_event.dart';
part 'orders_actor_state.dart';

@injectable
class OrdersActorBloc extends Bloc<OrdersActorEvent, OrdersActorState> {
  final IOrderRepository _orderRepository;
  OrdersActorBloc(this._orderRepository) : super(OrdersActorState.initial()) {
    on<ToggleTaskState>(_onToggleTaskState);
    on<ToggleOrderState>(_onToggleOrderState);
    on<DeleteOrder>(_onDeleteOrder);
  }

  void _onToggleTaskState(ToggleTaskState event, Emitter<OrdersActorState> emit) async {
    if (state.isBusy) return;

    if (event.order.orderId == null) throw FatalError();

    emit(state.copyWith(isBusy: true, failureOrSuccessOption: none()));

    Either<FirebaseFailure, FirebaseSuccess> failureOrSuccess = await _orderRepository.toggleTaskState(
      orderId: event.order.orderId!,
      tasks: event.order.orderTasks
          .asList()
          .map((task) => task.taskId != event.task.taskId ? task : task.copyWith(isTaskDone: !task.isTaskDone))
          .toList(),
    );

    emit(state.copyWith(failureOrSuccessOption: some(failureOrSuccess), isBusy: false));
  }

  void _onToggleOrderState(ToggleOrderState event, Emitter<OrdersActorState> emit) async {
    if (state.isBusy) return;

    emit(state.copyWith(isBusy: true, failureOrSuccessOption: none()));

    Either<FirebaseFailure, FirebaseSuccess> failureOrSuccess = await _orderRepository.toggleOrderState(
      orderId: event.orderId,
      orderState: event.orderState,
    );

    emit(state.copyWith(failureOrSuccessOption: some(failureOrSuccess), isBusy: false));
  }

  void _onDeleteOrder(DeleteOrder event, Emitter<OrdersActorState> emit) async {
    if (state.isBusy) return;

    emit(state.copyWith(isBusy: true, failureOrSuccessOption: none()));

    // Either<FirebaseFailure, FirebaseSuccess> failureOrSuccess = await _orderRepository.deleteOrder(
    //   orderId: event.orderId,
    // );

    await Future.delayed(const Duration(milliseconds: 1300));

    emit(state.copyWith(
        failureOrSuccessOption: some(right(FirebaseSuccess.orderDeleted(id: event.orderId.getOrCrash()))),
        isBusy: false));
  }
}
