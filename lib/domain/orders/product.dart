import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/value_object.dart';

part 'product.freezed.dart';

@freezed
class Product with _$Product {
  const factory Product({
    UniqueId? productId,
    required String productName,
    required String productImagePath,
  }) = _Product;

  factory Product.empty() => const Product(
        productName: '',
        productImagePath: '',
      );
}
