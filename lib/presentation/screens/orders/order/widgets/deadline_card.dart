import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../../domain/orders/order.dart';

class DeadlineCard extends StatelessWidget {
  final Order order;
  const DeadlineCard({super.key, required this.order});

  String _timeLeft() {
    DateTime today = DateTime.now();
    DateTime deadline = order.orderDeliveryDate;

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
                  child: Text(
                    DateFormat('EEEE, dd MMMM yyyy.').format(order.orderDate),
                    style: Theme.of(context).textTheme.titleSmall,
                    maxLines: 1,
                  ),
                ),
              ),
              ListTile(
                leading: Center(
                  widthFactor: 1,
                  child: DateTime.now().isBefore(order.orderDeliveryDate)
                      ? const Text('Due to')
                      : const Text('Delivered on'),
                ),
                title: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    DateFormat('EEEE, dd MMMM yyyy.').format(order.orderDeliveryDate),
                    style: Theme.of(context).textTheme.titleSmall,
                    maxLines: 1,
                  ),
                ),
              ),
              ListTile(
                leading: const Center(widthFactor: 1, child: Text('Deadline')),
                title: Align(
                  alignment: Alignment.centerRight,
                  child: Text(_timeLeft()),
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
