import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../../../application/orders/orders_actor/orders_actor_bloc.dart';
import '../../../../../../domain/orders/order.dart';
import '../../../common/routes/app_router.gr.dart';
import 'task_tile.dart';

class OrderTile extends StatelessWidget {
  final Order order;
  const OrderTile({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrdersActorBloc, OrdersActorState>(
      builder: (context, state) {
        return InkWell(
          onLongPress: () => context.router.push(OrderScreenRoute(orderId: order.id!)),
          child: ExpansionTile(
            title: Text(order.orderTitle),
            subtitle: Text('Due to ${DateFormat('dd MMMM yyyy').format(order.deliveryDate)}'),
            leading: AspectRatio(
              aspectRatio: 1,
              child: Center(
                child: Text(
                  '${order.tasks.asList().where((t) => t.isDone).length} / ${order.tasks.size}',
                  style: Theme.of(context).textTheme.titleLarge,
                  maxLines: 1,
                ),
              ),
            ),
            children: [
              ...order.tasks.asList().map((task) => TaskTile(order: order, task: task)).toList(),
              TextButton(
                onPressed: () => context.router.push(OrderScreenRoute(orderId: order.id!)),
                child: const Text('More details'),
              ),
            ],
          ),
        );
      },
    );
  }
}
