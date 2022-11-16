import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart' hide Order;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/core/errors.dart';
import '../../../domain/core/firebase_failure.dart';
import '../../../domain/core/firebase_success.dart';
import '../../../domain/core/value_object.dart';
import '../../../domain/orders/i_order_repository.dart';
import '../../../domain/orders/order.dart';
import '../../../domain/orders/order_task.dart';

part 'orders_actor_event.dart';
part 'orders_actor_state.dart';
part 'orders_actor_bloc.freezed.dart';

@injectable
class OrdersActorBloc extends Bloc<OrdersActorEvent, OrdersActorState> {
  final IOrderRepository _orderRepository;
  OrdersActorBloc(this._orderRepository) : super(OrdersActorState.initial()) {
    on<ToggleTaskState>(_onToggleTaskState);
    on<ToggleOrderDone>(_onToggleOrderDone);
    on<ToggleOrderArchived>(_onToggleOrderArchived);
    on<DeleteOrder>(_onDeleteOrder);
  }

  void _onToggleTaskState(ToggleTaskState event, Emitter<OrdersActorState> emit) async {
    if (state.isBusy) return;

    if (event.order.id == null) throw FatalError();

    emit(state.copyWith(isBusy: true, failureOrSuccessOption: none()));

    Either<FirebaseFailure, FirebaseSuccess> failureOrSuccess = await _orderRepository.toggleTaskState(
      orderId: event.order.id!,
      tasks: event.order.tasks
          .asList()
          .map((task) => task.taskId != event.task.taskId ? task : task.copyWith(isDone: !task.isDone))
          .toList(),
    );

    emit(state.copyWith(failureOrSuccessOption: some(failureOrSuccess), isBusy: false));
  }

  void _onToggleOrderDone(ToggleOrderDone event, Emitter<OrdersActorState> emit) async {
    if (state.isBusy) return;

    emit(state.copyWith(isBusy: true, failureOrSuccessOption: none()));

    Either<FirebaseFailure, FirebaseSuccess> failureOrSuccess = await _orderRepository.toggleOrderDone(
      orderId: event.orderId,
    );

    emit(state.copyWith(failureOrSuccessOption: some(failureOrSuccess), isBusy: false));
  }

  void _onToggleOrderArchived(ToggleOrderArchived event, Emitter<OrdersActorState> emit) async {
    if (state.isBusy) return;

    emit(state.copyWith(isBusy: true, failureOrSuccessOption: none()));

    Either<FirebaseFailure, FirebaseSuccess> failureOrSuccess = await _orderRepository.toggleOrderArchived(
      orderId: event.orderId,
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
