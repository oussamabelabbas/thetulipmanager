import 'package:dartz/dartz.dart' hide Order;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:kt_dart/kt.dart';

import '../../../domain/auth/value_objects.dart';
import '../../../domain/core/firebase_failure.dart';
import '../../../domain/core/firebase_success.dart';
import '../../../domain/core/value_object.dart';
import '../../../domain/orders/client.dart';
import '../../../domain/orders/i_order_repository.dart';
import '../../../domain/orders/order.dart';
import '../../../domain/orders/order_task.dart';
import '../../../domain/orders/product.dart';

part 'new_order_form_bloc.freezed.dart';
part 'new_order_form_event.dart';
part 'new_order_form_state.dart';

@injectable
class NewOrderFormBloc extends Bloc<NewOrderFormEvent, NewOrderFormState> {
  final IOrderRepository _orderRepository;
  NewOrderFormBloc(this._orderRepository) : super(NewOrderFormState.initial()) {
    on<Started>(_onStarted);
    on<ClientNameChanged>(_onClientNameChanged);
    on<ClientPhoneNumberChanged>(_onClientPhoneNumberChanged);
    on<ClientAddressChanged>(_onClientAddressChanged);
    on<ClientWilayaChanged>(_onClientWilayaChanged);
    on<OrderDateChanged>(_onOrderDateChanged);
    on<OrderDeliveryDateChanged>(_onOrderDeliveryDateChanged);
    on<OrderPriceChanged>(_onOrderPriceChanged);
    on<TaskAdded>(_onTaskAdded);
    on<TaskProductChanged>(_onTaskProductChanged);
    on<TaskDescriptionChanged>(_onTaskDescriptionChanged);
    on<TaskDeleted>(_onTaskDeleted);
    on<OldClientChanged>(_onOldClientChanged);
    on<ConfirmOrderPressed>(_onConfirmOrderPressed);
    on<UpdateOrderPressed>(_onUpdateOrderPressed);
  }

  void _onStarted(Started event, Emitter<NewOrderFormState> emit) async {
    UniqueId? orderId = event.orderIdOption.fold(() => null, id);
    if (orderId == null) return;

    emit(state.copyWith(inProgress: true, autovalidate: true, failureOrSuccessOption: none()));

    Either<FirebaseFailure, Order> failureOrOrder = await _orderRepository.fetchOrderFromId(orderId: orderId);

    failureOrOrder.fold(
      (f) => emit(state.copyWith(inProgress: false, failureOrSuccessOption: some(left(f)))),
      (order) => emit(NewOrderFormState.fromOrder(order).copyWith(inProgress: true)),
    );
    await Future.delayed(const Duration(milliseconds: 500));
    emit(state.copyWith(inProgress: false));
  }

  void _onClientNameChanged(ClientNameChanged event, Emitter<NewOrderFormState> emit) async {
    emit(state.copyWith(clientName: Name(event.clientName)));
  }

  void _onClientAddressChanged(ClientAddressChanged event, Emitter<NewOrderFormState> emit) async {
    emit(state.copyWith(clientAddress: event.clientAddress));
  }

  void _onClientWilayaChanged(ClientWilayaChanged event, Emitter<NewOrderFormState> emit) async {
    emit(state.copyWith(clientWilaya: event.clientWilaya));
  }

  void _onClientPhoneNumberChanged(ClientPhoneNumberChanged event, Emitter<NewOrderFormState> emit) async {
    emit(state.copyWith(clientPhoneNumber: PhoneNumber(event.clientPhoneNumber)));
  }

  void _onOrderDeliveryDateChanged(OrderDeliveryDateChanged event, Emitter<NewOrderFormState> emit) async {
    emit(state.copyWith(orderDeliveryDate: event.orderDeliveryDate));
  }

  void _onOrderDateChanged(OrderDateChanged event, Emitter<NewOrderFormState> emit) async {
    emit(state.copyWith(orderDate: event.orderDate));
  }

  void _onOrderPriceChanged(OrderPriceChanged event, Emitter<NewOrderFormState> emit) async {
    emit(state.copyWith(orderPrice: Price(event.orderPrice)));
  }

