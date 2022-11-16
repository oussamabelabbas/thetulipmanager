part of 'new_order_form_bloc.dart';

@freezed
class NewOrderFormEvent with _$NewOrderFormEvent {
  const factory NewOrderFormEvent.started({required Option<UniqueId> orderIdOption}) = Started;
  const factory NewOrderFormEvent.orderTitleChanged({required String orderTitle}) = OrderTitleChanged;
  const factory NewOrderFormEvent.clientNameChanged({required String clientName}) = ClientNameChanged;
  const factory NewOrderFormEvent.clientPhoneNumberChanged({required String clientPhoneNumber}) =
      ClientPhoneNumberChanged;
  const factory NewOrderFormEvent.orderDescriptionChanged({required String orderDescription}) = OrderDescriptionChanged;
  const factory NewOrderFormEvent.deliveryDateChanged({required DateTime deliveryDate}) = DeliveryDateChanged;
  const factory NewOrderFormEvent.priceChanged({required String price}) = PriceChanged;
  const factory NewOrderFormEvent.taskAdded() = TaskAdded;
  const factory NewOrderFormEvent.taskDescriptionChanged({required UniqueId taskId, required String taskDescription}) =
      TaskDescriptionChanged;
  const factory NewOrderFormEvent.taskDeleted({required UniqueId taskId}) = TaskDeleted;
  const factory NewOrderFormEvent.confirmOrderPressed() = ConfirmOrderPressed;
  const factory NewOrderFormEvent.updateOrderPressed({required UniqueId orderId}) = UpdateOrderPressed;
}
