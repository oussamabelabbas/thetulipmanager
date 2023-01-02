part of 'orders_actor_bloc.dart';

@freezed
class OrdersActorEvent with _$OrdersActorEvent {
  const factory OrdersActorEvent.toggleTaskState({
    required Order order,
    required OrderTask task,
  }) = ToggleTaskState;
  const factory OrdersActorEvent.toggleOrderState({
    required UniqueId orderId,
    required OrderState orderState,
  }) = ToggleOrderState;
  const factory OrdersActorEvent.deleteOrder({
    required UniqueId orderId,
  }) = DeleteOrder;
}