  void _onTaskAdded(TaskAdded event, Emitter<NewOrderFormState> emit) async {
    emit(state.copyWith(
      orderTasks: state.orderTasks.toList()..add(OrderTask.empty()),
    ));
  }

  void _onTaskProductChanged(TaskProductChanged event, Emitter<NewOrderFormState> emit) async {
    List<OrderTask> orderTasks = state.orderTasks.toList();

    int taskIndex = orderTasks.indexWhere((element) => element.taskId == event.taskId);

    orderTasks[taskIndex] = orderTasks[taskIndex].copyWith(product: event.product);

    emit(state.copyWith(orderTasks: orderTasks));
  }

  void _onTaskDescriptionChanged(TaskDescriptionChanged event, Emitter<NewOrderFormState> emit) async {
    List<OrderTask> orderTasks = state.orderTasks.toList();

    int taskIndex = orderTasks.indexWhere((element) => element.taskId == event.taskId);

    orderTasks[taskIndex] = orderTasks[taskIndex].copyWith(taskDescription: event.taskDescription);

    emit(state.copyWith(orderTasks: orderTasks));
  }

  void _onTaskDeleted(TaskDeleted event, Emitter<NewOrderFormState> emit) async {
    if (state.orderTasks.length <= 1) return;
    emit(state.copyWith(
      orderTasks: state.orderTasks.toList()..removeWhere((element) => element.taskId == event.taskId),
    ));
  }

  void _onConfirmOrderPressed(ConfirmOrderPressed event, Emitter<NewOrderFormState> emit) async {
    emit(state.copyWith(inProgress: true, autovalidate: true, failureOrSuccessOption: none()));
    if (!_areValuesValid()) {
      emit(state.copyWith(inProgress: false));

      return;
    }
    Either<FirebaseFailure, FirebaseSuccess> failureOrSuccess = await _orderRepository.createOrder(
      clientName: state.clientName,
      clientPhoneNumber: state.clientPhoneNumber,
      clientAddress: state.clientAddress,
      clientWilaya: state.clientWilaya!,
      orderDate: state.orderDate,
      orderDeliveryDate: state.orderDeliveryDate,
      orderPrice: state.orderPrice,
      orderTasks: state.orderTasks.toImmutableList(),
      oldClientOption: state.oldClientOption,
    );

    emit(state.copyWith(inProgress: false, failureOrSuccessOption: some(failureOrSuccess)));
  }

  void _onOldClientChanged(OldClientChanged event, Emitter<NewOrderFormState> emit) async {
    emit(state.copyWith(oldClientOption: event.oldClientOption));
  }

  void _onUpdateOrderPressed(UpdateOrderPressed event, Emitter<NewOrderFormState> emit) async {
    emit(state.copyWith(inProgress: true, autovalidate: true, failureOrSuccessOption: none()));

    if (!_areValuesValid()) {
      emit(state.copyWith(inProgress: false));
      return;
    }

    Either<FirebaseFailure, FirebaseSuccess> failureOrSuccess = await _orderRepository.updateOrder(
      orderId: event.orderId,
      clientName: state.clientName,
      clientPhoneNumber: state.clientPhoneNumber,
      clientAddress: state.clientAddress,
      clientWilaya: state.clientWilaya!,
      orderDate: state.orderDate,
      orderDeliveryDate: state.orderDeliveryDate,
      orderPrice: state.orderPrice,
      orderTasks: state.orderTasks.toImmutableList(),
      oldClientOption: state.oldClientOption,
    );

    emit(state.copyWith(inProgress: false, failureOrSuccessOption: some(failureOrSuccess)));
  }

  bool _areValuesValid() =>
      state.clientName.isValid() &&
      state.clientPhoneNumber.isValid() &&
      state.orderPrice.isValid() &&
      state.clientWilaya != null &&
      state.orderTasks.fold(
        true,
        (p, task) => p && task.product.productImagePath.isNotEmpty && task.product.productName.isNotEmpty,
      );
}
