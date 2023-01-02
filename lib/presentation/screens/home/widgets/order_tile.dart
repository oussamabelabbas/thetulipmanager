import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../application/orders/orders_actor/orders_actor_bloc.dart';
import '../../../../../../domain/orders/order.dart';
import '../../../common/routes/app_router.gr.dart';
import 'task_tile.dart';

class OrderTile extends StatefulWidget {
  final Order order;
  const OrderTile({super.key, required this.order});

  @override
  State<OrderTile> createState() => _OrderTileState();
}

class _OrderTileState extends State<OrderTile> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 800));
    _controller.animateTo(
      widget.order.orderTasks.asList().where((t) => t.isTaskDone).length / widget.order.orderTasks.size,
    );

    super.initState();
  }

  @override
  void didUpdateWidget(covariant OrderTile oldWidget) {
    if (oldWidget.order.orderTasks.asList().where((t) => t.isTaskDone).length !=
        widget.order.orderTasks.asList().where((t) => t.isTaskDone).length) {
      _controller.animateTo(
        widget.order.orderTasks.asList().where((t) => t.isTaskDone).length / widget.order.orderTasks.size,
      );
    }
    super.didUpdateWidget(oldWidget);
  }

  String _timeLeft() {
    DateTime today = DateTime.now();
    DateTime deadline = widget.order.orderDeliveryDate;

    if (today.year != deadline.year) {
      return (today.year > deadline.year) ? 'Due to Last Year!' : 'Due to Next Year!';
    }
    if (today.month != deadline.month) {
      return (today.month > deadline.month) ? 'Due to Last Month!' : 'Due to Next Month!';
    }

    if (today.day == deadline.day) return 'Due Today!';
    if (today.day == deadline.day + 1) return 'Due Yesterday!';
    if (today.day == deadline.day - 1) return 'Due Tomorrow!';
    if (today.day == deadline.day - 2) return 'Due After Tomorrow!';

    int difference = deadline.difference(today).inDays;
    if (difference < 0) return 'Deadline was ${difference.abs()} Days Ago!';
    return 'You have ${deadline.difference(today).inDays} Days left!';
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrdersActorBloc, OrdersActorState>(
      builder: (context, state) {
        return InkWell(
          onLongPress: () => context.router.push(OrderScreenRoute(orderId: widget.order.orderId!)),
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: ExpansionTile(
              title: Text(
                widget.order.client.clientName.getOrCrash(),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              subtitle: Text(
                _timeLeft(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              leading: AnimatedBuilder(
                animation: _controller,
                builder: (context, _) {
                  return CircleAvatar(
                    backgroundColor: Theme.of(context).colorScheme.background,
                    backgroundImage: CachedNetworkImageProvider(
                      widget.order.orderTasks
                          .asList()
                          .firstWhere(
                            (element) => !element.isTaskDone,
                            orElse: () => widget.order.orderTasks[0],
                          )
                          .product
                          .productImagePath,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 500),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _controller.value == _controller.upperBound
                                ? Theme.of(context).colorScheme.primary
                                : null,
                          ),
                          child: const Center(),
                        ),
                        CircularProgressIndicator(value: _controller.value),
                        AnimatedSwitcher(
                          duration: const Duration(milliseconds: 500),
                          child: _controller.value == _controller.upperBound
                              ? Icon(
                                  Icons.check_circle_outline_rounded,
                                  color: Theme.of(context).colorScheme.onPrimary,
                                )
                              : null,
                        ),
                      ],
                    ),
                  );
                },
              ),
              // Center(
              //   widthFactor: 1,
              //   child: Text(
              //     '${order.orderTasks.asList().where((t) => t.isTaskDone).length} / ${order.orderTasks.size}',
              //     style: Theme.of(context).textTheme.titleLarge,
              //     maxLines: 1,
              //   ),
              // ),
              children: [
                ...widget.order.orderTasks.asList().map((task) => TaskTile(order: widget.order, task: task)).toList(),
                TextButton(
                  onPressed: () => context.router.push(OrderScreenRoute(orderId: widget.order.orderId!)),
                  child: const Text('More details'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
