import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../application/orders/orders_watcher.dart/orders_watcher_bloc.dart';
import '../../../../../../injectable.dart';
import 'order_tile.dart';

class ActiveOrdersPage extends StatelessWidget {
  const ActiveOrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<OrdersWatcherBloc>()..add(const OrdersWatcherEvent.watchActiveStarted()),
      child: BlocBuilder<OrdersWatcherBloc, OrdersWatcherState>(
        builder: (context, state) {
          return AnimatedSwitcher(
            duration: const Duration(milliseconds: 450),
            child: state.map(
              initial: (_) => const SizedBox(),
              inProgress: (_) => const Center(child: CircularProgressIndicator()),
              fetchFailed: (state) => Center(child: Text(state.failure.message)),
              fetchsucceded: (state) => state.orders.isEmpty()
                  ? const Center(child: Text('No Orders Yet 🤷‍♂️'))
                  : ListView.separated(
                      itemCount: state.orders.size,
                      separatorBuilder: (_, __) => const SizedBox(height: 12.0),
                      itemBuilder: (context, index) => OrderTile(order: state.orders[index]),
                    ),
            ),
          );
        },
      ),
    );
  }
}
