import 'package:dartz/dartz.dart' show id;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../../application/orders/new_order_form/new_order_form_bloc.dart';

class OrderDetailsForm extends StatelessWidget {
  const OrderDetailsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewOrderFormBloc, NewOrderFormState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Order', style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 8.0),
              Text('Details about the order', style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: 12.0),
              TextFormField(
                readOnly: true,
                key: UniqueKey(),
                initialValue: DateFormat('dd MMMM yyyy').format(state.orderDate),
                onTap: () async {
                  FocusScope.of(context).unfocus();
                  await showDatePicker(
                    context: context,
                    initialDate: state.orderDate,
                    firstDate: DateTime.now().subtract(const Duration(days: 365)),
                    lastDate: DateTime.now().add(const Duration(days: 365)),
                  ).then(
                    (orderDate) {
                      if (orderDate != null) {
                        context.read<NewOrderFormBloc>().add(
                              NewOrderFormEvent.orderDateChanged(orderDate: orderDate),
                            );
                      }
                    },
                  );
                },
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.calendar_today_rounded),
                  label: Text('Order Date'),
                ),
              ),
              const SizedBox(height: 24.0),
              TextFormField(
                readOnly: true,
                key: UniqueKey(),
                initialValue: DateFormat('dd MMMM yyyy').format(state.orderDeliveryDate),
                onTap: () async {
                  FocusScope.of(context).unfocus();
                  await showDatePicker(
                    context: context,
                    initialDate: state.orderDeliveryDate,
                    firstDate: DateTime.now(),
                    lastDate: DateTime.now().add(const Duration(days: 365)),
                  ).then(
                    (orderDeliveryDate) {
                      if (orderDeliveryDate != null) {
                        context.read<NewOrderFormBloc>().add(
                              NewOrderFormEvent.orderDeliveryDateChanged(orderDeliveryDate: orderDeliveryDate),
                            );
                      }
                    },
                  );
                },
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.edit_calendar_rounded),
                  label: Text('Delivery Date'),
                ),
              ),
              const SizedBox(height: 24.0),
              TextFormField(
                maxLines: null,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                initialValue: state.orderPrice.failureOrValue.fold((l) => null, id),
                onChanged: (orderPrice) =>
                    context.read<NewOrderFormBloc>().add(NewOrderFormEvent.orderPriceChanged(orderPrice: orderPrice)),
                validator: (_) => state.orderPrice.failureOrValue.fold(
                  (f) => state.orderPrice.toString(),
                  (r) => null,
                ),
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.attach_money_rounded),
                  suffixText: 'Dzd',
                  label: Text('Price'),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
