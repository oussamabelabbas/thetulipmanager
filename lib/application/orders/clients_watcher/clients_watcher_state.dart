part of 'clients_watcher_bloc.dart';

@freezed
class ClientsWatcherState with _$ClientsWatcherState {
  const factory ClientsWatcherState({
    required bool inProgress,
    required Option<Either<FirebaseFailure, KtList<Client>>> failureOrClientsOption,
  }) = _ClientsWatcherState;

  factory ClientsWatcherState.initial() => ClientsWatcherState(
        inProgress: false,
        failureOrClientsOption: none(),
      );
}
