part of 'new_order_form_bloc.dart';

@freezed
class NewOrderFormState with _$NewOrderFormState {
  const factory NewOrderFormState({
    required bool inProgress,
    required bool autovalidate,
    required String orderTitle,
    required Name clientName,
    required PhoneNumber clientPhoneNumber,
    required String orderDescription,
    required DateTime deliveryDate,
    required Price price,
    required List<OrderTask> tasks,
    required Option<Either<FirebaseFailure, FirebaseSuccess>> failureOrSuccessOption,
  }) = _NewOrderFormState;

  factory NewOrderFormState.initial() => NewOrderFormState(
        inProgress: false,
        autovalidate: false,
        orderTitle: '',
        clientName: Name(''),
        clientPhoneNumber: PhoneNumber(''),
        orderDescription: '',
        deliveryDate: DateTime.now(),
        price: Price(''),
        tasks: [OrderTask.empty()],
        failureOrSuccessOption: none(),
      );

  factory NewOrderFormState.fromOrder(Order order) => NewOrderFormState(
        inProgress: false,
        autovalidate: false,
        orderTitle: order.orderTitle,
        clientName: order.client.name,
        clientPhoneNumber: order.client.phoneNumber,
        orderDescription: order.orderDescription,
        deliveryDate: order.deliveryDate,
        price: order.price,
        tasks: order.tasks.asList().toList(),
        failureOrSuccessOption: none(),
      );
}
