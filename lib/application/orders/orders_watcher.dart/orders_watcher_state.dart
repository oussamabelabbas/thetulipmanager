part of 'orders_watcher_bloc.dart';

@freezed
class OrdersWatcherState with _$OrdersWatcherState {
  const factory OrdersWatcherState({
    required bool inProgress,
    required OrderState watchedState,
    required Option<Either<FirebaseFailure, KtList<Order>>> failureOrOrdersOption,
  }) = _OrdersWatcherState;

  factory OrdersWatcherState.initial() => OrdersWatcherState(
        inProgress: false,
        watchedState: OrderState.active,
        failureOrOrdersOption: none(),
      );
}
