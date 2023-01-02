import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/auth/value_objects.dart';
import '../../../domain/core/firebase_failure.dart';
import '../../../domain/orders/client.dart';
import '../../../domain/orders/i_order_repository.dart';

part 'client_fetcher_event.dart';
part 'client_fetcher_state.dart';
part 'client_fetcher_bloc.freezed.dart';

@injectable
class ClientFetcherBloc extends Bloc<ClientFetcherEvent, ClientFetcherState> {
  final IOrderRepository _orderRepository;
  ClientFetcherBloc(this._orderRepository) : super(ClientFetcherState.initial()) {
    on<ClientPhoneNumberChanged>(_onClientPhoneNumberChanged);
    on<FetchClientStarted>(_onFetchClientStarted);
  }

  void _onClientPhoneNumberChanged(ClientPhoneNumberChanged event, Emitter<ClientFetcherState> emit) {
    emit(state.copyWith(
      clientPhoneNumber: PhoneNumber(event.clientPhoneNumber),
      failureOrClientOption: none(),
    ));

    add(const FetchClientStarted());
  }

  void _onFetchClientStarted(FetchClientStarted event, Emitter<ClientFetcherState> emit) async {
    if (!state.clientPhoneNumber.isValid()) return;

    emit(state.copyWith(inProgress: true));

    Either<FirebaseFailure, Option<Client>> failureOrClient = await _orderRepository.fetchClientFromPhoneNumber(
      clientPhoneNumber: state.clientPhoneNumber,
    );

    emit(state.copyWith(inProgress: false, failureOrClientOption: some(failureOrClient)));
  }
}
