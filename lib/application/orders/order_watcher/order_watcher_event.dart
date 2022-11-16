part of 'order_watcher_bloc.dart';

@freezed
class OrderWatcherEvent with _$OrderWatcherEvent {
  const factory OrderWatcherEvent.watchOrderStarted({required UniqueId orderId}) = WatchOrderStarted;
  const factory OrderWatcherEvent.orderReceived({
    required Either<FirebaseFailure, Order> failureOrOrder,
  }) = OrderReceived;
}
