part of 'client_fetcher_bloc.dart';

@freezed
class ClientFetcherEvent with _$ClientFetcherEvent {
  const factory ClientFetcherEvent.clientPhoneNumberChanged({
    required String clientPhoneNumber,
  }) = ClientPhoneNumberChanged;
  const factory ClientFetcherEvent.fetchClientStarted() = FetchClientStarted;
}
