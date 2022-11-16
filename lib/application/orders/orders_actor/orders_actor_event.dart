part of 'orders_actor_bloc.dart';

@freezed
class OrdersActorEvent with _$OrdersActorEvent {
  const factory OrdersActorEvent.toggleTaskState({
    required Order order,
    required OrderTask task,
  }) = ToggleTaskState;
  const factory OrdersActorEvent.toggleOrderDone({
    required UniqueId orderId,
  }) = ToggleOrderDone;
  const factory OrdersActorEvent.toggleOrderArchived({
    required UniqueId orderId,
  }) = ToggleOrderArchived;
  const factory OrdersActorEvent.deleteOrder({
    required UniqueId orderId,
  }) = DeleteOrder;
}
