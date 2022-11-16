import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../application/orders/orders_actor/orders_actor_bloc.dart';
import '../../../../../../domain/orders/order.dart';
import '../../../../../../domain/orders/order_task.dart';

class TaskTile extends StatelessWidget {
  final Order order;
  final OrderTask task;
  const TaskTile({super.key, required this.order, required this.task});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      dense: task.isDone,
      value: task.isDone,
      enabled: !order.isDone,
      activeColor: Theme.of(context).colorScheme.primary,
      checkColor: Theme.of(context).colorScheme.onPrimary,
      checkboxShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
      onChanged: (_) => context.read<OrdersActorBloc>().add(
            OrdersActorEvent.toggleTaskState(order: order, task: task),
          ),
      title: Text(
        task.description,
        style: TextStyle(
          decoration: task.isDone ? TextDecoration.lineThrough : TextDecoration.none,
          decorationColor: Theme.of(context).colorScheme.background,
          decorationStyle: TextDecorationStyle.wavy,
          decorationThickness: 3.0,
        ),
      ),
    );
  }
}
