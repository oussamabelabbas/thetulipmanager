import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/orders/order_watcher/order_watcher_bloc.dart';
import '../../../../application/orders/orders_actor/orders_actor_bloc.dart';
import '../../../../domain/core/value_object.dart';
import '../../../../domain/orders/order.dart';
import '../../../../injectable.dart';
import '../../../common/theme/icons.dart';
import '../../../common/theme/theme.dart';
import '../../../common/widgets/progress_overlay.dart';
import 'widgets/about_card.dart';
import 'widgets/action_button.dart';
import 'widgets/client_card.dart';
import 'widgets/deadline_card.dart';
import 'widgets/tasks_card.dart';

class OrderScreen extends StatelessWidget {
  final UniqueId orderId;
  const OrderScreen({super.key, required this.orderId});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => getIt<OrderWatcherBloc>()..add(OrderWatcherEvent.watchOrderStarted(orderId: orderId))),
        BlocProvider(create: (context) => getIt<OrdersActorBloc>()),
      ],
      child: BlocBuilder<OrdersActorBloc, OrdersActorState>(
        builder: (context, state) {
          return ProgressOverlay(
            inProgress: state.isBusy,
            child: BlocBuilder<OrderWatcherBloc, OrderWatcherState>(
              builder: (context, state) {
                return Theme(
                  data: state.maybeMap(
                    fetchsucceded: (state) => state.order.isArchived ? TheTulipThemes.dark : Theme.of(context),
                    orElse: () => Theme.of(context),
                  ),
                  child: Scaffold(
                    appBar: state.maybeMap(
                      orElse: () => AppBar(
                        leading:
                            IconButton(onPressed: context.router.pop, icon: const Icon(IconlyBroken.arrow___left_2)),
                      ),
                      fetchsucceded: (state) => AppBar(
                        leading:
                            IconButton(onPressed: context.router.pop, icon: const Icon(IconlyBroken.arrow___left_2)),
                        title: Text(state.order.orderTitle),
                        actions: [ActionButton(orderId: orderId, isDone: state.order.isDone)],
                      ),
                    ),
                    body: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 450),
                      child: state.map(
                        initial: (_) => const SizedBox(),
                        inProgress: (_) => const Center(child: CircularProgressIndicator()),
                        fetchFailed: (state) => Center(child: Text(state.failure.message)),
                        fetchsucceded: (state) {
                          Order order = state.order;
                          return Stack(
                            children: [
                              SingleChildScrollView(
                                padding: const EdgeInsets.all(16.0),
                                child: AbsorbPointer(
                                  absorbing: order.isArchived,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      if (order.isDone && !order.isArchived)
                                        ElevatedButton.icon(
                                          onPressed: () => context
                                              .read<OrdersActorBloc>()
                                              .add(ToggleOrderArchived(orderId: orderId)),
                                          icon: const Icon(Icons.archive_rounded),
                                          label: const Text('Archive Order'),
                                        ),
                                      const SizedBox(height: 8.0),
                                      TasksCard(order: order),
                                      const SizedBox(height: 8.0),
                                      DeadlineCard(order: order),
                                      const SizedBox(height: 8.0),
                                      AboutCard(order: order),
                                      const SizedBox(height: 8.0),
                                      ClientCard(client: order.client),
                                    ],
                                  ),
                                ),
                              ),
                              if (order.isArchived)
                                Center(
                                  child: Card(
                                    child: GestureDetector(
                                      onDoubleTap: () =>
                                          context.read<OrdersActorBloc>().add(ToggleOrderArchived(orderId: orderId)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Text('Archived', style: Theme.of(context).textTheme.headlineLarge),
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
