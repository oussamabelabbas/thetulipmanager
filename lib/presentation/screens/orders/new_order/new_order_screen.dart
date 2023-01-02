import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/orders/new_order_form/new_order_form_bloc.dart';
import '../../../../application/orders/products_watcher/products_watcher_bloc.dart';
import '../../../../domain/core/value_object.dart';
import '../../../../injectable.dart';
import '../../../common/theme/icons.dart';
import '../../../common/widgets/cta_button.dart';
import '../../../common/widgets/progress_overlay.dart';
import 'widgets/client_form.dart';
import 'widgets/order_details_form.dart';
import 'widgets/tasks_form.dart';

class NewOrderScreen extends StatelessWidget {
  final Option<UniqueId> orderIdOption;
  const NewOrderScreen({super.key, required this.orderIdOption});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<NewOrderFormBloc>()..add(NewOrderFormEvent.started(orderIdOption: orderIdOption)),
        ),
        BlocProvider(
          create: (context) => getIt<ProductsWatcherBloc>()..add(const ProductsWatcherEvent.watchProductsStarted()),
        ),
      ],
      child: BlocConsumer<NewOrderFormBloc, NewOrderFormState>(
        listener: (context, state) {
          state.failureOrSuccessOption.fold(
            () => null,
            (failureOrSuccess) => failureOrSuccess.fold(
              (f) => Flushbar(
                message: f.message,
                backgroundColor: Theme.of(context).errorColor,
                messageColor: Colors.white,
              ).show(context),
              (success) => success.maybeMap(
                orElse: () => null,
                orderCreated: (_) => context.router.pop(),
              ),
            ),
          );
        },
        builder: (context, state) {
          return WillPopScope(
            onWillPop: () async {
              if (!context.read<NewOrderFormBloc>().state.inProgress) return true;
              Flushbar(
                message: 'Please wait until the upload is done, Thank you.',
                backgroundColor: Theme.of(context).primaryColor,
                messageColor: Colors.white,
              ).show(context);
              return false;
            },
            child: Scaffold(
              appBar: AppBar(
                title: const Text('New Order'),
                leading: IconButton(
                  onPressed: context.router.pop,
                  icon: const Icon(IconlyBroken.arrow___left_2),
                ),
              ),
              body: ProgressOverlay(
                inProgress: state.inProgress,
                child: state.inProgress
                    ? const SizedBox()
                    : SingleChildScrollView(
                        padding: const EdgeInsets.all(16.0),
                        child: Form(
                          key: ValueKey(state.inProgress),
                          autovalidateMode: state.autovalidate ? AutovalidateMode.always : AutovalidateMode.disabled,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const ClientForm(),
                              const OrderDetailsForm(),
                              TasksForm(),
                              orderIdOption.fold(
                                () => CTAButton(
                                  onPressed: () => context.read<NewOrderFormBloc>().add(
                                        const NewOrderFormEvent.confirmOrderPressed(),
                                      ),
                                  icon: const Icon(IconlyBroken.plus),
                                  label: const Text('Confirm Order'),
                                ),
                                (orderId) => CTAButton(
                                  onPressed: () => context.read<NewOrderFormBloc>().add(
                                        NewOrderFormEvent.updateOrderPressed(orderId: orderId),
                                      ),
                                  icon: const Icon(IconlyBroken.plus),
                                  label: const Text('Update Order'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
              ),
            ),
          );
        },
      ),
    );
  }
}
