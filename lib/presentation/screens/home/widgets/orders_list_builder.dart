import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/orders/orders_actor/orders_actor_bloc.dart';
import '../../../../application/orders/orders_watcher.dart/orders_watcher_bloc.dart';
import '../../../../domain/orders/order.dart';
import '../../../../injectable.dart';
import '../../../common/routes/app_router.gr.dart';
import '../../../common/widgets/progress_indicator.dart';
import 'order_tile.dart';

class OrdersListBuilder extends StatelessWidget {
  const OrdersListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => getIt<OrdersWatcherBloc>()..add(const OrdersWatcherEvent.watchOrdersStarted())),
        BlocProvider(create: (context) => getIt<OrdersActorBloc>()),
      ],
      child: BlocBuilder<OrdersWatcherBloc, OrdersWatcherState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Your Orders ${state.failureOrOrdersOption.fold(
                    () => '',
                    (failureOrOrders) => failureOrOrders.fold(
                      (f) => '',
                      (orders) => '(${orders.size.toString()})',
                    ),
                  )}',
                  style: Theme.of(context).textTheme.titleLarge,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
              SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: OrderState.values.map((orderState) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: ChoiceChip(
                        label: Text(orderState.stateName),
                        selected: orderState == state.watchedState,
                        onSelected: (isSelected) {
                          context
                              .read<OrdersWatcherBloc>()
                              .add(OrdersWatcherEvent.watchedStateChanged(watchedState: orderState));
                        },
                      ),
                    );
                  }).toList(),
                ),
              ),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 350),
                layoutBuilder: (currentChild, previousChildren) => Stack(
                  alignment: Alignment.topCenter,
                  children: [...previousChildren, currentChild ?? const SizedBox()],
                ),
                transitionBuilder: (child, animation) => FadeTransition(opacity: animation, child: child),
                child: state.inProgress
                    ? const AspectRatio(aspectRatio: 1, child: Center(child: RiveProgressIndicator()))
                    : state.failureOrOrdersOption.fold(
                        () => const SizedBox(),
                        (failureOrOrders) => failureOrOrders.fold(
                          (failure) => Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Oops! looks like something went wrong: ${failure.message}\nYou can'),
                                TextButton(
                                  onPressed: () => context
                                      .read<OrdersWatcherBloc>()
                                      .add(const OrdersWatcherEvent.watchOrdersStarted()),
                                  child: const Text('Try Again'),
                                ),
                                const Align(
                                    alignment: Alignment.centerLeft, child: Text('If the problem presists please')),
                                TextButton(
                                  onPressed: () => context.router.push(const ProfileRoute()),
                                  child: const Text('Contact Us'),
                                ),
                              ],
                            ),
                          ),
                          (orders) => orders.isEmpty()
                              ? const AspectRatio(aspectRatio: 3, child: Center(child: Text('No orders found 🤷‍♂️')))
                              : ListView.separated(
                                  shrinkWrap: true,
                                  itemCount: orders.size,
                                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                                  physics: const NeverScrollableScrollPhysics(),
                                  separatorBuilder: (_, __) => const SizedBox(height: 12.0),
                                  itemBuilder: (context, index) => OrderTile(order: orders[index]),
                                ),
                        ),
                      ),
              ),
            ],
          );
        },
      ),
    );
  }
}
