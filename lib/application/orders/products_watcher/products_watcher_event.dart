part of 'products_watcher_bloc.dart';

@freezed
class ProductsWatcherEvent with _$ProductsWatcherEvent {
  const factory ProductsWatcherEvent.watchProductsStarted() = WatchProductsStarted;
  const factory ProductsWatcherEvent.productsReceived({
    required Either<FirebaseFailure, KtList<Product>> failureOrProducts,
  }) = ProductsReceived;

  const factory ProductsWatcherEvent.productNameChanged({
    required String productName,
  }) = ProductNameChanged;
  const factory ProductsWatcherEvent.productImageFileChanged({
    required File? productImageFile,
  }) = ProductImageFileChanged;
  const factory ProductsWatcherEvent.addProductPressed() = AddProductPressed;
}
