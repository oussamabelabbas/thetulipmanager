import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart' hide Order;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import '../../../domain/core/firebase_failure.dart';
import '../../../domain/orders/i_order_repository.dart';
import '../../../domain/orders/product.dart';

part 'products_watcher_bloc.freezed.dart';
part 'products_watcher_event.dart';
part 'products_watcher_state.dart';

@injectable
class ProductsWatcherBloc extends Bloc<ProductsWatcherEvent, ProductsWatcherState> {
  final IOrderRepository _orderRepository;
  ProductsWatcherBloc(this._orderRepository) : super(ProductsWatcherState.initial()) {
    on<WatchProductsStarted>(_onWatchProductsStarted);
    on<ProductsReceived>(_onProductsReceived);
    on<ProductNameChanged>(_onProductNameChanged);
    on<ProductImageFileChanged>(_onProductImageFileChanged);
    on<AddProductPressed>(_onAddProductPressed);
  }
  StreamSubscription<Either<FirebaseFailure, KtList<Product>>>? _productsSubscription;

  void _onWatchProductsStarted(WatchProductsStarted event, Emitter<ProductsWatcherState> emit) async {
    emit(state.copyWith(isLoadingProducts: true));

    await _productsSubscription?.cancel();

    _productsSubscription = _orderRepository
        .watchProducts()
        .listen((failureOrProducts) => add(ProductsReceived(failureOrProducts: failureOrProducts)));
  }

  void _onProductsReceived(ProductsReceived event, Emitter<ProductsWatcherState> emit) async {
    emit(state.copyWith(
      isLoadingProducts: false,
      failureOrProductsOption: some(event.failureOrProducts),
    ));
  }

  void _onProductNameChanged(ProductNameChanged event, Emitter<ProductsWatcherState> emit) async {
    emit(state.copyWith(productName: event.productName));
  }

  void _onProductImageFileChanged(ProductImageFileChanged event, Emitter<ProductsWatcherState> emit) async {
    emit(state.copyWith(productImageFile: event.productImageFile));
  }

  void _onAddProductPressed(AddProductPressed event, Emitter<ProductsWatcherState> emit) async {
    if (state.productImageFile == null || state.productName.isEmpty) return;

    emit(state.copyWith(inProgress: true));

    Either<FirebaseFailure, Product> failureOrSuccess = await _orderRepository.createProduct(
      productName: state.productName,
      productImageFile: state.productImageFile!,
    );

    emit(state.copyWith(
      inProgress: false,
      failureOrSuccessOption: some(failureOrSuccess),
    ));
  }

  @override
  Future<void> close() {
    _productsSubscription?.cancel();
    return super.close();
  }
}
