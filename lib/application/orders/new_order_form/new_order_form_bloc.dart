import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart' hide Order;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import '../../../domain/auth/value_objects.dart';
import '../../../domain/core/firebase_failure.dart';
import '../../../domain/core/firebase_success.dart';
import '../../../domain/core/value_object.dart';
import '../../../domain/orders/i_order_repository.dart';
import '../../../domain/orders/order.dart';
import '../../../domain/orders/order_task.dart';

part 'new_order_form_event.dart';
part 'new_order_form_state.dart';
part 'new_order_form_bloc.freezed.dart';

@injectable
class NewOrderFormBloc extends Bloc<NewOrderFormEvent, NewOrderFormState> {
  final IOrderRepository _orderRepository;
  NewOrderFormBloc(this._orderRepository) : super(NewOrderFormState.initial()) {
    on<Started>(_onStarted);
    on<OrderTitleChanged>(_onOrderTitleChanged);
    on<ClientNameChanged>(_onClientNameChanged);
    on<ClientPhoneNumberChanged>(_onClientPhoneNumberChanged);
    on<OrderDescriptionChanged>(_onOrderDescriptionChanged);
    on<DeliveryDateChanged>(_onDeliveryDateChanged);
    on<PriceChanged>(_onPriceChanged);
    on<TaskAdded>(_onTaskAdded);
    on<TaskDescriptionChanged>(_onTaskDescriptionChanged);
    on<TaskDeleted>(_onTaskDeleted);
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

  void _onOrderTitleChanged(OrderTitleChanged event, Emitter<NewOrderFormState> emit) async {
    emit(state.copyWith(orderTitle: event.orderTitle));
  }

  void _onClientNameChanged(ClientNameChanged event, Emitter<NewOrderFormState> emit) async {
    emit(state.copyWith(clientName: Name(event.clientName)));
  }

  void _onClientPhoneNumberChanged(ClientPhoneNumberChanged event, Emitter<NewOrderFormState> emit) async {
    emit(state.copyWith(clientPhoneNumber: PhoneNumber('+213${event.clientPhoneNumber}')));
  }

  void _onOrderDescriptionChanged(OrderDescriptionChanged event, Emitter<NewOrderFormState> emit) async {
    emit(state.copyWith(orderDescription: event.orderDescription));
  }

  void _onDeliveryDateChanged(DeliveryDateChanged event, Emitter<NewOrderFormState> emit) async {
    emit(state.copyWith(deliveryDate: event.deliveryDate));
  }

  void _onPriceChanged(PriceChanged event, Emitter<NewOrderFormState> emit) async {
    emit(state.copyWith(price: Price(event.price)));
  }

  void _onTaskAdded(TaskAdded event, Emitter<NewOrderFormState> emit) async {
    emit(state.copyWith(
      tasks: state.tasks.toList()..add(OrderTask(taskId: UniqueId(), description: '', isDone: false)),
    ));
  }

  void _onTaskDescriptionChanged(TaskDescriptionChanged event, Emitter<NewOrderFormState> emit) async {
    List<OrderTask> tasks = state.tasks.toList();

    int taskIndex = tasks.indexWhere((element) => element.taskId == event.taskId);

    tasks[taskIndex] = tasks[taskIndex].copyWith(description: event.taskDescription);

    emit(state.copyWith(
      tasks: tasks,
    ));
  }

  void _onTaskDeleted(TaskDeleted event, Emitter<NewOrderFormState> emit) async {
    if (state.tasks.length <= 1) return;
    emit(state.copyWith(
      tasks: state.tasks.toList()..removeWhere((element) => element.taskId == event.taskId),
    ));
  }

  void _onConfirmOrderPressed(ConfirmOrderPressed event, Emitter<NewOrderFormState> emit) async {
    print('ayetli');

    emit(state.copyWith(inProgress: true, autovalidate: true, failureOrSuccessOption: none()));

    bool areValuesValid = state.orderTitle.isNotEmpty &&
        state.clientName.isValid() &&
        state.clientPhoneNumber.isValid() &&
        state.orderDescription.isNotEmpty &&
        state.price.isValid() &&
        state.tasks.fold(true, (p, e) => p && e.description.isNotEmpty);

    if (!areValuesValid) {
      emit(state.copyWith(inProgress: false));
      return;
    }
    print('wah');

    Either<FirebaseFailure, FirebaseSuccess> failureOrSuccess = await _orderRepository.addOrder(
      orderTitle: state.orderTitle,
      clientName: state.clientName,
      clientPhoneNumber: state.clientPhoneNumber,
      orderDescription: state.orderDescription,
      deliveryDate: state.deliveryDate,
      price: state.price,
      tasks: state.tasks.toImmutableList(),
    );
    print(failureOrSuccess);

    emit(state.copyWith(inProgress: false, failureOrSuccessOption: some(failureOrSuccess)));
  }

  void _onUpdateOrderPressed(UpdateOrderPressed event, Emitter<NewOrderFormState> emit) async {
    emit(state.copyWith(inProgress: true, autovalidate: true, failureOrSuccessOption: none()));

    bool areValuesValid = state.orderTitle.isNotEmpty &&
        state.clientName.isValid() &&
        state.clientPhoneNumber.isValid() &&
        state.orderDescription.isNotEmpty &&
        state.price.isValid() &&
        state.tasks.fold(true, (p, e) => p && e.description.isNotEmpty);

    if (!areValuesValid) {
      emit(state.copyWith(inProgress: false));
      return;
    }
    print('wah');

    Either<FirebaseFailure, FirebaseSuccess> failureOrSuccess = await _orderRepository.updateOrder(
      orderId: event.orderId,
      orderTitle: state.orderTitle,
      clientName: state.clientName,
      clientPhoneNumber: state.clientPhoneNumber,
      orderDescription: state.orderDescription,
      deliveryDate: state.deliveryDate,
      price: state.price,
      tasks: state.tasks.toImmutableList(),
    );

    emit(state.copyWith(inProgress: false, failureOrSuccessOption: some(failureOrSuccess)));
  }
}
