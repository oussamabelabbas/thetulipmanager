import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:thetulipmanager/domain/core/value_object.dart';

import '../../domain/orders/product.dart';

part 'product_dto.freezed.dart';
part 'product_dto.g.dart';

@freezed
abstract class ProductDto implements _$ProductDto {
  const factory ProductDto({
    @JsonKey(ignore: true) String? productId,
    required String productName,
    required String productImagePath,
  }) = _ProductDto;

  factory ProductDto.fromDomain(Product product) => ProductDto(
        productId: product.productId?.getOrCrash(),
        productName: product.productName,
        productImagePath: product.productImagePath,
      );

  Product toDomain() => Product(
        productId: UniqueId.fromUniqueString(productId!),
        productName: productName,
        productImagePath: productImagePath,
      );

  const ProductDto._();

  factory ProductDto.fromJson(Map<String, dynamic> json) => _$ProductDtoFromJson(json);

  factory ProductDto.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> snapshot) =>
      ProductDto.fromJson(snapshot.data() ?? {}).copyWith(
        productId: snapshot.id,
      );
}
