part of 'client_fetcher_bloc.dart';

@freezed
class ClientFetcherState with _$ClientFetcherState {
  const factory ClientFetcherState({
    required bool inProgress,
    required PhoneNumber clientPhoneNumber,
    required Option<Either<FirebaseFailure, Option<Client>>> failureOrClientOption,
  }) = _ClientFetcherState;

  factory ClientFetcherState.initial() => ClientFetcherState(
        inProgress: false,
        clientPhoneNumber: PhoneNumber(''),
        failureOrClientOption: none(),
      );
}
