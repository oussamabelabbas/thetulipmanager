import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import '../../../domain/core/firebase_failure.dart';
import '../../../domain/orders/client.dart';
import '../../../domain/orders/i_order_repository.dart';

part 'clients_watcher_bloc.freezed.dart';
part 'clients_watcher_event.dart';
part 'clients_watcher_state.dart';

@injectable
class ClientsWatcherBloc extends Bloc<ClientsWatcherEvent, ClientsWatcherState> {
  final IOrderRepository _orderRepository;
  ClientsWatcherBloc(this._orderRepository) : super(ClientsWatcherState.initial()) {
    on<WatchClientsStarted>(_onWatchClientsStarted);
    on<ClientsReceived>(_onClientsReceived);
  }

  StreamSubscription<Either<FirebaseFailure, KtList<Client>>>? _clientsSubscription;

  void _onWatchClientsStarted(WatchClientsStarted event, Emitter<ClientsWatcherState> emit) async {
    emit(state.copyWith(inProgress: true, failureOrClientsOption: none()));

    await _clientsSubscription?.cancel();

    _clientsSubscription = _orderRepository
        .watchClients()
        .listen((failureOrClients) => add(ClientsReceived(failureOrClients: failureOrClients)));
  }

  void _onClientsReceived(ClientsReceived event, Emitter<ClientsWatcherState> emit) async {
    emit(event.failureOrClients.fold(
      (failure) => state.copyWith(failureOrClientsOption: some(left(failure))),
      (clients) => state.copyWith(failureOrClientsOption: some(right(clients))),
    ));
    emit(state.copyWith(inProgress: false));
  }

  @override
  Future<void> close() async {
    await _clientsSubscription?.cancel();
    return super.close();
  }
}
