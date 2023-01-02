import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/orders/products_watcher/products_watcher_bloc.dart';
import '../../../../domain/orders/product.dart';
import '../../../../injectable.dart';
import '../../../common/widgets/custom_flushbar.dart';
import '../../../common/widgets/progress_indicator.dart';
import 'widgets/new_product_dialog.dart';

class ProductsScreen extends StatelessWidget {
  final bool shouldReturnProduct;
  const ProductsScreen({super.key, this.shouldReturnProduct = true});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProductsWatcherBloc>()..add(const ProductsWatcherEvent.watchProductsStarted()),
      child: Scaffold(
        appBar: AppBar(title: const Text('Products')),
        floatingActionButton: FloatingActionButton.extended(
          label: const Text('New Product'),
          icon: const Icon(Icons.add_box_rounded),
          onPressed: () => showGeneralDialog<Product?>(
            context: context,
            barrierLabel: 'Dissmiss',
            barrierDismissible: true,
            pageBuilder: (context, animation, animation2) => const NewProductDialog(),
          ).then(
            (product) {
              if (product == null || !shouldReturnProduct) return;
              context.router.pop(product);
            },
          ),
        ),
        body: BlocBuilder<ProductsWatcherBloc, ProductsWatcherState>(
          builder: (context, state) {
            return Column(
              children: [
                Expanded(
                  child: state.isLoadingProducts
                      ? const RiveProgressIndicator()
                      : state.failureOrProductsOption.fold(
                          () => const SizedBox(),
                          (failureOrOrders) => failureOrOrders.fold(
                            (failure) => Text('Something went wrong: ${failure.message}'),
                            (products) => products.isEmpty()
                                ? const Text('You have no products')
                                : ListView.builder(
                                    shrinkWrap: true,
                                    primary: false,
                                    itemCount: products.size,
                                    itemBuilder: (context, index) => ListTile(
                                      enabled: !state.inProgress,
                                      title: Text(products[index].productName),
                                      onTap: () => shouldReturnProduct
                                          ? context.router.pop(products[index])
                                          : CustomFlushBar().showCustomFlushBar(
                                              context: context,
                                              message: 'You will be able to edit and delete products soon.',
                                            ),
                                      subtitle: Text(products[index].productId?.getOrCrash() ?? 'NULL'),
                                      leading: CircleAvatar(
                                        backgroundColor: Theme.of(context).colorScheme.background,
                                        backgroundImage: CachedNetworkImageProvider(products[index].productImagePath),
                                      ),
                                    ),
                                  ),
                          ),
                        ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
