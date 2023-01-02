import 'dart:io';
import 'dart:ui';

import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../application/orders/products_watcher/products_watcher_bloc.dart';
import '../../../../../injectable.dart';
import '../../../../common/widgets/progress_overlay.dart';

class NewProductDialog extends StatelessWidget {
  const NewProductDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProductsWatcherBloc>(),
      child: BlocConsumer<ProductsWatcherBloc, ProductsWatcherState>(
        listenWhen: (previous, current) => previous.failureOrSuccessOption != current.failureOrSuccessOption,
        listener: (context, state) {
          state.failureOrSuccessOption.fold(
            () => null,
            (failureOrProduct) => failureOrProduct.fold(
              (failure) => Flushbar(
                shouldIconPulse: true,
                message: failure.message,
                duration: const Duration(milliseconds: 3000),
                icon: const Icon(Icons.error_outline_rounded),
                messageColor: Theme.of(context).colorScheme.onError,
                backgroundColor: Theme.of(context).colorScheme.error,
              ).show(context),
              (product) => context.router.pop(product),
            ),
          );
        },
        builder: (context, state) => ProgressOverlay(
          inProgress: state.inProgress,
          child: AlertDialog(
            title: const Text('New Order'),
            actions: [
              TextButton(onPressed: context.router.pop, child: const Text('Cancel')),
              TextButton(
                onPressed: state.productName.isEmpty || state.productImageFile == null
                    ? null
                    : () => context.read<ProductsWatcherBloc>().add(const ProductsWatcherEvent.addProductPressed()),
                child: const Text('Add Product'),
              ),
            ],
            content: AspectRatio(
              aspectRatio: 1,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24.0),
                      image: state.productImageFile == null
                          ? null
                          : DecorationImage(image: FileImage(File(state.productImageFile!.path)), fit: BoxFit.cover),
                    ),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(24.0),
                      child: state.productImageFile == null
                          ? Container(
                              color: Theme.of(context).colorScheme.onBackground.withOpacity(.1),
                              child: const Center(child: Icon(Icons.image_rounded)),
                            )
                          : null,
                      onTap: () async {
                        Color primary = Theme.of(context).colorScheme.primary;
                        Color background = Theme.of(context).colorScheme.background;
                        XFile? xfile = await ImagePicker().pickImage(imageQuality: 25, source: ImageSource.gallery);
                        if (xfile == null) return;
                        ImageCropper().cropImage(
                          sourcePath: xfile.path,
                          aspectRatioPresets: [CropAspectRatioPreset.square],
                          uiSettings: [
                            AndroidUiSettings(
                              toolbarTitle: 'Crop the image into a square',
                              toolbarColor: primary,
                              toolbarWidgetColor: background,
                              initAspectRatio: CropAspectRatioPreset.square,
                              lockAspectRatio: true,
                            ),
                          ],
                        ).then(
                          (croppedFile) {
                            if (croppedFile == null) return;
                            context.read<ProductsWatcherBloc>().add(
                                  ProductsWatcherEvent.productImageFileChanged(
                                      productImageFile: File(croppedFile.path)),
                                );
                          },
                        );
                      },
                    ),
                  ),
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(bottom: Radius.circular(24.0)),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                      child: TextFormField(
                        maxLines: 1,
                        initialValue: state.productName,
                        key: ValueKey(state.inProgress),
                        keyboardType: TextInputType.name,
                        textCapitalization: TextCapitalization.sentences,
                        onChanged: (name) => context.read<ProductsWatcherBloc>().add(
                              ProductsWatcherEvent.productNameChanged(productName: name),
                            ),
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: 'Product Name',
                          enabled: !state.inProgress,
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintStyle: Theme.of(context).inputDecorationTheme.hintStyle?.copyWith(
                                color: Theme.of(context).colorScheme.onBackground.withOpacity(.5),
                              ),
                          fillColor: Theme.of(context).colorScheme.background.withOpacity(.5),
                          border:
                              const OutlineInputBorder(borderRadius: BorderRadius.zero, borderSide: BorderSide.none),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
