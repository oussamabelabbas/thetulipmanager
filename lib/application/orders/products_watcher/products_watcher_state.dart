part of 'products_watcher_bloc.dart';

@freezed
class ProductsWatcherState with _$ProductsWatcherState {
  const factory ProductsWatcherState({
    required bool inProgress,
    required bool isLoadingProducts,
    required Option<Either<FirebaseFailure, KtList<Product>>> failureOrProductsOption,
    required String productName,
    required File? productImageFile,
    required Option<Either<FirebaseFailure, Product>> failureOrSuccessOption,
  }) = _ProductsWatcherState;

  factory ProductsWatcherState.initial() => ProductsWatcherState(
        inProgress: false,
        isLoadingProducts: false,
        failureOrProductsOption: none(),
        productName: '',
        productImageFile: null,
        failureOrSuccessOption: none(),
      );
}
