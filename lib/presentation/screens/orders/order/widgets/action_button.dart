import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart' show some;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thetulipmanager/presentation/common/routes/app_router.gr.dart';

import '../../../../../application/orders/orders_actor/orders_actor_bloc.dart';
import '../../../../../domain/core/value_object.dart';
import '../../../../common/theme/icons.dart';

class ActionButton extends StatefulWidget {
  final UniqueId orderId;
  final bool isDone;
  const ActionButton({super.key, required this.orderId, required this.isDone});

  @override
  State<ActionButton> createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton> {
  bool isDelete = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 750),
      child: widget.isDone
          ? const SizedBox()
          : isDelete
              ? IconButton(
                  onPressed: () => _delete(context),
                  icon: Icon(IconlyBroken.delete, color: Theme.of(context).errorColor),
                )
              : GestureDetector(
                  onLongPress: () => _swap(context).then((value) => HapticFeedback.vibrate()),
                  child: IconButton(
                    onPressed: () => context.router.push(NewOrderScreenRoute(orderIdOption: some(widget.orderId))),
                    icon: const Icon(IconlyBroken.edit),
                  ),
                ),
    );
  }

  Future<void> _swap(BuildContext context) async => setState(() => isDelete = !isDelete);

  Future<void> _delete(BuildContext context) async {
    bool? delete = await showDialog<bool?>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Deleting an order!'),
        content: const Text('You are deleting this order! are you sure you want to continue?'),
        actions: [
          TextButton(
            onPressed: () => context.router.pop(true),
            child: const Text('Delete'),
          ),
          TextButton(
            onPressed: () => context.router.pop(false),
            child: const Text('Cancel'),
          ),
        ],
      ),
    );

    if (delete ?? false) {
      context.read<OrdersActorBloc>().add(DeleteOrder(orderId: widget.orderId));
    }
  }
}
