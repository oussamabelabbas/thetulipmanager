import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../application/orders/orders_actor/orders_actor_bloc.dart';
import '../../../../../../domain/orders/order.dart';
import '../../../../../../domain/orders/order_task.dart';

class TaskTile extends StatelessWidget {
  final Order order;
  final OrderTask task;
  const TaskTile({super.key, required this.order, required this.task});

  void _showDetails(BuildContext context) => showDialog(
        context: context,
        builder: (context) => SimpleDialog(
          contentPadding: const EdgeInsets.all(24.0),
          title: Text(task.product.productName),
          children: [
            Text(task.taskDescription),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      dense: task.isTaskDone,
      value: task.isTaskDone,
      enabled: order.orderState == OrderState.active,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      activeColor: Theme.of(context).colorScheme.primary,
      checkColor: Theme.of(context).colorScheme.onPrimary,
      checkboxShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
      onChanged: (_) => context.read<OrdersActorBloc>().add(
            OrdersActorEvent.toggleTaskState(order: order, task: task),
          ),
      title: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: CachedNetworkImageProvider(task.product.productImagePath),
                backgroundColor: Theme.of(context).colorScheme.background,
                child: InkWell(
                  borderRadius: BorderRadius.circular(56.0),
                  onTap: () => _showDetails(context),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 350),
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: task.isTaskDone ? Theme.of(context).colorScheme.background.withOpacity(.7) : null,
                    ),
                    child: const Center(),
                  ),
                ),
              ),
              const SizedBox(width: 12.0),
              Expanded(
                child: Text(
                  '${task.product.productName}\n',
                  maxLines: 1,
                  style: TextStyle(
                    decoration: task.isTaskDone ? TextDecoration.lineThrough : TextDecoration.none,
                    decorationColor: Theme.of(context).colorScheme.background,
                    decorationStyle: TextDecorationStyle.wavy,
                    decorationThickness: 3.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
