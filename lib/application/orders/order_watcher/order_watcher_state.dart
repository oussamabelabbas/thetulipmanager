part of 'order_watcher_bloc.dart';

@freezed
class OrderWatcherState with _$OrderWatcherState {
  const factory OrderWatcherState.initial() = _Initial;
  const factory OrderWatcherState.inProgress() = _InProgress;
  const factory OrderWatcherState.fetchsucceded({required Order order}) = _Fetchsucceded;
  const factory OrderWatcherState.fetchFailed({required FirebaseFailure failure}) = _FetchFailed;
}
