import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../../domain/orders/order.dart';

class DeadlineCard extends StatelessWidget {
  final Order order;
  const DeadlineCard({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Deadline', style: Theme.of(context).textTheme.titleMedium),
        Card(
          margin: const EdgeInsets.symmetric(vertical: 4.0),
          child: Column(
            children: [
              ListTile(
                leading: const Center(widthFactor: 1, child: Text('Ordered')),
                title: Align(
                  alignment: Alignment.centerRight,
                  child: Text(DateFormat('EEEE, dd MMMM yyyy.').format(order.orderDate)),
                ),
              ),
              ListTile(
                leading: const Center(widthFactor: 1, child: Text('Due to')),
                title: Align(
                  alignment: Alignment.centerRight,
                  child: Text(DateFormat('EEEE, dd MMMM yyyy.').format(order.deliveryDate)),
                ),
              ),
              ListTile(
                leading: const Center(widthFactor: 1, child: Text('Days left')),
                title: Align(
                  alignment: Alignment.centerRight,
                  child: Text(order.deliveryDate.difference(DateTime.now()).inDays.toString()),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
