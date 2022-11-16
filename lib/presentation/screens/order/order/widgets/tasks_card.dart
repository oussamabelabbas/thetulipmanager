import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../application/orders/orders_actor/orders_actor_bloc.dart';
import '../../../../../domain/orders/order.dart';
import '../../../orders/widgets/task_tile.dart';

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
              ...order.tasks.asList().map((task) => TaskTile(order: order, task: task)).toList(),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 550),
                child: order.tasks.asList().fold(true, (p, t) => p && t.isDone)
                    ? TextButton.icon(
                        onPressed: () => context.read<OrdersActorBloc>().add(ToggleOrderDone(orderId: order.id!)),
                        icon: Icon(order.isDone ? Icons.undo_rounded : Icons.done_all_rounded),
                        label: Text(order.isDone ? 'Unmark as done' : 'Mark as done'),
                      )
                    : null,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
