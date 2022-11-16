part of 'orders_watcher_bloc.dart';

@freezed
class OrdersWatcherState with _$OrdersWatcherState {
  const factory OrdersWatcherState.initial() = _Initial;
  const factory OrdersWatcherState.inProgress() = _InProgress;
  const factory OrdersWatcherState.fetchsucceded({required KtList<Order> orders}) = _Fetchsucceded;
  const factory OrdersWatcherState.fetchFailed({required FirebaseFailure failure}) = _FetchFailed;
}
