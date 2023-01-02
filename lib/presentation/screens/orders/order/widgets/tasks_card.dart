import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../application/orders/orders_actor/orders_actor_bloc.dart';
import '../../../../../domain/orders/order.dart';
import '../../../home/widgets/task_tile.dart';

class TasksCard extends StatelessWidget {
  final Order order;
  const TasksCard({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Tasks', style: Theme.of(context).textTheme.titleMedium),
        Card(
          margin: const EdgeInsets.symmetric(vertical: 4.0),
          child: Column(
            children: [
              ...order.orderTasks.asList().map((task) => TaskTile(order: order, task: task)).toList(),
              TextButton.icon(
                onPressed: !order.orderTasks.asList().fold(true, (p, t) => p && t.isTaskDone)
                    ? null
                    : () => context.read<OrdersActorBloc>().add(
                          ToggleOrderState(
                            orderId: order.orderId!,
                            orderState:
                                order.orderState == OrderState.delivered ? OrderState.active : OrderState.delivered,
                          ),
                        ),
                icon: Icon(order.orderState == OrderState.delivered ? Icons.undo_rounded : Icons.done_all_rounded),
                label: Text(order.orderState == OrderState.delivered ? 'Unmark as Delivered' : 'Mark as Delivered'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
