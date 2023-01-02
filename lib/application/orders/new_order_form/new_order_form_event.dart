part of 'new_order_form_bloc.dart';

@freezed
class NewOrderFormEvent with _$NewOrderFormEvent {
  const factory NewOrderFormEvent.started({required Option<UniqueId> orderIdOption}) = Started;
  const factory NewOrderFormEvent.clientNameChanged({required String clientName}) = ClientNameChanged;
  const factory NewOrderFormEvent.clientPhoneNumberChanged({required String clientPhoneNumber}) =
      ClientPhoneNumberChanged;
  const factory NewOrderFormEvent.clientAddressChanged({required String clientAddress}) = ClientAddressChanged;
  const factory NewOrderFormEvent.clientWilayaChanged({required Wilaya? clientWilaya}) = ClientWilayaChanged;

  const factory NewOrderFormEvent.orderDateChanged({required DateTime orderDate}) = OrderDateChanged;
  const factory NewOrderFormEvent.orderDeliveryDateChanged({required DateTime orderDeliveryDate}) =
      OrderDeliveryDateChanged;
  const factory NewOrderFormEvent.orderPriceChanged({required String orderPrice}) = OrderPriceChanged;

  const factory NewOrderFormEvent.taskAdded() = TaskAdded;
  const factory NewOrderFormEvent.taskProductChanged({
    required UniqueId taskId,
    required Product product,
  }) = TaskProductChanged;
  const factory NewOrderFormEvent.taskDescriptionChanged({
    required UniqueId taskId,
    required String taskDescription,
  }) = TaskDescriptionChanged;
  const factory NewOrderFormEvent.taskDeleted({required UniqueId taskId}) = TaskDeleted;

  const factory NewOrderFormEvent.oldClientChanged({required Option<Client> oldClientOption}) = OldClientChanged;
  const factory NewOrderFormEvent.confirmOrderPressed() = ConfirmOrderPressed;
  const factory NewOrderFormEvent.updateOrderPressed({required UniqueId orderId}) = UpdateOrderPressed;
}
