part of 'orders_watcher_bloc.dart';

@freezed
class OrdersWatcherEvent with _$OrdersWatcherEvent {
  const factory OrdersWatcherEvent.watchActiveStarted() = WatchActiveStarted;
  const factory OrdersWatcherEvent.watchDoneStarted() = WatchDoneStarted;
  const factory OrdersWatcherEvent.watchArchivedStarted() = WatchArchivedStarted;
  const factory OrdersWatcherEvent.ordersReceived({
    required Either<FirebaseFailure, KtList<Order>> failureOrOrders,
  }) = OrdersReceived;
}
