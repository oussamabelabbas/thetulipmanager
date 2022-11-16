import 'package:flutter/material.dart';

import '../../../../../domain/orders/order.dart';

class AboutCard extends StatelessWidget {
  final Order order;
  const AboutCard({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('About order', style: Theme.of(context).textTheme.titleMedium),
        Card(
          margin: const EdgeInsets.symmetric(vertical: 4.0),
          child: Column(
            children: [
              ListTile(
                dense: true,
                title: Text(order.orderDescription),
              ),
              ListTile(
                leading: const Center(widthFactor: 1, child: Text('Price')),
                title: Align(
                  alignment: Alignment.centerRight,
                  child: Text('${order.price.getOrCrash()} Dzd'),
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
