part of 'clients_watcher_bloc.dart';

@freezed
class ClientsWatcherEvent with _$ClientsWatcherEvent {
  const factory ClientsWatcherEvent.watchClientsStarted() = WatchClientsStarted;
  const factory ClientsWatcherEvent.clientsReceived({
    required Either<FirebaseFailure, KtList<Client>> failureOrClients,
  }) = ClientsReceived;
}
