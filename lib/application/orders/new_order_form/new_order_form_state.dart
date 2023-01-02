part of 'new_order_form_bloc.dart';

@freezed
class NewOrderFormState with _$NewOrderFormState {
  const factory NewOrderFormState({
    required bool inProgress,
    required bool autovalidate,
    required Name clientName,
    required Wilaya? clientWilaya,
    required String clientAddress,
    required PhoneNumber clientPhoneNumber,
    required DateTime orderDate,
    required DateTime orderDeliveryDate,
    required Price orderPrice,
    required List<OrderTask> orderTasks,
    required Option<Either<FirebaseFailure, FirebaseSuccess>> failureOrSuccessOption,
    required Option<Client> oldClientOption,
  }) = _NewOrderFormState;

  factory NewOrderFormState.initial() => NewOrderFormState(
        inProgress: false,
        autovalidate: false,
        clientName: Name(''),
        clientPhoneNumber: PhoneNumber(''),
        clientAddress: '',
        clientWilaya: null,
        orderDate: DateTime.now(),
        orderDeliveryDate: DateTime.now().add(const Duration(days: 1)),
        orderPrice: Price(''),
        orderTasks: [OrderTask.empty()],
        failureOrSuccessOption: none(),
        oldClientOption: none(),
      );

  factory NewOrderFormState.fromOrder(Order order) => NewOrderFormState(
        inProgress: false,
        autovalidate: false,
        clientPhoneNumber: order.client.clientPhoneNumber,
        clientName: order.client.clientName,
        clientWilaya: order.client.clientWilaya,
        clientAddress: order.client.clientAddress,
        orderDate: order.orderDate,
        orderDeliveryDate: order.orderDeliveryDate,
        orderPrice: order.orderPrice,
        orderTasks: order.orderTasks.asList(),
        failureOrSuccessOption: none(),
        oldClientOption: some(order.client),
      );
}
