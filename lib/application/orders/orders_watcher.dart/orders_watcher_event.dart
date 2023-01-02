part of 'orders_watcher_bloc.dart';

@freezed
class OrdersWatcherEvent with _$OrdersWatcherEvent {
  const factory OrdersWatcherEvent.watchOrdersStarted() = WatchOrdersStarted;
  const factory OrdersWatcherEvent.watchedStateChanged({
    required OrderState watchedState,
  }) = WatchedStateChanged;
  const factory OrdersWatcherEvent.ordersReceived({
    required Either<FirebaseFailure, KtList<Order>> failureOrOrders,
  }) = OrdersReceived;
}
